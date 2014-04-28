---
layout: post
status: publish
published: true
title: Rethinking Virus Protection
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  For some time now I had been meaning to do something about the annoying message that my <acronym title="Anti-Virus">AV</acronym> program had been flashing at me sporadically. It was telling me that that my Symantec Anti-Virus subscription had expired. The options were a) paying the fee to reinstate the subscription, b) doing a fresh OS install to reset the subscription life clock, or c) doing without AV software.

  c) was looking awfully tempting for a while there.




wordpress_id: 175
wordpress_url: http://girtby.net/2006/12/26/rethinking-virus-protection
date: 2006-02-18 17:43:02.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments: []
---
For some time now I had been meaning to do something about the annoying message that my <acronym title="Anti-Virus">AV</acronym> program had been flashing at me sporadically. It was telling me that that my Symantec Anti-Virus subscription had expired. The options were a) paying the fee to reinstate the subscription, b) doing a fresh OS install to reset the subscription life clock, or c) doing without AV software.

c) was looking awfully tempting for a while there.




<a id="more"></a><a id="more-175"></a>


[Note that after my [experience with freeware AV](/archives/2006/01/08/ripleys-design-it-or-not/), that was not an option. Not just because of the bizarre UI, but mainly because it was ineffective.]

#### Is AV software still worth the hassle?

I couldn't remember the last time I had encountered a virus-infected file, let alone become infected. Maybe I was just lucky, but I like to think I was knowledgeable enough to look for [danger signs](/archives/2005/02/03/fileopen-are-wankers/) when it comes to downloading software from the internet. Up until now anyway, the benefit had been very slight, and the cost was not negligible, so what was the point of having AV software? It seemed more worthwhile to focus my attention on other types of malware, such as spyware, rootkits, and zero day exploits.

Also, the AV software vendors had collectively not distinguished themselves in the whole Sony rootkit saga. Many had explicitly opted out from protecting against corporate malware, presumably because of the deep pockets and armies of lawyers that Sony had at their disposal. [Bruce Schneier](http://www.wired.com/news/privacy/0,1848,69601,00.html) and [Dan Kaminsky](http://www.doxpara.com/DanK_VBFeb06.pdf), amongst others, ripped into them for this attitude, asking the pertinent question as to who were the customers of the AV vendors: average PC users like you and me, or Sony?

So I jettisoned Symantec Anti-Virus from my Windows box.

#### Second thoughts

Pretty soon Windows Security Center piped up with "hey, why don't you have virus protection, are you fucking *insane*!?" (or words to that effect) and I was about to click the "yeah, yeah, go away" button, when I noticed there was also a link to Microsoft's website listing AV products, and I clicked that instead. Dunno why, it's not the sort of thing I normally do.

But then it dawned on me. Maybe my problem with AV software wasn't a problem with *all* AV software, instead just a problem with the specific AV product that I was using? Clicking on the link to the [F-Secure website](http://www.f-secure.com/) I was pleased to discover that the latest version of their well-regarded AV product also detects spyware and rootkits. And I knew from reading their [blog](http://www.f-secure.com/weblog/) that they were pretty reactive &mdash; hence minimising exposure to zero-day exploits &mdash; and that they were one of the only AV vendors to adequately respond to the Sony rootkit.

I remembered the episode with a friend's infected computer and the ineffectual freeware AV software. On that occasion it was F-secure's online scanner which had correctly identified the infection when the freeware AV software couldn't. This confirmed the efficiency of F-secure in identifying newly-discovered exploits.

The clincher was that because I had clicked through from [Microsoft's site](http://www.microsoft.com/athome/security/viruses/wsc/en-us/default.mspx), I was eligible for a 50% discount (or as they put it, a 6 month free trial) making it only A$45. *Sold!* So far it has been working well.

#### AV software is a link in a long chain

But like all security products, AV software needs to be deployed in the context of disaster mitigation procedures and other best practices. This is what I do on my home boxes:

 * Regular *rotating* backups, to minimise the potential for data loss,
 * Windows/MacOS Update of course,
 * a conservative attitude to downloading software from the internet,
 * decent spam protection,
 * firewalls on the router and desktops, and
 * (recently added) intrusion detection through [snort](http://snort.org/) and [ACID](http://www.andrew.cmu.edu/user/rdanyliw/snort/snortacid.html).

The intrusion detection setup is not for the feint of heart, but it looks promising so far and I will report back once I do some more experimentation.

#### What about MacOS X?

On a topical note, you might have heard the [recent revelations](http://www.ambrosiasw.com/forums/index.php?showtopic=102379) about MacOS X malware discovered in the wild, and growing at an *infinite rate* (from zero to one). As a consequence, have I changed my [attitude towards AV protection](/archives/2006/01/10/windows-for-smarties/) on that operating system?

In short: no. But I'm watching the situation.

For now, you'd have to be extremely unlucky and frankly a bit stupid to catch [OSX/Leap.A](http://www.f-secure.com/v-descs/leap_a.shtml). With any luck it will have a net positive effect, in that it will encourage vendors like F-secure to start developing AV technology on the MacOS X platform, and users to be more aware of the threats, for when the real exploits start to become widespread.

On MacOS X I am far more worried about social engineering malware than about exploits of underlying operating system vulnerabilities. In fact, OSX/Leap.A is an example of the former. So AV software is almost certain to be needed in the future, but again for now I think it's a reasonable risk to do without AV software on MacOS X. Of course the above list of mitigation, detection and best practices still applies.

Let's be careful out there.
