---
layout: page
status: publish
published: true
title: 'HOWTO: Set up a Local Mirror of your Wordpress Blog on MacOS X'
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3630
wordpress_url: http://girtby.net/?page_id=3630
date: 2006-12-26 21:08:04.000000000 -06:00
categories:
- Uncategorized
tags: []
comments: []
---
This page was once the home for some instructions on how to set up a WordPress mirror on Mac OS X. For a while there, I stopped running WordPress and so the content was getting more and more obsolete. Hence I contributed the material to the [WordPress Codex](http://codex.wordpress.org/MacOS_X_Local_Mirror) in the hope that someone will update it and that more people will find it useful. Now I'm running Wordpress again, but I'll probably just update the Codex instead of this page.

#### Updates

- ***2005-02-21***: Fixed instructions for creating database, adding user.
- ***2005-02-26***: Fixed VirtualHost declaration to allow use of .htaccess file (and hence make permalinks work). Updated with both wordpress options that need to be updated.
- ***2005-02-26***: Added Mirror Site script and description.
- ***2005-02-28***: Added reference to related material from Andy Budd and Bob Davis. Some formatting cleanups.
- ***2005-03-24***: Minor tweaks for publishing as a page.
- ***2005-03-26***: Corrected capitalisation of VirtualHost (by disabling Wordpress' auto-close HTML tags option)
- ***2005-05-11***: Added instruction to enable NameVirtualHost, tested on Tiger
- ***2005-11-21***: Fixed <virtualHost> declaration, added instructions for MySQL 4.1.
- ***2006-01-17***: Updated for MacOS X 10.4.4. (No changes needed for Wordpress 2.0)
- ***2006-05-04***: Replaced `mysql -u example_db` with the correct `mysql -u example_u`. Thanks Benjamin D for reporting.
- ***2006-05-09***: Added link to [Apple KB article on adding hosts to local hosts file](http://docs.info.apple.com/article.html?artnum=88158)
- ***2008-02-22***: Moved to the [WordPress Codex](http://codex.wordpress.org/MacOS_X_Local_Mirror)
