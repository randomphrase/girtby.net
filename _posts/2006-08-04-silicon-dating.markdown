---
layout: post
status: publish
published: true
title: Silicon Dating
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 201
wordpress_url: http://girtby.net/2007/08/17/silicon-dating
date: 2006-08-04 05:46:53.000000000 -05:00
categories:
- Nerd Factor X
- Or Something
tags:
- storage
- mooreslaw
- experiment
comments: []
---
So I'm reading the [Linux Shadow Password HOWTO](http://www.tldp.org/HOWTO/Shadow-Password-HOWTO.html) document and come across the following:

> If you think about it, an 8 character password encodes to 4096 * 13 character strings. So a dictionary of say 400,000 common words, names, passwords, and simple variations would easily fit on a 4GB hard drive. The attacker need only sort them, and then check for matches. Since a 4GB hard drive can be had for under $1000.00, this is well within the means of most system crackers.

Amused at the anachronism, I decided to conduct an experiment. How accurately could I date this document, given the figures quoted in this passage?

So, 4GB for $1000. When the document was written, storage was $250/GB.

Today, [Newegg](http://www.newegg.com) has 250GB drives for about $80, or about $0.30/GB. Quite a difference.

Now I happen to know that hard drive capacities have historically doubled every 12 months; much faster than Moore's Law. Don't ask me how I knew this. Dating the document would be a interesting test of the accuracy of that figure.

Doubling every 12 months also makes the calculations easy. Easy enough to do brute force, instead of looking up the right equation (an exercise for the reader).

So at year 0 we have $250/GB. Then in year 1 it will be $125. Then $62.5, $31.25, etc etc down to to $0.48 and $0.24 in years 10 and 11, respectively.

Which means that the document must be between 10 and 11 years old.

Pleased with my prediction, I looked at the date on the front of the document. Sure enough: 1996. Bingo!
