---
layout: post
status: publish
published: true
title: Bayes' Theorem 1, Mandatory Filtering 0
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Unfortunately the Rudd government are pressing forward with their [proposal for mandatory internet filtering](/archives/2008/1/3/where-s-the-mandatory-filtering-for-government-stupidity). Recently, Electronic Frontiers Australia [summarised the results](http://www.efa.org.au/2008/07/31/efa-says-filtering-trial-a-failure/) of an [analysis of current ISP-level filters](http://www.acma.gov.au/webwr/_assets/main/lib310554/isp-level_internet_content_filtering_trial-report.pdf) commissioned by my old [mates](/archives/2006/2/10/a-futile-gesture) at <acronym title="Australian Communications and Media Authority">ACMA</acronym>. The figures are frankly *begging* to be plugged into [Bayes' Theorem](http://en.wikipedia.org/wiki/Bayes%27_theorem), so let's do that.

wordpress_id: 3233
wordpress_url: http://girtby.net/2008/07/31/bayes-theorem-1-mandatory-filtering-0
date: 2008-07-31 11:41:00.000000000 -05:00
categories:
- Verisimilitude
- Provocation
tags:
- acma
- mandatory filtering
- efa
comments:
- id: 1814
  author: Yaron
  author_email: ''
  author_url: ''
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: |-
    You have a small typo, you initially wrote that the probability of a false positive is P(**-**|N) instead of P(**+**|N).

    Besides, you have the solution right there. They won't just block "porn", they'll block any and all "objectionable contest" or somesuch. In which case the effectiveness will climb up very drastically, depending on who decides what's objectionable.
- id: 1815
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: Thanks Yaron, fixed.
- id: 1816
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: |-
    For me the opt-out provisions stop me from getting too militant about this silly policy... so long as the bandwidth performance penalty isn't shared by people opting out. I'm also dismissing any reasoning that opting out will summon swarms of black helicopters to monitor my household's unfettered Internet usage.

    While the policy objective of providing a "safe(r)" home Internet service by default sounds a noble goal, it does seem like a terrible waste of money.  If the government subsidized ISPs to provide an opt-in filtering service to concerned parents at no additional cost I'd be much happier with the relationship between the solution and the desired policy outcome.

    I don't think arguing that false positives are a bad thing for people who don't opt-out is going to sway the debate.  Internet filtering, like security, is a place where theatre, overreach and false positives aren't necessarily seen as a bad thing.  They're perceived as a slight annoyance, yet also a valuable sign that the system will work when required.
- id: 1817
  author: B-Art
  author_email: ''
  author_url: ''
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: |-
    Answer to your Xcopy problem
    Use
    `"system(“echo F^|xcopy "$returnstr" "$mezteststr" /f /s /e /i")`
    Instead of
    `"system(“echo F|xcopy "$returnstr" "$mezteststr" /f /s /e /i")`

    Small difference but usable ;-))
- id: 1818
  author: Sean Carmody
  author_email: seancarmody@gmail.com
  author_url: http://stubbornmule.wordpress.com
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: 'Excellent post Alastair: there''s nothing like a good application of Bayes''s
    Theorem.'
- id: 1819
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxy.org
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: |-
    A great analysis.

    I think the assumption by the government is that people **accidentally** stumble across porn on the internet.

    Personally I can't remember accidentally viewing porn, however my children certainly used to see unwanted porn. They were lured there by honey-pot sites designed to attract children searching for free games and novelties, they were running Windows and as a side effect of getting the free games would get infected with a Trojan that would open unwanted pages.

    I agree, filtering isn't the answer, and has detrimental side effects. I wonder what the problem is that they are trying to fix?

    These days, the kids run MacOS X and use Firefox - I don't think they have any problem. The government should focus on that broadband infrastructure program.
- id: 1820
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-07-31 11:41:00 -0500'
  date_gmt: '2008-07-31 11:41:00 -0500'
  content: |-
    > For me the opt-out provisions stop me from getting too militant about this silly policy…

    It turns out, you won't be able to *fully* opt out:

    http://www.computerworld.com.au/index.php/id%3b1399635276

    Colour me unimpressed, and suddenly much more politically active, on this issue.
