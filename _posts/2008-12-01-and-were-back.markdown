---
layout: post
status: publish
published: true
title: And We're Back
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3614
wordpress_url: http://blog.girtby.info/?p=3614
date: 2008-12-01 22:32:07.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags:
- wordpress
- rails
- hosting
- mephisto
comments:
- id: 1900
  author: Richard Atkins
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2008-12-03 18:03:28 -0600'
  date_gmt: '2008-12-03 07:03:28 -0600'
  content: |
    <p>Welcome back. It seems that while you weren't looking, we went from having Typo as the dead end blogging solution for Rails enthusiasts with Mephisto being the up and coming replacement to these two completely swapping roles.</p>

    <p>I notice the current look is... spartan. I assume this is an extremely temporary issue and nothing I need to be concerned about. But worry I do - what if it's a deliberate and permanent choice to look like the Gnu website? The horror!</p>

    <p>Also: will we ever be allowed comment previews in this new regime?</p>
- id: 1901
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-03 21:56:57 -0600'
  date_gmt: '2008-12-03 10:56:57 -0600'
  content: |
    <p>Thanks Richard. Actually it's pretty amazing that for such a hip'n'happening web framework like rails there are only two open source blogging engines and <em>both</em> of them are basically abandonware.</p>

    <p>The current look is the <a href="http://wordpress.org/extend/themes/sandbox" rel="nofollow">sandbox</a> theme, as recommended by <a href="http://madbean.com/2008/updates/" rel="nofollow">Matt</a> but, unlike him, I haven't yet worked up my CSS mojo. In the meantime, consider it FOR SPARTAAAAA!</p>

    <p>Comment previews (in fact the WMD editor) will be making a return.</p>
- id: 1917
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2008-12-06 14:10:24 -0600'
  date_gmt: '2008-12-06 03:10:24 -0600'
  content: |
    <p>Glad to see you're back.  Sorry to hear about the troubles.</p>

    <p>BTW, I'm still getting a red bang in Bloglines, although I did get notification of this post (and nine earlier ones).</p>
- id: 1935
  author: Richard Atkins
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2008-12-09 19:47:06 -0600'
  date_gmt: '2008-12-09 08:47:06 -0600'
  content: |
    <p>Coincidentally, the old atom comments feed has ceased to be, although Google Reader sees content in the old atom posts feed just fine. Is it just about damn time we all stopped using URLs that mention atom?</p>
- id: 1936
  author: Matt Quail
  author_email: spud@madbean.com
  author_url: http://madbean.com/
  date: '2008-12-09 20:54:13 -0600'
  date_gmt: '2008-12-09 09:54:13 -0600'
  content: |
    <p>Yeah the Sandbox theme is reasonably compelling. Customizing the CSS for Sandbox is not too daunting, I wrote up my process here http://madbean.com/2008/sandbox-child-theme/</p>

    <p>I was going to say "Happy CSSing", but CSSing never really makes you happy.</p>
- id: 1937
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-09 22:10:45 -0600'
  date_gmt: '2008-12-09 11:10:45 -0600'
  content: |
    <p>Richard: the comments feed should be back now. Or more accurately, the 301 redirection from the various old comments feed URLs should be in place now. Let me know if not! </p>

    <p>Brendan: is it still happening?</p>
- id: 1938
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-09 22:12:05 -0600'
  date_gmt: '2008-12-09 11:12:05 -0600'
  content: |
    <p>Thanks Matt.</p>

    <p>If nothing else wrestling with CSS will at least make a change from mod_rewrite, which doesn't make me happy either.</p>
- id: 1946
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-10 12:59:19 -0600'
  date_gmt: '2008-12-10 01:59:19 -0600'
  content: |
    <p>OK, it looks like Wordpress is outputting malformed XML in the Atom comments feed. WTF, Atom <em>still</em> isn't fixed in Wordpress? FFS.</p>
- id: 1948
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://www.oddthinking.com/
  date: '2008-12-10 15:30:30 -0600'
  date_gmt: '2008-12-10 04:30:30 -0600'
  content: |
    <p>My Atom comment feed is validating fine. (WP 2.6.5)</p>

    <p>(I am just adding a data-point, not defending WordPress nor dismissing your complaint with "It works for me.")</p>

    <p>Look at the user record for your login account (maybe called "admin", maybe "Alastair"). There is a field where you can enter a Website. My guess is that you have the text "http://" in that field. That would account for one of the two validation errors. </p>

    <p>The other one is beyond me.</p>
