module Jekyll

  def category_url(cat, site = nil)
    site ||= @context.registers[:site]
    baseurl = site.config['category_dir'] || 'categories'
    "#{baseurl}/#{cat.gsub(/\W/, '-')}"
  end

  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@attr = name)
      self.read_yaml(File.join(base, '_layouts'), 'category_archive.html')
      self.data['category'] = category

      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
      self.data['title'] = "#{category_title_prefix}#{category}"
    end
  end

  class CategoryPageGenerator < Generator
    safe true
    include Jekyll

    def generate(site)
      if site.layouts.key? 'default'
        site.categories.keys.each do |category|
          site.pages << CategoryPage.new(site, site.source, category_url(category, site), category)
        end
      end
    end
  end

  module Filters
    include Jekyll

    def link_to_category(array)
      array.map do |cat|
        "<a href=\"#{category_url(cat)}\">#{cat}</a>"
      end
    end
  end

  Liquid::Template.register_filter(Filters)

end