- id: 2309
  author: Stilgherrian &middot; Jim Wallace&#8217;s pro-censorship lies and distortions
  author_email: ''
  author_url: http://stilgherrian.com/politics/jim-wallaces-pro-censorship-lies-and-distortions/
  date: '2009-01-26 18:18:45 -0600'
  date_gmt: '2009-01-26 07:18:45 -0600'
  content: |
    <p>[...] last week) reckons that for a medium-sized ISP that’s 3000 incorrect blocks every second. Another maths-heavy analysis says that every time that filter blocks something there’s an 80% chance it was [...]</p>
---
Unfortunately the Rudd government are pressing forward with their [proposal for mandatory internet filtering](/archives/2008/1/3/where-s-the-mandatory-filtering-for-government-stupidity). Recently, Electronic Frontiers Australia [summarised the results](http://www.efa.org.au/2008/07/31/efa-says-filtering-trial-a-failure/) of an [analysis of current ISP-level filters](http://www.acma.gov.au/webwr/_assets/main/lib310554/isp-level_internet_content_filtering_trial-report.pdf) commissioned by my old [mates](/archives/2006/2/10/a-futile-gesture) at <acronym title="Australian Communications and Media Authority">ACMA</acronym>. The figures are frankly *begging* to be plugged into [Bayes' Theorem](http://en.wikipedia.org/wiki/Bayes%27_theorem), so let's do that.

<a id="more"></a><a id="more-3233"></a>

Firstly some terms. Let "P" be the event of discovering a Porn site on the internet. Let "N" be the converse event: discovering a Non-porn site. Let "+" be the event of a postive detection by an ISP filter. And obviously by "porn" I mean "inappropriate material", the definition of which may or may not coincide with the Government's; for the (admittedly rhetorical) purposes of this exercise it doesn't matter too much.

One of the key assumptions we have to make is P(P), or the probability of discovering a porn site. Obviously this depends greatly on how hard you're searching for it! Now I don't know about you, but I find that I almost *never* stumble upon a porn site by accident. Almost all of my regular news sources are relatively clean, or use the NSFW tag generously. But I'm quite happy to concede that my web habits are non-representative. So let's just assume a regular family internet connection with a moderate amount of parental supervision, with a 5% chance of accidentally stumbling on porn. This still seems quite high, but it will suffice for now.

To do the calculation we also need:

* P(N), which is pretty obviously 1 - P(P), or 0.95.
* P(+|P) is the probability of a positive detection by the filter, given a porn site. According to the report, this varies from 87&ndash;98%. Let's be generous and say a probability of 0.95.
* P(+|N) is the probability of a false positive detection by the filter. Again the results vary, this time from 1.3&ndash;7.8%. Let's use a similarly generous probability of 0.04.
* P(+) is the probability of a positive detection given any input. This is calculated by adding P(+|P) × P(P) and P(+|N) × P(N).

Now using Bayes' Theorem we can calculate P(P|+). In other words: if a filter blocks a given site, what is the probability that it was porn?

    P(P|+) = P(+|P) × P(P) / P(+)
           = 0.95 × 0.05 / ( 0.95 × 0.05 + 0.04 × 0.95 )
           = 0.55

In other words, **each time the filter blocks something there is an about even chance that it wasn't porn**. In my opinion this is sufficiently damning evidence to show the worthlessness of any of these filters.

So obviously we made some assumptions about the prevalence of porn, and hence the probability of discovering it. If we assume the internet is 50% porn, then the filter starts to look vaguely effective:

    P(P|+) = P(+|P) × P(P) / P(+)
           = 0.95 × 0.5 / (0.95 × 0.5 + 0.04 × 0.5)
           = 0.96

But this is clearly a ridiculous assumption. If, on the other hand, we say that P(P) is lower, maybe a 1% chance of stumbling on porn &mdash; which frankly still sounds high to me &mdash; then the filters look even more useless:

    P(P|+) = P(+|P) × P(P) / P(+)
           = 0.95 × 0.01 / ( 0.95 × 0.01 + 0.04 × 0.99 )
           = 0.19

So if the filter is blocking something, there's an 80% chance that it wasn't porn! Fantastic! For some reason these calculations seem to be missing from the ACMA report.

See the [EFA analysis](http://www.efa.org.au/censorship/mandatory-isp-blocking/) for more on the mandatory filtering, and while you're there, join up. I have.
