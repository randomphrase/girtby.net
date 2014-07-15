---
layout: post
status: publish
published: true
title: Pump Up The Pixel Density
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1859
wordpress_url: http://girtby.net/2008/08/23/pump-up-the-pixel-density
date: 2007-07-25 11:19:15.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1611
  author: dave
  author_email: david.scotson@gmail.com
  author_url: http://www.apple.com/macosx/leopard/features/
  date: '2007-07-25 11:19:15 -0500'
  date_gmt: '2007-07-25 11:19:15 -0500'
  content: |-
    I can't be sure but I thought that the Leopard demos on the Apple site seemed to increasing the resolution whenever they focussed on a small element of the screen rather than simply zooming. I'm not sure what you'd look for to tell for sure though.

    [leopard videos][1]


      [1]: http://www.apple.com/macosx/leopard/features/
- id: 1612
  author: Mike Mariano
  author_email: mikemariano@hotmail.com
  author_url: http://mikemariano.wordpress.com/
  date: '2007-07-25 11:19:15 -0500'
  date_gmt: '2007-07-25 11:19:15 -0500'
  content: I'm <a href="http://mikemariano.wordpress.com/2007/05/02/ie-7-first-look/">right
    there with you</a>, Alastair.  However, this will be an even more difficult problem
    to overcome than it first looks.  Not only does the software need to change, but
    also the mindset of designers everywhere.  Their past decades have been devoted
    to pixel precision, and I can't imagine them giving that up easily.
- id: 1613
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2007-07-25 11:19:15 -0500'
  date_gmt: '2007-07-25 11:19:15 -0500'
  content: The immediate problem which occurs with pixel independence is that now
    two monitors of differing physical size will now mean your desktop (which extends
    across those two monitors) is a funny shape (not a rectangle). In fact, I'm sure
    if you configured X for 2 monitors, but kept xinerama off, you could do this.
    The only real problems occur when you switch xinerama on, because of the funny
    shape of the desktop across the two screens. The other thing is, you don't know
    where along the larger desktop the shorter one is. In any case, I'm pretty sure
    Cairo already *does* solve this problem (you'd have to try without xinerama on
    two screens to check) partially, but applications can't ask it to display the
    left half of the letter "k" with 96ppi, and the right half at 120ppi. The window
    manager would have to do a fancy resize.
- id: 1614
  author: x
  author_email: x@example.com
  author_url: ''
  date: '2007-07-25 11:19:15 -0500'
  date_gmt: '2007-07-25 11:19:15 -0500'
  content: |-
    You can never have good bitmap image rendering with resolution independence.

    This whole subject has been handled grievously by the industry over the last decade. Clueless Korean geek manufacturers bumping 17" LCDs up to 1280x1024 just because it was the "next upgrade" in the chart of defined monitor specification -- without considering that it would make everything unreadably tiny.

    The rational approach is to strictly maintain the standard 96ppi ("dpi") density for all devices until 4x 96ppi is possible. Then all existing raster image content can be rendered at exactly 4 pixels per image pixel (no blurring), while text/vector art can take advantage of the 4x resolution. New high-res images would be specially tagged to also render at 1 image pixel = 1 screen pixel.
---
Pixel density independence (or [whatever it's called](/articles/2007/7/22/towards-a-resolution-resolution)) is not very prominent in the [list of features](http://www.apple.com/macosx/leopard/features/) touted for the upcoming Leopard operating system, but [apparently it is coming](http://waffle.wootest.net/2007/07/13/resind-nov29/). With Tiger we saw some [signs of progress](http://arstechnica.com/reviews/os/macosx-10-4.ars/20), and hopefully Apple will make it a reality with Leopard. I rate this a very important feature, one worthy of far more pimpage from Apple.

Check out the following picture showing a single window extended from my laptop's display to my [desktop monitor](/articles/2007/4/7/welcome-to-my-cave). Both displays are 1920x1200 pixels, but as you can see, widely different pixel densities.

[flickr]photo:868415492[/flickr]

By my calculations the laptop display is about 128 PPI, but the desktop display only 94 PPI. It could be even worse though. I could have put the laptop next to Dell's 2707WFP, a 27" display with the same pixel dimensions, which works out to 83 PPI. Quite a difference.

The effect is quite jarring. It's as if one of the monitors is placed right up close and the other a long way away. (The two displays are equidistant from the camera in the photo above).

Obviously there are not many situations when you need attach two monitors of completely different pixel density to a single system. But the point I want to make is that this is clearly one of the few areas in computer technology where **software needs to catch up to hardware**. As pixel densities increase, there is quite clearly a need for system software to scale accordingly. It seems pretty likely to me that Apple's laptops have been deliberately restricted to low pixel densities in comparison to the Windows equivalents, probably because the software cannot scale accordingly.

Windows users who have noticed the "DPI setting" on their display properties dialog may be scoffing at this point. "Bah!" you may be saying, "Windows lets me select [both kinds](http://www.imdb.com/title/tt0080455/quotes) of display resolution, 96 DPI and 120 DPI! Take that!"

In response, let me just say that I've run my Windows laptop at the 120 DPI setting and for the most part it works OK. But every now and then ... not so much. This is the "Hooray! You're installing IE7!" dialog box at 120 DPI.

<img src="/assets/2007/07/install-ie7.png" alt="Screenshot of the IE7 installation dialog box showing some corruption of text" title="install-ie7" width="633" height="143" class="size-full wp-image-3716 centered" />

And I'm not even being that picky here (for once). If I wanted to [put a ruler up to the screen](http://www.wpflearningexperience.com/?p=41) the results would be even less flattering to Windows. So clearly Microsoft has more work to do here.

As for Linux, well ... [Cairo](http://www.cairographics.org/) will help us. Won't it?

One of the questions John Siracusa poses in the Ars Technica review linked above is: "Which will come first, the affordable 300dpi display or the resolution-independent version of Mac OS X?"

I don't know the answer to that question, but I bet *both* come before the advent of Windows or Linux pixel density independence. What do you reckon?
