---
layout: post
status: publish
published: true
title: Sleeping Bloggy
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "It should be apparent to prettymuch anyone who reads this blog that I have
  lost the impetus to publish regularly. Although I still have many things to say
  to the internet, it seems to be getting harder and harder to find the time to put
  these things in a blog form that I'm happy with.\r\n\r\nBut I'm also not happy with
  the concept of just abandoning the blog, as so many others seem to do. I like the
  idea of putting it into hibernation, where it still can be linked to and indexed
  in search engines, but just not active.\r\n\r\nSo I've been working out how to do
  that. It's not as easy as I expected. And, yes, worth blogging about...\r\n\r\n"
wordpress_id: 3900
wordpress_url: http://girtby.net/?p=3900
date: 2009-08-03 23:53:30.000000000 -05:00
categories:
- Nerd Factor X
- Meta
tags:
- wordpress
- hosting
- amazon s3
- google app engine
comments:
- id: 14281
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2009-08-04 12:45:53 -0500'
  date_gmt: '2009-08-04 01:45:53 -0500'
  content: |
    <p>I put http://blog.quaddmg.com as my site, because I figured I'd probably want to use my domain name for something else, and I'd be too cheap to buy a whole other DNS entry. My choice appears to have been more useful than I imagined.</p>

    <p>I would also like to take this time to say to you systems engineers: This was the problem you were trying to solve!</p>
- id: 14288
  author: Andy
  author_email: andy@cloudberrylab.com
  author_url: http://cloudberrylab.com
  date: '2009-08-04 17:03:07 -0500'
  date_gmt: '2009-08-04 06:03:07 -0500'
  content: "<p>I always enjoy learning what other people think about Amazon Web Services
    and how they use them. Check out my very own tool CloudBerry Explorer that helps
    to \nmanage S3 on Windows . It is a freeware. http://cloudberrylab.com/</p>\n"
---
It should be apparent to prettymuch anyone who reads this blog that I have lost the impetus to publish regularly. Although I still have many things to say to the internet, it seems to be getting harder and harder to find the time to put these things in a blog form that I'm happy with.

But I'm also not happy with the concept of just abandoning the blog, as so many others seem to do. I like the idea of putting it into hibernation, where it still can be linked to and indexed in search engines, but just not active.

So I've been working out how to do that. It's not as easy as I expected. And, yes, worth blogging about...

<a id="more"></a><a id="more-3900"></a>
#### "Will I Dream, Dave?"

I thought I wanted something quite straightforward. Basically I was going to convert the site into static HTML by walking over it with `wget` or similar. Then find a host who could serve it up cheaply and reliably.

The cheap part was a requirement but also an expectation. I just thought that someone somewhere would give me some hosting space for static files that would charge about the same as my domain renewal each year. I'm not interested in paying much more than that because, well. I might as well just keep paying the hosting plan I'm on now, and keep the blog open.

I also wanted the new hosting to have cool URIs that don't change. So if, for example, you've bookmarked my insightful not-to-be-missed 2007 post on [fixing Ubuntu 7.04 display problems](/archives/2007/04/22/it-sure-is-feisty/), you'll be happy to hear that I intended to make sure it serves you the same long-obsolete advice for many decades to come.

And that's the real trick. As I found out, keeping the URIs the same, is not as easy as it sounds.

#### wordpress.com

This was the first thing I tried. wordpress.com offers free-to-inexpensive hosting and, hey, I'm already running wordpress, so it should be a snap to switch over. I'd just run the blog as-is with comments disabled and it would be just like in hibernation.

But then I read the fine print, and found that I wasn't going to be able to keep my current theme with its [famous](/archives/2008/12/28/great-designers-steal-and-so-do-i/#comment-2268) hand-tuned aside formatting. Not ideal, but not a show-stopper either. Also, importing the images and other assets would require involvement from wordpress support. Bit of a pain, but liveable.

So as an experiment I started exporting from my blog and then importing to wordpress.com. How well did this work? Well, about as well as you can expect with software that is not designed to [go clunk](/archives/2008/12/29/software-that-goes-clunk/). Of course, there is no error message to determine what the problem was, nor even an obvious way to erase all the partially-imported content.

#### Amazon S3

Having resolved by this stage that I was going to convert it to a static site and host it somewhere, I soon came upon the idea of using Amazon's S3 service. I already had an account, and it looked like a great solution. Cheap, reliable and easy. (Pick any two.)

There are (at least) two problems with using Amazon S3 for this task.

Firstly there is a technical limitation with hosting a "naked" domain (ie girtby.net with no hostname). Basically the way you create a [virtual host on S3](http://docs.amazonwebservices.com/AmazonS3/latest/VirtualHosting.html) is to create a "bucket" with the same name as your host, and then create a CNAME from your domain to that bucketname.s3.amazonaws.com. The problem is that you cannot create a CNAME on the root of a domain, it has to be from a hostname within that domain (eg www.girtby.net will work, girtby.net will not).

So that instantly breaks my URIs, but even if I could solve that problem there's another limitation. Basically Amazon S3 is not a full hosting environment and doesn't provide some common web server features. Most notably it won't serve up / using /index.html.

So I would end up needing my own web server which would perform this redirection. But that defeats the purpose of using Amazon S3; if I had access to a reliable web server, I'd just use that to serve up the site and be done with it.

#### Google App Engine

Yes, I was quite amazed to discover that you can use Google's App Engine as a host for an entirely static site. This is an interesting possibility because not only is it a real hosting service, and I can develop software (maybe even a blogging engine!) to bring my site back to life, should I be so inclined.

The plan is almost perfect, but has one flaw. Although Google seem to have once had the ability to host from a naked domain, that ability now seems to have been [revoked](http://code.google.com/appengine/kb/general.html#naked_domain). Which is a bit unfortunate, as it breaks my URIs.

So that's really a problem, and one that I must admit I did not forsee when I started using the naked domain as the preferred domain for the blog.
