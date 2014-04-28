---
layout: post
status: publish
published: true
title: Vendor Lock-In
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 2638
wordpress_url: http://girtby.net/2008/02/13/vendor-lock-in
date: 2008-02-08 00:41:00.000000000 -06:00
categories:
- Nerd Factor X
- Provocation
tags:
- iphone
- sdk
- schneier
comments:
- id: 1665
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Excellent response, Alastair.  I read Schneier's essay before reading yours, and you hit every point that I came up with.

    I also agree with your conclusion -- vendor lock-in is enough of a problem that I'm glad we have people with big megaphones talking about it, but unfortunately, too many of those megaphone-wielders exaggerate their cases.

    There are a number of reasons that PCs became the standard and Macs remained a niche item, but one of the most important factors was that the hardware was pretty much open on PCs from the get-go.  This allowed market forces to work, and more people opted for flexibility, which in turn spurred competition and knocked down the prices.  So, if you wanted a Mac because you appreciated its superior [fill in pet feature here], you accepted the proprietary nature of the machine as the price to pay for increased quality.  Mac had a second chance to win market share when they made the smart decision to base OS X on Unix -- I was one of many who bought a Mac in response.  Then they made a series of dumb decisions and broke a lot of the Unix goodness.  I won't buy another Mac, consequently.

     I expect the same thing will happen with next-gen smart phones -- some people will stick with the iPhone because they like its snazziness, others will opt for a different phone, whether because its hackable, cheaper, supports more telco services, or whatever.
- id: 1666
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Interestingly modern Intel-based macs have very minor differences to regular generic PC hardware. AFAIK the only major difference is that Apple uses <acronym title="Extensible Firmware Interface">EFI</acronym> instead of the dinosaur-era BIOS used in most PCs. Hey, you can run XP or Linux or whatever you want on most Intel Macs. No vendor lock-in to OS X any more!

    Curious to hear more about this statement:

    > Then they made a series of dumb decisions and broke a lot of the Unix goodness.
