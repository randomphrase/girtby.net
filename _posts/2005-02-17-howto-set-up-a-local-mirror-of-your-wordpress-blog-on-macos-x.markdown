---
layout: post
status: publish
published: true
title: 'HOWTO: Set up a Local Mirror of Your Wordpress Blog on MacOS X'
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 74
wordpress_url: http://girtby.net/2007/07/25/howto-set-up-a-local-mirror-of-your-wordpress-blog-on-macos-x
date: 2005-02-17 23:01:00.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1054
  author: darusha
  author_email: ''
  author_url: http://goldenhammer.darusha.ca
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: Very cool.  Just 15 minutes ago I was thinking "this (fooling around with
    my Wordpress installation) would be so much better if I could just test things
    locally first, but I have no ideas how to set up mySQL".  Now I have a project
    for this weekend.  Thanks!
- id: 1055
  author: darusha
  author_email: ''
  author_url: http://goldenhammer.darusha.ca
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: |-
    Excellent instuctions!  I did it a little differently, and installed a clean WP installation to use as a sandbox, but the mySQL info was invaluable.

    One thing I came across when I was setting up my database, was that I had to use two steps as follows:

    mysql&gt; grant all on example_db.* to example_db2@localhost;
    Query OK, 0 rows affected (0.01 sec)

    mysql&gt; SET PASSWORD for example_db@localhost = PASSWORD('example_pw');
    Query OK, 0 rows affected (0.10 sec)

    But we're up and running now!
- id: 1056
  author: hendrik
  author_email: edddau@itisch.net
  author_url: ''
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: |-
    i had the same problem -- wanting to have a working of my wordpress run site on my powerbook so if i play i do not break my live site ...

    maybe i can help you with your outstanding issue:
    the basic idea is to ssh to the server running the live site, run mysqldump on it, pipe the output through sed in order to replace the internet urls with local urls and pipe it into a mysql client running on your mac which in turn executes the sql statements and does the database update -- to make a long story short:

    ssh server mysqldump --add-drop-table -u user --password=password database | sed -e 's%yoursite.com%mac.local/~user/yoursite%g' | mysql -u user --password=password database

    you should set up public key authentication with ssh (run ssh-keygen on your mac, append $HOME/.ssh/id_dsa.pub from your mac to the file $HOME/.ssh/authorized_keys on your server) , then this command could run unattended.

    i can see two drawbacks/things to consider -- this setup works for me, but YMMV:
    * every time you run this command the whole db is copied, not only the changes (maybe i come up with a better idea at some point ...)
    * every occurance of the string yoursite.com is replaced with mac.local/~user/yoursite, not only the urls and home settings, so if somebody puts yoursite.com in post/comment/page it will also be replaced
- id: 1057
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: |-
    darusha: Thanks for the info, will update.

    hendrik: good ideas, but I dont want to assume ssh access. A similar technique might work with curl for those who, like me, can get access to their database dump from cPanel (ie a web interface for administering a hosting account).

    At the moment I'm toying with running an SQL UPDATE command to do the correct URL substitution in the database.
- id: 1058
  author: Mactips  &amp;amp;raquo; Blog Archive   &amp;amp;raquo; Lokale weblog kopie
  author_email: ''
  author_url: http://www.mactips.nl/2005/03/23/lokale-weblog-kopie/
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: "[...] n de Sleep mode \t\t\t \t\t \t \t\t \t\t\tLokale weblog kopie \t
    \t\t\t \t\t\t\t\tAls je een weblog beheert is deze handleiding om op je eigen
    computer een kop [...]"
- id: 1059
  author: ''
  author_email: ''
  author_url: http://arni.danielsson.org/log/2005/03/23/wp-spegladh-a-mac-os-x/
  date: '2005-02-17 23:01:00 -0600'
  date_gmt: '2005-02-17 23:01:00 -0600'
  content: "[...] &gt;\r \t WP spegla"
---
Here's what I did to set up a local mirror of my Wordpress blog on MacOS X. Please let me know if it's useful, and I will try to update this from time to time.

Firstly, why do this? Well I can think of a few reasons:

* keeping an up-to-date and _working_ backup
* using it for testing changes to the blog before you inflict them on the world. Like formatting, software updates, or anything really.
* It's fun (except for the MySQL setup, which we'll get to)

*Update:* I have moved this HOWTO to a [new page](/offerings/wordpress-osx-local-mirror). Please update your bookmarks.
