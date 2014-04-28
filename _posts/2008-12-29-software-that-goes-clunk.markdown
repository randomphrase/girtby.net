---
layout: post
status: publish
published: true
title: Software That Goes Clunk
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  In the world of the manufactured consumer item, there has long been a tradition of techniques which convey an impression of underlying quality to the prospective purchaser. For example, it is never going to hurt sales if you display the words "Made in Germany" prominently on your item's packaging. And I've heard that disproportionate engineering resources are typically expended on a car's doors, in order to get just the right "clunk" to impress potential customers on the showroom floor.

wordpress_id: 3658
wordpress_url: http://girtby.net/?p=3658
date: 2008-12-29 19:35:54.000000000 -06:00
categories:
- Nerd Factor X
tags:
- quality
- wordpress
- software
- unit testing
comments:
- id: 2076
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2008-12-30 00:28:15 -0600'
  date_gmt: '2008-12-29 13:28:15 -0600'
  content: |
    <p>Just because software is unit tested doesn't mean it's unit tested well. Just because software is covered doesn't mean it's covered well. This is sort of the exact problem with ISO9000 - It's more about intent, and less about a check-box. You can pay lip service to any sort of metric. Just look at Agitar!</p>
- id: 2080
  author: Steve Campbell
  author_email: dukeytoo@gmail.com
  author_url: http://blog.perfectapi.com
  date: '2008-12-30 05:10:44 -0600'
  date_gmt: '2008-12-29 18:10:44 -0600'
  content: |
    <p>There is no empirical evidence that unit testing is a better software quality technique when compared with other quality-inducing tools and practices (code reviews, test-after, etc).  To my recollection, given current evidence, the winner of that fight would be one of the many types of formal code review.  </p>
- id: 2088
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2008-12-30 20:13:26 -0600'
  date_gmt: '2008-12-30 09:13:26 -0600'
  content: |
    <p>I invite you to skim through <a href="http://stats.cpantesters.org/updates.html" rel="nofollow">all the posts for 2008 but particularly the summaries</a>. :-) And <a href="http://use.perl.org/~Alias/journal/38036" rel="nofollow">it only gets better</a>.</p>

    <p>Yeah, your language could do that too… but <em>does</em> it? We’ve got your test religion right here.</p>
- id: 2326
  author: Julian
  author_email: yeahhim@somethinkodd.com
  author_url: http://somethinkodd.com/oddthinking
  date: '2009-01-29 15:34:01 -0600'
  date_gmt: '2009-01-29 04:34:01 -0600'
  content: |
    <p>At least some people agree with your view that "Made with Unit Testing" is a key quality indicator.</p>

    <p>Check out the <a href="http://www.feedparser.org/" rel="nofollow">Universal Feed Parser</a>.</p>

    <p>They spend a total of 12 words on their home page describing the component before giving the key links and launching into example code on how to use it.</p>

    <p>Five of those words describe what it does. Two describe the technology. Two describe the license. The other three are "3000 unit tests."</p>

    <p>(Of course they could be 3000 worthless unit tests, but they certainly give the impression that they are serious about it.)</p>
---
In the world of the manufactured consumer item, there has long been a tradition of techniques which convey an impression of underlying quality to the prospective purchaser. For example, it is never going to hurt sales if you display the words "Made in Germany" prominently on your item's packaging. And I've heard that disproportionate engineering resources are typically expended on a car's doors, in order to get just the right "clunk" to impress potential customers on the showroom floor.

<a id="more"></a><a id="more-3658"></a>The point is that you, as a mere user of the widget, can't easily inspect its inner workings to determine the quality of engineering and manufacture, and nor do you typically have the expertise to do so. So you need to rely on the information provided by the vendor. Perhaps it plays on national stereotypes, on technobabble (hello, cosmetics industry!), luxurious packaging (hello, Apple!), or many other techniques.

With software &mdash; particularly web-hosted software &mdash; it is not so easy. An astute observer will examine the interface of the software in question and look for consistency to established standards, prevalence of modes, and so forth. A lay observer will go on aesthetics, and probably not much more.

As the market for software becomes more and more sophisticated, what are the indicators going to be for quality? "[Designed in California](http://www.joelonsoftware.com/items/2007/10/05.html)"? Or are lay people going to look for some more substantive indicators?

I don't know but I know what I'd really *like* it to be. And I know what I'll be looking more and more closely for, in future.

#### Made With Unit Testing

Once you've gotten the unit testing religion there really is no going back. It fundamentally changes &mdash; for the better &mdash; the way that you write software.

It can also make you a lot more intolerant towards regression bugs. That's my excuse anyway for my recent [dummy spit](/archives/2008/12/01/and-were-back/#comment-1946) over wordpress' broken comments feed. This is exactly the sort of problem that unit testing can catch. So why wasn't it? And what assurances do I have that it wont happen again? I am not a wordpress developer, and I don't care to be one either, but as a *user* I want to have better confidence in the software I use.

By the way, the fact that I was running an unreleased version of wordpress when I encountered the feed validation bug, is completely beside the point. Regularly run unit tests ensure that even when trunk is broken, it doesn't remain so for very long. As it turned out, the problem that I encountered [*did*](http://trac.wordpress.org/ticket/8626) make it into the 2.7 release of wordpress, before being addressed. (Although, as far as I'm concerned, the bug *still* isn't fixed, because there's no unit test to prevent it reoccurring).

Even if you don't know anything about unit testing, you should be able to factor it into a technology decision. Software package A is unit tested, and B isn't. Which do you pick, if all else is equal?

#### Other Types Of Testing?

It might be argued that other forms of testing are an acceptable substitute for unit testing. To which I would say: bullshit. Or perhaps I might say "you are mistaken", in a more professional forum. Unit tests are by definition automated, and hence a lot more foolproof. Automated testing at higher levels of abstraction is of course possible, but from experience it is far less effective. And manual testing is just not fun.

Alternatively, it might be argued that a more comprehensive indicator of quality throughout the development process is an ISO 9000 accreditation. To which I say: you've got to be fucking kidding me. (And let's defer that discussion to another time).

As an experiment, pick your favourite piece of open source software. Go to the website and work out how to run the unit tests. Check out the latest source code from the repository and see if the unit tests run as advertised. If the unit tests are broken, or (worse) missing, maybe you should start looking elsewhere?

As another experiment, pick your favourite piece of closed source software (if you have one). Ask the vendor whether they have a unit test suite, and if so, what percentage of the code does it cover. Again, depending on the response, you might want to think about switching...

... to software that goes "clunk".