- id: 1667
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Good point about the Intel processors.  But is it possible to install Windows on Apple hardware without OS X being installed first?  (I'm not saying anyone would want to, of course.)  And, probably as a consequence of Apple's move to Intel, I understand it's possible to get OS X running, natively, on a PC.

    As for breaking Unix, I've forgotten a lot of the specifics -- the reading I was doing a year or two ago convinced me to abandon the idea of a Unix box with a nice UI.  The things I remember include messing with the file system, messing with permission bits, making changes to Unix source code that are not given back to the community (and/or introducing bugs that no one else will be able to look at), and (related) closing down the OpenDarwin initiative.

    <a href="http://rixstep.com/2/20040621,00.shtml">Here</a>, <a href="http://rixstep.com/2/2/20070718,00.shtml">here</a>, and <a href="http://rixstep.com/2/20070608,01.shtml">here</a> are some examples.

    Less specific, but captures the mood: <a href="http://www.oreillynet.com/onlamp/blog/2007/09/eight_things_i_absolutely_hate.html">here</a>, <a href="http://diveintomark.org/archives/2006/06/02/when-the-bough-breaks">here</a> and <a href="http://www.boingboing.net/2006/06/29/mark-pilgrims-list-o.html">here</a>.
- id: 1668
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Good links there Brendon. I absolutely agree with the rixstep articles that HFS+ is well and truly due for replacement. In fact Linus [said as much][1] at LCA recently. There were many of us who were eagerly anticipating the inclusion of Sun's ZFS as the new default filesystem in Leopard, but sadly that was not to be.

    I don't disagree with any of the criticisms in the O'Reilly article either, and I would have a few to add to this list (`PT_DENY_ATTACH`!), but neither these nor the HFS+ problems are overwhelming, particularly given the other major goodness of OS X as a whole. YMMV of course.

    I've thought a good deal about Mark Pilgrim's exodus to Ubuntu, and specifically about the freedom concerns. As I stated previously, I share these concerns, but put my main priority on need for [Free Data][2]. As long as I can get my data out of my OS X and put it elsewhere, I don't feel the imperative to demand Free Software as well. Which is not to say I don't support Free Software; by analogy I support public transport and use it when I can, and yet I still own a car. I understand those who find this position to be a conflict of principles.

      [1]: http://www.smh.com.au/news/technology/utter-crap-torvalds-pans-apple/2008/02/05/1202090393959.html
      [2]: /archives/2008/1/30/freedom-zero
- id: 1669
  author: Andrew
  author_email: aselbst@gmail.com
  author_url: ''
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: With regard to your first claim that the iPhone lock-in is really an AT&T
    lock-in, the contract between the two really makes it true of either. If you want
    to buy an iPhone, you get locked into AT&T for two years. You are *not* locked
    into the phone itself, but still are locked in to a vendor due solely to the phone's
    purchase.
- id: 1670
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Andrew, thanks for the comment. I agree the contract an obstacle to switching, but surely if you pay the money you can still do it? I guess the main difference here between the iPhone and most other mobile devices on the market is that you can't buy the iPhone "unlocked" to a carrier, whereas you can with most of its competitors.

    (Ignoring the iPod Touch which may approximate an unlocked iPhone for some classes of user...)
- id: 1671
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    Thanks to Bruce Schneier for the [linkage][1] and complementary comment.


      [1]: http://www.schneier.com/blog/archives/2008/02/lockin.html
- id: 1672
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2008-02-08 00:41:00 -0600'
  date_gmt: '2008-02-08 00:41:00 -0600'
  content: |-
    You make some interesting points, but I can't reconcile it with my intuition. The iPhone can only be used with AT&T. It is "locked" to the vendor. Isn't that vendor lock-in? I haven't read the article, and the points you make are valid, so maybe the arguement the article was making had some issues, but I thought the iPhone would be a pretty *good* example of vendor lock in.

    Maybe ipods as well, if you can't use them with any online store (or at least if it looks like Apple are trying to make it difficult for the ipod to inter-operate with other stores). The iPod would be locking you into the music vendor.
---
I generally agree unequivocally with Bruce Schneier, but his recent column on [vendor lock-in](http://www.wired.com/politics/security/commentary/securitymatters/2008/02/securitymatters_0207) has me wanting to take issue with some of his points.

Vendor lock-in is real, but the example he gives of the iPhone is *not* a very good one. Why? Because it's easy to switch: you call up the carrier (AT&T in this case) and say "I don't like my iPhone, it's too sleek and good looking and it's user interface is too elegant. Instead I'd like to subject myself to some nonsense from the traditional handset vendors." To which the AT&T person says "sure, we'll charge you $X and ship out a new handset. When it arrives, just activate and transfer your contacts." Bingo, you're off the iPhone.

[**Update**: Andrew points out in <a href="/archives/2008/2/8/vendor-lock-in#comment-2657">comments</a> that the 24-month contract may impede switching in this manner. I don't know the details, but I'd be surprised if it was *impossible* to switch away from the iPhone, merely *expensive*. This is, to my mind anyway, not sufficient to justify the term "vendor lock-in", but I suppose that depends on your definition. My definition is below.]

In Australia we have number portability which means that I can generally switch handset or carrier without too much fuss. I'm not sure about the situation in the US, but as illustrated above you are still free to switch handsets while keeping the same carrier. So if there's lock-in at play here, it's lock-in to AT&T, not the iPhone.

So what is vendor lock-in anyway? I would define it as the presence of constraints on a given product or service that are imposed by the vendor and which prevent you from switching to a different product. These constraints may take the form of missing features which would enable a switch, or of usage constraints imposed by licensing, or both. Either way there has been an explicit decision &mdash; technical or policy &mdash; by the vendor which prevents switching to a competitive product. Hence the term is a mild pejorative.

It's a slightly confusing term because it applies to a product or service, and not to the vendor. So it's quite possible for product X to exhibit vendor lock-in, but not product Y from the same vendor. "Vendor-*imposed* lock-in" might be a better term.

Note that there is an implicit assumption that the features and capabilities of the product in question are available elsewhere in the marketplace. In other words, there exists an equivalent product to switch to. This assumption does not always hold, and sometimes you may find yourself unable to switch to a different product, simply because there are no other products on the market with a given capability or feature. This does *not*, by my definition anyway, constitute vendor lock-in, because the inability to switch does not arise as a result of a decision from the vendor.

Does the lack of an SDK constitute vendor lock-in for the iPhone, as claimed by Schneier? Well, does the lack of this feature prevent switching to a different product? No, of course it doesn't, as illustrated above.

In fact, it is the *presence* of an SDK which constitutes vendor lock-in, of a sort. Third-party applications written to the iPhone cannot, by definition, be easily be ported to other mobile platforms. If you suddenly decide you don't like your iPhone any more, but have hundreds of third-party applications installed, you have a problem.

This problem is common to all computing platforms; vendor lock-in is a necessary consequence of all vendor-controlled SDKs and APIs.

Incidentally the delay in making an iPhone SDK available can quite easily be explained by the technical challenges involved, and does not neccesarily imply any policy decision by Apple to deliberately lock out third-party developers. Producing an SDK of any quality is a hard task, and the instant it is released it has to be supported for the life of the product. As Charles Miller [puts it](http://fishbowl.pastiche.org/2007/10/04/the_iphone_and_public_apis), "third party apps are for life, not just for Christmas". It is quite understandable that Apple would make sure their SDK is *just right* before committing to it.

But where does the "no SDK == lock-in" idea come from anyway? I suspect that it arises from the *expectation* that we are able to install third-party applications on the iPhone. Where does the expectation come from? It comes from the disclosed fact that the iPhone runs OS X. If Apple had not divulged this fact, or if the iPhone ran some un-named OS &mdash; as is the case for all classic iPods, for example &mdash; there would be no expectation of third-party applications. It is for this reason no one is claiming that the lack of an iPod SDK exhibits vendor lock-in.

However, Schneier claims that there *is* vendor lock-in on the iPod, due to the fact that "music purchased from Apple for your iPod won't work on other brands of music players". This is misleading; it is quite possible to purchase DRM-free music from Apple for the iPod and other players. Again, he's incorrectly identified the source of the vendor lock-in, which in this case is *certain* music from the iTunes Store and not the iPod.

To reiterate, vendor lock-in is real and is important. It is contrary to the idea of [Free Data](/archives/2008/1/30/freedom-zero) and deserves to be more widely discussed. However, let's first understand what we are talking about, so that we can think critically.
