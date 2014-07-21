module Jekyll

  class MonthPage < Page
    def initialize(site, year, month, posts)
      @site = site
      @base = site.source
      @dir = "#{site.config['archive_dir'] || 'archives'}/%04d/%02d" % [year, month]
      @name = 'index.html'
      @year = year
      @month = month
      @posts = posts

      self.process(@attr = name)
      self.read_yaml(File.join(site.source, '_layouts'), 'monthly_archive.html')

      self.data['year'] = year
      self.data['month'] = month
      self.data['posts'] = posts
    end
  end

  class YearPage < Page
    def initialize(site, year, postcounts)
      @site = site
      @base = site.source
      @dir = "#{site.config['archive_dir'] || 'archives'}/#{year}"
      @name = 'index.html'
      @year = year

      self.process(@attr = name)
      self.read_yaml(File.join(site.source, '_layouts'), 'yearly_archive.html')

      self.data['year'] = year
      self.data['postcounts'] = postcounts
    end
  end

  class ArchivePageGenerator < Generator
    safe true

    def generate(site)
      posts_by_month(site).each do | ym, posts |
        site.pages << MonthPage.new(site, ym[0], ym[1], posts)
      end

      postcount_by_month(site).each do | year, postcounts |
        site.pages << YearPage.new(site, year, postcounts)
      end
    end

    def posts_by_month(site)
      site.posts.each.group_by { |post| [post.date.year, post.date.month] }
    end

    def postcount_by_month(site)
      postcount = {}
      site.posts.each do |post|
        (postcount[post.date.year] ||= Array.new(12, 0))[post.date.month - 1] += 1
      end
      postcount
    end
  end
end
