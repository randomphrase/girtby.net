---
layout: post
status: publish
published: true
title: I'm Certifiable
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "<img src=\"/images/ccna.gif\" alt=\"CCNA Pyramid\" width=\"170\" height=\"144\"
  class=\"lede\"/>Yesterday I passed my <acronym title=\"Cisco Certified Network Associate\">CCNA</acronym>
  exam. As such I am now officially qualified to administer your network. Yes, *yours*!
  (If it's run on Cisco kit of course) So now you know why girtby.net has been quiet
  of late.\r\n\r\nHere are some observations from the experience of preparing for,
  and taking, this exam.\r\n\r\n\r\n\r\n"
wordpress_id: 102
wordpress_url: http://girtby.net/2008/09/23/im-certifiable
date: 2005-06-09 21:42:11.000000000 -05:00
categories:
- Nerd Factor X
- Personal
tags: []
comments:
- id: 1137
  author: Shane
  author_email: shane@shanedevane.com
  author_url: http://www.shanedevane.net
  date: '2005-06-09 21:42:11 -0500'
  date_gmt: '2005-06-09 21:42:11 -0500'
  content: |-
    yo, nice article. just a quick question, I'd like to get a better feel for how long it takes to study for the CCNA to get the result you got, which is impressive, congratulations btw.

    Roughly, how many hours of study did you put in? and over the course of how long? ie. 2 hours per week over 4 months etc. etc.

    Thanks man,
    Shane
---
<img src="/images/ccna.gif" alt="CCNA Pyramid" width="170" height="144" class="lede"/>Yesterday I passed my <acronym title="Cisco Certified Network Associate">CCNA</acronym> exam. As such I am now officially qualified to administer your network. Yes, *yours*! (If it's run on Cisco kit of course) So now you know why girtby.net has been quiet of late.

Here are some observations from the experience of preparing for, and taking, this exam.



<a id="more"></a><a id="more-102"></a>

It is *hard*. Would you believe that I actually failed it the first time around? (OK don't answer that)

Once upon a time industry qualifications used to be notoriously easy to obtain (eg <acronym title="Minesweeper Consultant and Solitaire Expert">MCSE</acronym>) but this certainly wasn't the case here. [Others](http://taosecurity.blogspot.com/2005/03/passed-my-ccna-test-i-just-finished.html) have noted similar experiences with CCNA. Search the [Cisco prepcenter](http://forums.cisco.com/eforum/servlet/PrepCenter?page=discussion) and [techexams](http://www.techexams.net/forums/viewforum.php?f=7) forums, and you'll find them littered with sorry stories of failure.

Just to give you an idea of the breadth of the topics covered, there were over 200 different router and switch commands (often with many different variations) that needed to be understood, with just enough infuriating inconsistencies to multiply the difficulty of understanding them. You also need to be able to do <a href="http://www.learntosubnet.com/">IP subnet arithmetic</a> in your head. [Quick: how many subnet bits in a 255.255.255.240 mask?  There are three correct answers, you have 5 seconds.] Don't forget to understand the intricacies of ISDN BRI connections, VLAN trunking protocols, OSPF NBMA DR elections, STP port state transitions, ACL rules, etc etc. Just remembering the TLAs is difficult. Network engineers are likely scoffing at this point, but bear in mind that I am a software engineer by trade and this is all pretty daunting unless it's your daily bread and butter.

Adding considerably to the difficulty is the ambiguity in the curriculum. OK you can see the [exam topics](http://www.cisco.com/en/US/learning/le3/current_exams/640-801.html#examtop) on the cisco site, but these are basically a list of high-level bullet points. Looking at that list, would you infer that you had to know about Port Address Translation for the exam? I wouldn't.

So the topics are pretty broad, and there's no definitive statement of curriculum to help narrow it down a bit. [Maybe this is intentional?] This means you are forced to look to the approved training material not just for the content but for the scope of the exam. This would be OK, except for two important points:

Firstly, I used two different (and non-Cisco) sources of training, but found that there were relevant areas of knowledge which were covered by only one of these. Indeed I found examinable subjects that were covered by neither of the two; whilst doing one of the practice exams on the Cisco Prepcenter, I came across a topic (ISDN dialer profiles) that I had not seen at all in previous study. In general it seems you can't rely on any single course or study guide for the scope of the exam.

Secondly, the course content seems to change regularly &mdash; as you might expect with a rapidly-evolving area of technology &mdash; but there doesn't seem to be an easy way to find out when the content changes, and what changes each time. For example, administering VLSM route summarization was a new addition to the 2005 curriculum, but how would you know this? Again, I found out through a practice exam question! (which, needless to say, I didn't do too well on...) But what's the big deal, you might be wondering. Just get the latest courseware before you start studying, right? Well not really. Consider that the certification only lasts for three years before you have to re-take the exam. In three years time I have no idea how I will find out what new topics I have to study.

One final point has to be made about this qualification that is likely to generalise to all industry qualifications.  As a student for a given company's qualification, you are being targeted for subtle, and sometimes not-subtle, marketing of that company's products and services. As an example of the subtle marketing at play, in the CCNA study material I saw it was claimed that Cisco's proprietary EIGRP routing protocol was to be universally preferred unless a mixed-vendor network required the use of the non-proprietary OSPF protocol. I know a reasonable amount about OSPF and so I'm not convinced there are good technical reasons for this preference, but it's likely not clear cut either way. As an example of non-subtle marketing messages, one of the study books I read referred to non-Cisco equipment as "off-brand". I guess this is all to be expected for an industry qualification.

Anyway, I'm pretty happy with myself for passing (962/1000) and gaining a worthwhile industry qualification. It's certainly achieved the goal that I had in mind at the outset, namely to increase my knowledge and confidence level in networking technology. Especially the nuts-and-bolts stuff like configuring routers and switches. Now for the <acronym title="Cisco Certified Network Professional">CCNP</acronym>...