- id: 1949
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://www.oddthinking.com/
  date: '2008-12-10 15:39:04 -0600'
  date_gmt: '2008-12-10 04:39:04 -0600'
  content: |
    <p>Hmmm... you may have stumbled over an WP 7 RC1 bug!</p>

    <p>I am not an expert in Atom, but it looks like it is using <code>rel</code> attribute where it means <code>ref</code>. I will wander over and see if I can escalate.</p>
- id: 1950
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://www.oddthinking.com/
  date: '2008-12-10 15:51:05 -0600'
  date_gmt: '2008-12-10 04:51:05 -0600'
  content: |
    <p>I requested that the WordPress team re-open a <a href="http://trac.wordpress.org/ticket/8292" rel="nofollow">recent enhancement ticket</a> to fix the damage that was done. </p>

    <p>This was introduced 3 weeks ago; you are running a beta version of WordPress. (Now I <em>am</em> defending WordPress!)</p>
- id: 1951
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-10 21:31:15 -0600'
  date_gmt: '2008-12-10 10:31:15 -0600'
  content: |
    <p>Thanks Julian, but you're seeing the comments feed <em>after</em> I patched wordpress. For the record, here's the patch:</p>

    <pre><code>=== modified file 'wp-includes/feed-atom-comments.php'
    --- wp-includes/feed-atom-comments.php  2008-12-04 17:47:50 +0000
    +++ wp-includes/feed-atom-comments.php  2008-12-10 02:21:46 +0000
    @@ -12,6 +12,7 @@
        xmlns="http://www.w3.org/2005/Atom"
        xml:lang="&lt;?php echo get_option('rss_language'); ?&gt;"
        &lt;?php do_action('atom_ns'); ?&gt;
    +   xmlns:thr="http://purl.org/syndication/thread/1.0"
     &gt;
        &lt;title type="text"&gt;&lt;?php
            if ( is_singular() )
    </code></pre>

    <p>Yes, a missing namespace declaration; pretty basic stuff.</p>

    <p>I would raise a ticket in Wordpress trac but I've forgotten my original password, and for some reason it seems to be using different credentials to the rest of the site, so a password reset doesn't seem to be working, and ... Argh!</p>

    <p>BTW the "http://" issue should be fixed now, not sure if it's an artifact of the Mephisto migration or not (actually I suspect not).</p>
- id: 1952
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-10 21:53:53 -0600'
  date_gmt: '2008-12-10 10:53:53 -0600'
  content: |
    <p>Julian: thanks for the <code>rel</code> -> <code>ref</code> correction. After two separate patches to wordpress, and manually updating all my comments with the correct URL, my comments feed now validates!</p>

    <p>(And <em>still</em> I haven't started on the CSS...)</p>
---
So girtby.net has been a bit quiet lately. You might have assumed that $WORK or $LIFE had both gotten crazy busy. In fact they had, but that's not the only reason why girtby.net was in stasis. There's a story behind that, but the short version is that I'm back. Not quite the same as before, but back.

Now, the long version.

The story starts about 6 weeks ago when my hosting provider kindly decided to upgrade the server I was hosted on. I had, and still have, a shared hosting account which means that they will do things like this from time to time. Most of the time it's a good thing.

This time it was a bad thing.

Previously I was running my blogging software (Mephisto) on Rails 2.0.2 on Ruby 1.8.6 on CentOS 4.7. In the server migration, CentOS went to 5.2 and Ruby went to 1.8.7. Rails 2.0.2 doesn't like Ruby 1.8.7.

During this time almost no one noticed that anything was awry at girtby.net, thanks to the fact that most of the site was being served directly out of the cache that Mephisto keeps/kept for performance reasons. Without any blogging software behind it, the site became a zombie. Minus the staggering gait and hunger for brains of course.

For the next couple of weeks in my copious spare time (which wasn't much after $WORK and $LIFE) I was trying to get Mephisto to work with Rails 2.2 which *could* work with Ruby 1.8.7. It soon became apparent that I was about the only person on the internets that was actually trying to do such a thing. And, well, screw that.

So I caved. And after dallying with the Rails floozy for all this time, I went grovelling back to old faithful Wordpress. Fortunately she took me back...

In my ~2.5 year absence Wordpress has addressed few of the [gripes](/archives/2006/08/12/on-switching-to-typo) that I had about it previously, but it still looks like the best blogging platform available (which includes the surrounding development ecosystem).

There is some more blogging software navel-gazing to come, but that's enough for now.

Now if you'll excuse me I have to get back to making this place look respectable...
