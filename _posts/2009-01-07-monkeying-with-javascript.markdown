---
layout: post
status: publish
published: true
title: Monkeying With JavaScript
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "It's funny really, one of my main reasons for switching to a Rails-based
  blogging platform way back when was to become more familiar with web technologies.
  As it turned out I never really did much of that, but since switching back to Wordpress
  I've been tinkering away madly, and astute observers may have noticed the results
  on this site.\r\n\r\nOf course I have no real idea what I am doing. Despite having
  zero knowledge of PHP or JavaScript, for some reason I feel no reluctance towards
  sitting down at a keyboard and bashing away until I produce either Macbeth or a
  better website. The entire site is stored in a [Bazaar](http://bazaar-vcs.org/)
  repository, and that makes reverting bad changes especially easy, and I'll attempt
  to blog further about that sometime.\r\n\r\nFor now let me just point out a seemingly
  small change to the site. The dates of the posts and comments are now displayed
  in a more human-friendly manner such as \"3 days ago\" or \"20 minutes later\".
  This was a feature of Typo that I liked enough to port to my Mephisto theme, and
  which (I thought) would be fairly simple to get into Wordpress.\r\n\r\nIt wasn't.
  Read on for the war story.\r\n\r\n"
wordpress_id: 3674
wordpress_url: http://girtby.net/?p=3674
date: 2009-01-07 22:31:12.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags:
- wordpress
- javascript
- prototype
- jquery
comments:
- id: 2168
  author: Rob Britton
  author_email: rob.s.brit@gmail.com
  author_url: http://lovehateubuntu.blogspot.com
  date: '2009-01-08 00:43:08 -0600'
  date_gmt: '2009-01-07 13:43:08 -0600'
  content: |
    <p>Three cheers for jQuery ;)</p>

    <p>You can go:</p>

    <p><code>$(function() {
      ...
    });</code></p>

    <p>instead of:</p>

    <p><code>jQuery(document).ready(function() { ... });</code></p>

    <p>Just looks nicer is all.</p>
- id: 2170
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://blog.marxy.org
  date: '2009-01-08 06:07:12 -0600'
  date_gmt: '2009-01-07 19:07:12 -0600'
  content: |
    <p>Django has some lovely filters for doing this in the <a href="http://docs.djangoproject.com/en/dev/ref/contrib/humanize/" rel="nofollow">humanize</a> template filters.</p>
- id: 2172
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://blog.marxy.org
  date: '2009-01-08 06:27:29 -0600'
  date_gmt: '2009-01-07 19:27:29 -0600'
  content: |
    <p>Woops, I completely missed the point I was trying to make. Why do you want to humanise dates in Javascript? Is it for localisation or something? </p>
- id: 2175
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-08 11:04:42 -0600'
  date_gmt: '2009-01-08 00:04:42 -0600'
  content: |
    <p>@Rob: I deliberately wanted to avoid all the craziness with the <code>$</code> symbol. Like I said though I don't know much about JavaScript...</p>

    <p>@marxy: Sorry I should have explained. Yes the reason for using JavaScript is to avoid re-rendering the page on the server side every time it is loaded. This also means that (in theory anyway) it can be cached. Mephisto used to do this nicely, but unfortunately Wordpress does not do this by default (but there is a plugin).</p>

    <p>And not that I'll be doing this, but JavaScript enables the possibility of dynamically update the page if you leave it open for hours/days at a time (again without re-rendering on the server).</p>
- id: 2182
  author: Chris Heald
  author_email: cheald@gmail.com
  author_url: ''
  date: '2009-01-08 19:00:54 -0600'
  date_gmt: '2009-01-08 08:00:54 -0600'
  content: |
    <p>For what it's worth, jQuery is specifically written to play nicely with other libraries; there is doc on the jQuery site about how to make it do so. It's very clean, since jQuery is entirely written in closures, and doesn't clutter up your global namespace.</p>
