---
layout: post
status: publish
published: true
title: Blog Migration Secrets
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3638
wordpress_url: http://girtby.net/?p=3638
date: 2008-12-08 23:26:07.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags:
- wordpress
- mephisto
comments:
- id: 1924
  author: Dave
  author_email: schwuk@schwuk.com
  author_url: http://schwuk.com
  date: '2008-12-09 01:47:56 -0600'
  date_gmt: '2008-12-08 14:47:56 -0600'
  content: |
    <p>Glad you found the script useful. I really must patch in some of the changes others have made.</p>

    <p>BTW it's Dave, not Daniel. :)</p>
- id: 1925
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-12-09 06:04:26 -0600'
  date_gmt: '2008-12-08 19:04:26 -0600'
  content: |
    <p>A thousand pardons, how stupid of me.</p>

    <p>Is there enough interest to start a launchpad project now? :)</p>
- id: 1926
  author: Dave
  author_email: schwuk@schwuk.com
  author_url: http://schwuk.com
  date: '2008-12-09 06:22:58 -0600'
  date_gmt: '2008-12-08 19:22:58 -0600'
  content: |
    <p>No problem. :)</p>

    <p>Yeah, why not. I'll get one set up.</p>
- id: 2272
  author: Jared
  author_email: jared@yourelevation.com
  author_url: http://yourelevation.com
  date: '2009-01-22 05:29:42 -0600'
  date_gmt: '2009-01-21 18:29:42 -0600'
  content: |
    <p>I'm trying run this script, and this is the traceback I was getting:</p>

    <pre><code>Traceback (most recent call last):
      File "m2wp-mysql.py", line 291, in &lt;module&gt;
        exporter.export()
      File "m2wp-mysql.py", line 263, in export
        output = self.wxr.finalise()
      File "m2wp-mysql.py", line 193, in finalise
        wxr = self.display()
      File "m2wp-mysql.py", line 72, in display
        return self.xml.toprettyxml('')
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 57, in toprettyxml
        self.writexml(writer, "", indent, newl, encoding)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 1744, in writexml
        node.writexml(writer, indent, addindent, newl)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 814, in writexml
        node.writexml(writer,indent+addindent,addindent,newl)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 814, in writexml
        node.writexml(writer,indent+addindent,addindent,newl)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 814, in writexml
        node.writexml(writer,indent+addindent,addindent,newl)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 814, in writexml
        node.writexml(writer,indent+addindent,addindent,newl)
      File "/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/xml/dom/minidom.py", line 1143, in writexml
        raise ValueError("']]&gt;' not allowed in a CDATA section")
    ValueError: ']]&gt;' not allowed in a CDATA section
    </code></pre>

    <p>I had some hivelogic enkoder blocks in my posts that were causing this.  Took them out and everything was ok.</p>
---
So given that the world ([still](/archives/2006/08/14/towards-a-common-blog-export-format/)) lacks a decent common export format for blog software, you might wonder how I managed to move the collection of assorted nonsense that is girtby.net from Mephisto to Wordpress.

Actually, there's a real chance you might not wonder this. But let's press on anyway for the sake of Google and future generations.

All the hard work was actually done by <del datetime="2008-12-08T19:02:50+00:00">Daniel</del> Dave Murphy over at [schwuk.com](http://schwuk.com/articles/2008/03/25/thy-will-be-done-m2wppy-is-released) who published the script and a bzr branch. Jason Morrison added MySQL support and [published](http://jayunit.net/2008/04/16/mephisto-to-wordpress/) a diff.

I've made some changes of my own and published the results. You can get either:

* Just the [latest m2wp.py script](/code/m2wp/m2wp.py) incorporating Jason's and my patches, or
* A bzr [branch](/code/m2wp), continuing the spirit of being all modern and distributed.

So what sort of changes did I have to make?

Well, Dave's script extracted the rendered HTML into the Wordpress database. This is OK but it means you can't go back and edit old posts in their source form (in my case, Markdown format). So to use my version of the script you need to set up your content filters in Wordpress to match those in Mephisto.

There are a couple of other minor changes, specifically handling NULL as well as empty content (for whatever reason I had some of these fields in my Mephisto database), and a minor formatting problem which prevented the "Read More" links from working properly.

Anyway that's my version of the script, and now that that's out of the way I can get back to procrastinating about doing anything with CSS.
