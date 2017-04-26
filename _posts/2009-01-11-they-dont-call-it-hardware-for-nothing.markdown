---
layout: post
status: publish
published: true
title: They Don't Call it Hardware for Nothing
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "Sometimes you blog because you've [accomplished something](/archives/2008/12/14/becoming-a-bronzed-aussie/).
  Sometimes you blog because you just want to salvage something from [failure](/archives/2006/05/27/negative-result-bias/).
  Today I'm going to do both! Yes, hardware is involved.\r\n\r\n"
wordpress_id: 3680
wordpress_url: http://girtby.net/?p=3680
date: 2009-01-11 17:53:18.000000000 -06:00
categories:
- Nerd Factor X
tags:
- hardware
- electronics
- kit
- nintendo
- repair
comments:
- id: 2211
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://blog.marxy.org
  date: '2009-01-11 18:24:02 -0600'
  date_gmt: '2009-01-11 07:24:02 -0600'
  content: |
    <p>There is an errata entry that might affect it. They <a href="http://siliconchip.com.au/cms/A&#95;104479/article.html" rel="nofollow">say</a>:</p>

    <blockquote>
      <p>"...Also, the 68kΩ resistor on the parts overlay should be a 10kΩ value, as shown on the circuit diagram and parts list."</p>
    </blockquote>

    <p>It's great that you're getting in to electronics now.</p>
- id: 2212
  author: Martin
  author_email: mpot@martybugs.net
  author_url: http://martybugs.net/blog
  date: '2009-01-11 18:51:46 -0600'
  date_gmt: '2009-01-11 07:51:46 -0600'
  content: |
    <p>Without a circuit diagram for clifford, it's a bit hard to troubleshoot it remotely ;-)</p>

    <p>However, according to <a href="http://www.siliconchip.com.au/cms/A&#95;102711/article.html" rel="nofollow">this page</a>, some things to check include:</p>

    <ul>
    <li><p>check that you haven't transposed Q1 and Q2</p></li>
    <li><p>check the orientation of D1 and D2</p></li>
    <li><p>check your resistors</p></li>
    </ul>

    <p>(Note that the silicon chip page is wrong when it says
    <i>"the anode (A) is the end of the diode with the stripe. Both anodes for D1 and D2 should be toward the 3.3kΩ resistor."</i>
    The anode is the end of the diode <b>without</b> the stripe!  Assuming the screen printing on the top of the PCB is correct, then both your diodes are oriented correctly.)</p>
- id: 2214
  author: alphajuliet
  author_email: andrew@alphajuliet.com
  author_url: http://alphajuliet.com/
  date: '2009-01-11 22:02:38 -0600'
  date_gmt: '2009-01-11 11:02:38 -0600'
  content: |
    <p>One of your diodes looks the wrong way around.</p>

    <p>A.</p>
- id: 2221
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-12 07:16:04 -0600'
  date_gmt: '2009-01-11 20:16:04 -0600'
  content: |
    <p>Err, which one? Both have the non-striped end aligned with the A (for Anode) markers.</p>
- id: 2223
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2009-01-12 15:12:49 -0600'
  date_gmt: '2009-01-12 04:12:49 -0600'
  content: |
    <p>If the "A" denotes the "anode", then what do the circles mean? Could it be possible that the "A" simply means that the <em>circle</em> is the anode (as oppposed to "K" and a circle)?</p>
- id: 2224
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-12 15:30:52 -0600'
  date_gmt: '2009-01-12 04:30:52 -0600'
  content: |
    <p>Sunny: Nup, I'm pretty sure the circles are there to remind you to mount the component vertically, as I have done with the resistors. For whatever reason I didn't mount the diodes vertically as well.</p>