- id: 2239
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-15 09:50:27 -0600'
  date_gmt: '2009-01-14 22:50:27 -0600'
  content: |
    <p>On a related note, I've just installed the excellent <a href="http://blog.clearskys.net/2008/05/28/google-ajax-libraries-api-plugin/" rel="nofollow">Google Ajax Libraries API plugin</a> for wordpress. The idea is that standard libraries like jQuery are served directly out of Google's servers. Which is great because it reduces the load on your site, but also is a lot more likely to be cached and hence loads more quickly into the browser.</p>

    <p>Leveraged synergy AND open kimono!</p>
- id: 2269
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2009-01-21 13:12:58 -0600'
  date_gmt: '2009-01-21 02:12:58 -0600'
  content: |
    <p>Maybe it's just me, but I don't like the relative dating schemes that you call "more human-friendly."  I find it easier to see the absolute date and time and do any desired conversions to relative ("Ah, he posted this yesterday") than I do going the other way.  And then there's the annoyance of searching for and not finding a string that I expect to be there; e.g., 20 January 2009.</p>

    <p>Which is not to say anything against this post, your interest in solving this problem, or your own <strike>poor</strike> taste.</p>
- id: 2327
  author: Adam
  author_email: eproxus@gmail.com
  author_url: http://www.namsisi.com
  date: '2009-01-29 18:49:44 -0600'
  date_gmt: '2009-01-29 07:49:44 -0600'
  content: |
    <p>First, I think</p>

    <p><code>jQuery(document).ready(function() { ... });</code></p>

    <p>is much more readable than</p>

    <p><code>$(function() { ... });</code></p>

    <p>I completely understand the first row without being very knowledgeable in JavaScript. <em>"When the document is ready, run the following function."</em> But the second row, I have no idea. Even knowing that <code>$</code> accesses an element in the page doesn't help much.</p>

    <p>Second, I think the comment dates are confusing. It is much easier to parse them relative to now. That is, I know that the post is for example 3 weeks old and Brendan's comment is 1 week old. It is not hard to figure out when he posted it relative to the original post. Now I need to take the time of the original post + the time of the comment to figure out when it was posted. It's just not the time conversions you're used to make.</p>
- id: 2328
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2009-01-29 23:19:45 -0600'
  date_gmt: '2009-01-29 12:19:45 -0600'
  content: |
    <blockquote>
      <p>I completely understand the first row without being very knowledgeable in JavaScript.</p>
    </blockquote>

    <p>Because obviously the most important criterion for how to write a piece of code is whether it can be read by people who don’t know the library or the language. Or programming.</p>
- id: 2332
  author: Andrew
  author_email: ozandrewl@gmail.com
  author_url: ''
  date: '2009-01-30 12:36:14 -0600'
  date_gmt: '2009-01-30 01:36:14 -0600'
  content: "<blockquote>\n  <blockquote>\n    <p>I completely understand the first
    row without being very knowledgeable in JavaScript.</p>\n  </blockquote>\n  \n
    \ <p>Because obviously the most important criterion for how to write a piece of
    code is whether it can be read by people who don’t know the library or the language.
    Or programming.</p>\n</blockquote>\n\n<p>That depends on whether you are maintaining
    a site as a full time professional job, or (for example) running your own small
    blog and tweaking it every few months. Readability can in any case be <a href=\"http://en.wikipedia.org/wiki/Literate&#95;programming\"
    rel=\"nofollow\">considered an extremely important aspect</a> of a language.</p>\n\n<p>...
    and only a programmer would expect that \"jQuery(document).ready(function() {
    ... });\" was readable by a non-programmer.</p>\n"
---
It's funny really, one of my main reasons for switching to a Rails-based blogging platform way back when was to become more familiar with web technologies. As it turned out I never really did much of that, but since switching back to Wordpress I've been tinkering away madly, and astute observers may have noticed the results on this site.

