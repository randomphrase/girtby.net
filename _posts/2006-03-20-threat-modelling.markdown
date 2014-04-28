---
layout: post
status: publish
published: true
title: Threat Modelling
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  In the past I've rambled on about the [Virtual Furniture Police](/archives/2005/10/26/the-virtual-furniture-police/) and how corporations can severely but needlessly impact the productivity of their staff, with a variety of reasons given. Security is probably the main justification used for imposing such restrictive policies, and deserves some closer scrutiny.




wordpress_id: 178
wordpress_url: http://girtby.net/2007/04/28/threat-modelling
date: 2006-03-20 20:48:08.000000000 -06:00
categories:
- Nerd Factor X
- Me Use Brain
tags: []
comments: []
---
In the past I've rambled on about the [Virtual Furniture Police](/archives/2005/10/26/the-virtual-furniture-police/) and how corporations can severely but needlessly impact the productivity of their staff, with a variety of reasons given. Security is probably the main justification used for imposing such restrictive policies, and deserves some closer scrutiny.




<a id="more"></a><a id="more-178"></a>


As has been pointed out by [Dan Geer](http://www.itconversations.com/shows/detail84.html) and other luminaries, the field of computer security is a fledgling one. As an academic discipline, it has yet to mature to the level of formality that is enjoyed by other fields of computer science, such as the study of programming languages, data networks, or even artificial intelligence.

Nevertheless, it seems to be relatively well accepted that *threat modelling* is the most important initial step when it comes to designing secure systems. As Bruce Schneier explains in his book <cite>Secrets & Lies</cite>:

> What are the real threats against the system? If you don't know that, how do you know what kind of countermeasures to employ?
>
> Threat modeling is hard to do, and a skill that only comes with experience. It involves thinking about a system and imagining the vast vulnerability landscape. Just how can you attack this system?

There's very little in the way of methodology that is available for security in general. In the field of threat modelling, what you see above is prettymuch it.

I don't claim to know a lot about security theory or practice, but I do know a bit about systems engineering, and it seems to me that threat modelling is basically a specialisation. In order to build a system, you need to elicit the business needs that the system must satisfy. This is (in a nutshell) systems engineering. In order to secure the system you need to elicit the threats that must be countered; threat modelling. There is a lot of overlap and I hope to someday see a lot more cross-pollination in methodology between these two fields.

Until then doesn't mean that you (as I.T. department) shouldn't attempt to model the threats to your infrastructure. Even though your method may be completely ad-hoc, if you correctly identify all the threats to an organisation, well, it is the results that count.

Here's my new litmus test for assessing the effectiveness of threat modelling. You may have scoped the Russian mafia, script kiddies, and disgruntled employees all as potential threats, but have you identified the **I.T. department itself as a threat**?

The risk posed by the I.T. department is that of over-implementing their security policy - imposing security mechanisms that prevent the staff from doing their jobs. I'm not just talking about [long term impact on innovation](/archives/2006/01/04/making-connections/), but direct impact as in "I need access to this website and the firewall is blocking me".

Put another way: if the I.T. department is restricting the staff from performing legitimate work, this is **indistinguishable from a Denial-of-Service attack**.

My contention is that this risk is mitigated by rigourous threat modelling, and designing security countermeasures appropriately. Coincidentally it helps to identify security measures that are not effective against any known threat, but that's another topic.

Security people spend a lot of time worried about DoS attacks but I have never heard one consider that they themselves might be the threat. In large organisations it is practically impossible to know what might be needed from the corporate computing infrastructure, so you are prettymuch guaranteed of blocking someone somewhere from doing their job.

Although the impact of such a DoS attack is *mostly* fairly limited, the threat itself should not be ignored. The tension between the I.T. administrators and their users is palpable, see [this slashdot thread](http://ask.slashdot.org/comments.pl?sid=174358&threshold=3&mode=thread&commentsort=0&op=Change) for an example. You can see that attitudes amongst system administrators in general, and security professionals in particular, are very much in the if-in-doubt-lock-them-out camp.

Recently, fans of [Boing Boing](http://www.boingboing.net/) found they were no longer able to get their fix of wonderful things at work. The site had been [reclassified as "nudity"](http://www.boingboing.net/2006/02/25/boingboing_now_censo.html), which is commonly blocked by corporate censorware. While discussing this, Julian asked me "what is the business reason for accessing Boing Boing?" I responded that if a company is *mentioned* on Boing Boing, they almost certainly want to be able to see what is being said about them. Deploying censorware to prevent this is just shooting themselves in the foot.

I.T. departments in general should remember that just because they can't think of a reason for allowing access to something, it doesn't mean there isn't one.