- id: 2228
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-13 10:18:55 -0600'
  date_gmt: '2009-01-12 23:18:55 -0600'
  content: |
    <p>Apologies to marxy and Martin, whose comments I had to rescue from the spam bin... :(</p>

    <p>@marxy: I saw that errata; it had been applied to the diagram supplied in the kit.</p>

    <p>@Martin: I also saw that hint (and in fact linked to it in the post!)</p>

    <p>I've got a circuit diagram but am not really familiar enough with reading it to know how to do troubleshooting.</p>

    <p>For example, how do I read it to know what the voltage should be at various points? Also, if I want to test a transistor in-situ, is that even possible? (Current theory is that I've fried one of them while soldering).</p>
- id: 2232
  author: Martin
  author_email: mpot@martybugs.net
  author_url: http://martybugs.net/blog
  date: '2009-01-14 00:19:49 -0600'
  date_gmt: '2009-01-13 13:19:49 -0600'
  content: |
    <p>You're better off removing the transistors from the circuit to test them.</p>

    <p>With regards to testing voltages at various points, if it's not marked on the circuit, you'll need to calculate the expected voltage at various points based on the circuit diagram.</p>

    <p>(On another note....any idea why my comment got flagged as spam?  Was it due to the fact that I had an embedded URL in the text...or was it something else?)</p>
- id: 2260
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-01-20 09:04:37 -0600'
  date_gmt: '2009-01-19 22:04:37 -0600'
  content: |
    <p>On the subject of DealExtreme, as on many other subjects, <a href="http://dansdata.blogsome.com/2008/09/26/never-mind-the-quality-feel-the-price/" rel="nofollow">Dan</a> has worthwhile things to say.</p>

    <p>Martin: I have no idea why your comment got marked as spam. I use the Akismet distributed spam detection system which I was moderately happy with the two false positives. I <a href="/archives/2008/07/31/bayes-theorem-1-mandatory-filtering-0/" rel="nofollow">hate</a> false positives. Not sure what I'm going to do about it, but I know I'm <em>very</em> reluctant to implement CAPTCHA or any other nonsense  like that.</p>
- id: 2304
  author: Alan Green
  author_email: alang@bright-green.com
  author_url: ''
  date: '2009-01-26 07:41:44 -0600'
  date_gmt: '2009-01-25 20:41:44 -0600'
  content: |
    <p>This is a stretch, but did you check the errata on the Silicon Chip web site? http://siliconchip.com.au/cms/A&#95;104479/article.html</p>
- id: 2653
  author: mary
  author_email: a_dragon_witch@yahoo.com.au
  author_url: ''
  date: '2009-03-01 00:55:58 -0600'
  date_gmt: '2009-02-28 13:55:58 -0600'
  content: "<p>I’m 40 and just completed My Clifford.. \nhe was my first little electronic
    thingy.</p>\n\n<p>I felt lost most of the way but found a couple of pages that
    really helped me in trying to find out what resister was the one to use. </p>\n\n<p>http://samengstrom.com/nxl/10116/5&#95;band&#95;resistor&#95;color&#95;code&#95;page.en.html\nthe
    above page really helped me sort out which was which.</p>\n\n<p>(as they pretty
    much looked the same to me).. \nPlus i might need a magnifying glass to see the
    lines better.. \n(gosh i might be getting old - ack!)</p>\n\n<p>Ps the diodes
    look fine..  on the instructions it said A was the positive side and K was negative..
    \ so it looks like you have them the right way around.</p>\n\n<p>Mine works pretty
    good.. just i was hopping for a better sounding chirp..\nhope i have helped in
    some way ..  Cheers Mary.</p>\n"
---
Sometimes you blog because you've [accomplished something](/archives/2008/12/14/becoming-a-bronzed-aussie/). Sometimes you blog because you just want to salvage something from [failure](/archives/2006/05/27/negative-result-bias/). Today I'm going to do both! Yes, hardware is involved.

<a id="more"></a><a id="more-3680"></a>
#### Nintendo DS Case Swap

A while ago I sat down with some unusual tools and my failing eyesight to rescue a Nintendo DS that had suffered an Act Of 5-year-old. It wasn't too damaged, but the hinge area had cracked and so it had a tendency to fall apart. At the time I was expecting to pay around $200 for a replacement.

But then I discovered [DealExtreme](http://www.dealextreme.com/). Oh. My. Dog. That site is so awesome. It's like a massive south-east Asian computer market but instead of all the cheap cool gadgets being strewn amongst a thousand tiny stalls, they are all catalogued, displayed online and available for purchase with *international shipping included*. Just amazing, have a browse.

<div class="aside"><p>Whirlpool has a <a href="http://whirlpool.net.au/wiki/?tag=dealextreme">DealExtreme FAQ</a> on their wiki, highly recommended for Australian customers.</p></div>

Anyway one of the things you can buy from DX is a [full replacement housing for a NDS](http://www.dealextreme.com/details.dx/sku.7276) for $14.15. Sold!

It arrived a couple of weeks later (yes delivery is slow). I spent the afternoon swapping the old case for the new. Put briefly, you do *not* want to attempt this operation unless you really have to (or have rolled an 18 for dexterity).

The best instructions for Nintendo DS disassembly are available on [flickr](http://www.flickr.com/photos/62647765@N00/sets/72157594277451148/). I followed them closely and, for the most part, successfully.

{% oembed https://www.flickr.com/photos/arankine/3186289559/ %}

Here is a shot I took just after removing the back cover. You can see the broken hinge &mdash; which I have completely removed &mdash; on the right. After this point things get very tricky. See that ribbon cable on the left? That joins the upper screen to the lower PCB and was a complete bitch to get out.

The new case fit very nicely and everything went quite smoothly during reassembly. The shoulder buttons were only exception to this; it took literally about an hour of fiddling to get them both in and working. In the picture above you can see the right shoulder button still in place, with a little metal hinge that fits into the case itself. Well, when reassembling the NDS you have to align both of the button hinges *and* both of the little springs (not visible above) that are needed so that when you release the button it doesn't stay pressed.

In short, I stuffed up one of the springs. So now we have one button that needs to be pushed back out before it can be  pressed again. This is livable for most games. Otherwise, everything works perfectly, and has for the last few months. If we want to play a game with a lot of shoulder-button action (eg Mario Kart), we generally play it on the other, pristine, NDS.

#### Clifford The Cricket

Bouyed by the success of the NDS, the [Alien DAC](/archives/2008/05/04/building-an-alien/), and by a new-year enthusiasm for making stuff, I bought an electronics kit. The intention was to introduce electronics to the Jr. Girtbys and to re-introduce electronics to me.

This is a relatively simple project that was described in an old (1994) issue of [Silicon Chip](http://siliconchip.com.au/). The kits are available everywhere, I got mine from [Jaycar](http://www.jaycar.com.au/productView.asp?ID=KC5178&CATID=&keywords=&SPECIAL=&form=KEYWORD&ProdCodeOnly=yes&Keyword1=KC&Keyword2=KC&pageNumber=&priceMin=&priceMax=&SUBCATID=).

It's supposed to start chirping like a cricket when you turn out the lights. I don't really understand how it works, but it's something to do with a light-dependent resistor which increases voltage across an IC input. This apparently activates a little oscillator and that makes the noise.

Here is mine. It doesn't work.

{% oembed https://www.flickr.com/photos/arankine/3186287897/ %}

I've checked, and re-checked, and re-re-checked the components, to ensure that everything is in the right place, and with the right polarity. I've also checked my soldering which, while pretty dodgy in places, does at least look to be basically functional.

<div class="aside"><p>For future reference, diodes have the stripe on their cathode, <em>not</em> the anode. This is despite <a href="http://siliconchip.com.au/cms/A_104371/article.html">contradictory</a> <a href="http://siliconchip.com.au/cms/A_102711/article.html">advice</a> you might find on the internet.</p></div>

I can get him to chirp by shorting various pins on the IC - which indicates that it is something to do with the logic parts of the circuit. Perhaps I've fried a transistor or something, I don't know.

Troubleshooting tips appreciated.