Of course I have no real idea what I am doing. Despite having zero knowledge of PHP or JavaScript, for some reason I feel no reluctance towards sitting down at a keyboard and bashing away until I produce either Macbeth or a better website. The entire site is stored in a [Bazaar](http://bazaar-vcs.org/) repository, and that makes reverting bad changes especially easy, and I'll attempt to blog further about that sometime.

For now let me just point out a seemingly small change to the site. The dates of the posts and comments are now displayed in a more human-friendly manner such as "3 days ago" or "20 minutes later". This was a feature of Typo that I liked enough to port to my Mephisto theme, and which (I thought) would be fairly simple to get into Wordpress.

It wasn't. Read on for the war story.

<a id="more"></a><a id="more-3674"></a>

#### The Prototype Version

[John Wang](http://www.dev411.com/blog/2007/02/05/displaying-dates-and-times-using-javascript) describes how it is implemented in Typo. Basically it's a bit of JavaScript that is run when the page loads. It looks for dates, which are delimited by the `abbr` tag and have a pre-defined CSS class. The script iterates over each of these and converts them into a friendly date. The `abbr` tag is handy because it allows you to specify the full date and time in the `title` attribute, which you can see when you hover over the date with your mouse.

One of the challenges with using JavaScript in this way is to ensure that you register event handlers in a manner that works with other JavaScript on the page, as well as across browsers. The [Prototype](http://www.prototypejs.org/) library helps out immensely here, and for actually locating the `abbr` tags.

One of the nice features of Wordpress is that it manages dependencies on third-party JavaScript libraries, on behalf of the plugins. So as long as your plugin/theme uses the [`wp_enqueue_script`](http://codex.wordpress.org/Function_Reference/wp_enqueue_script) function, Wordpress will find a copy of the requested library and insert your script correctly into the HTML output. You call it simply from the theme's `functions.php` file like this:

    add_action( 'wp_print_scripts', 'depo_theme_add_javascript' );
    
    function depo_theme_add_javascript() {
        wp_enqueue_script('friendly_dates', get_bloginfo('stylesheet_directory') .
            '/javascript/friendly_dates.js', array('jquery'));
    }

So at this point, I had the friendly date script originally from Typo, registered correctly with Wordpress and, it worked. Sort of. Specifically: when I had some of my Wordpress plugins disabled.

#### Prototype vs jQuery

Besides Prototype there are also other JavaScript libraries that people use, and they don't always play nicely together. For example, [jQuery](http://jquery.com/) is quite popular, and seems to be used by at least two of the wordpress plugins I have installed. Which meant that I could use my date script or the plugins, but not both.

Now jQuery (at least) is supposed to play nice with other libraries if you use the [`noConflict`](http://docs.jquery.com/Using_jQuery_with_Other_Libraries) method. Unfortunately I couldn't get it to work. I even resorted to asking my first [question on Stack Overflow](http://stackoverflow.com/questions/415550/prototype-and-jquery-peaceful-co-existence). This seemed to stump the experts too; the best answer was basically "switch to jQuery".

So that's what I did.

#### The jQuery Version

jQuery is a quite unusual library. It reminds me a little bit of XSLT, in that you declare a pattern of matching items in the DOM tree, and for each of those, some actions which affect the output. You might even say the similarity is quite ironic, given that XSLT is the browser's [other scripting language](/archives/2006/06/14/the-browsers-other-scripting-language/).

By chance I came across [yet another pretty date JavaScript](http://www.zachleat.com/web/2008/03/23/yet-another-pretty-date-javascript/) from Zach Leatherman (but with ancestry tracing back to jQuery author John Resig). This allowed me to perform the article date transformations almost trivially:

    jQuery(document).ready(function() {
        jQuery("abbr.published").humane_dates();
    });

Nice. But what about the comment dates? These require two dates, both the comment date but also the date of the article to which it belongs. The former is easy enough, but there was no easy DOM path from the comment to its article meta data. If it was XSLT I could have come up with an XPath expression, but jQuery is unfortunately not that powerful (yet?).

So I settled for a bit of a hack. For each comment, I inserted the article date as a hidden field in the HTML as a sibling to the date `abbr`, where it can be easily retrieved by a jQuery method.

It's not an ideal solution of course, and part of me wants to (at least) put the article date in a local cache variable where it doesn't need to looked up all the time. But another part of me just wants to get it working so that I can start the process of blogging about how I got it working...

#### Publish and Be Damned

Anyway [here's the code](/extras/friendly_dates.js). I'll find a better place for it if I make any other mods, or if there is any interest in it.

#### Lessons Learned

I'm not even sure there are many here. Perhaps:

* Don't mix JavaScript libraries.
* Learn jQuery. It's powerful.
* C++ is easy compared to diagnosing JavaScript bugs (ok maybe not)
