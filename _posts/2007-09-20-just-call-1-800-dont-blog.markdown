---
layout: post
status: publish
published: true
title: Just Call 1-800-DONT-BLOG
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1986
wordpress_url: http://girtby.net/2008/03/03/just-call-1-800-dont-blog
date: 2007-09-20 09:52:20.000000000 -05:00
categories:
- Verisimilitude
- Provocation
tags: []
comments: []
---
Some timely and sensible comments from [Peter Marks on Radio National breakfast](http://www.abc.net.au/rn/breakfast/stories/2007/2038435.htm) this morning, concerning the [2Clix / Whirlpool stoush](http://whirlpool.net.au/article.cfm/1755). He made the point that the best way for companies to respond to adverse criticism online is simply to engage in a discussion.

I can vouch for this based on experience here on this blog; long-time readers will recall the response I got when I called a certain company
["wankers"](/archives/2005/2/3/fileopen-are-wankers). A representative argued his case, and although I didn't agree with him, nor change my mind about their product, it was certainly the best possible way for them to respond. See also the response I got from Internode's CEO when I [mentioned their service](/archives/2006/5/27/a-tale-of-two-isps).

One other point I would make while we're dispensing advice to companies trying to deal with online criticism. You should not only try to understand why your customers are upset, but also why they feel that public forums are appropriate for their grievances. It could be that they have tried and failed to contact you in some other way, and that the public forum is (or is viewed as) the only remaining option to air their grievance.

I shall illustrate this with a recent example, coincidentally also serving to air a grievance of my own. Case in point: flowers.com.au

Yesterday I went to their eponymous site and attempted to order a bunch of flowers. Having ordered from flowers.com.au once before, I was expecting a smooth experience. And it was, up until the point that I entered my credit card information and hit the submit button. The response was this:

> Server Error in '/' Application.
>
> Object variable or With block variable not set.
>
> Description: An unhandled exception occurred during the execution of the current web request.
> Please review the stack trace for more information about the error and where it originated in the code.
>
> Exception Details: System.NullReferenceException: Object variable or With block variable not set.

... and so on, including detailed instructions on how to enable debug mode, and the stack trace showing some of the inner workings of their Visual Basic website.

<div class="aside"><p>I'm sure that the .NET framework is trying to be helpful here, but in my opinion it is doing exactly the wrong thing. Surely if you're running in release mode there's a good chance that it is your actual customers who are viewing the error screen, so producing detailed errors like this is probably not a good idea. The standard approach taken by Google and others, namely the "something bad has happened, we've logged it" page, is definitely preferable.</p></div>

Now because this error happened when processing my credit card details, I'm especially concerned. Did my card get charged? If so, did the order go through? In many years of shopping online I can't remember ever encountering a failure such as this one; generally e-commerce sites make damn sure that their payment system is working 24-7. So I'm a bit surprised as well as confused. This is pretty much the worst way for the website to fail, for all concerned.

But no worries, the rest of their website is working, so I'm able to look up their contact details. They have a phone and an actual email address (as opposed to one of those horrible "email" web forms). I don't want to phone because I don't want to have to read out that horrible error message. It's easier and more convenient for me to copy'n'paste the error message into an email.

The response? None so far.

Fail to complete a credit card transaction, and then fail to respond to queries about it? I think that's enough to earn the "wanker" title. So: flowers.com.au, you are wankers.

So the question is: what do I do next? In truth, completing the transaction is no longer my priority. Even if I did get them ordered, the flowers are never going to arrive in time, so I need to make alternative arrangements anyway. And I also need to verify through my bank that the transaction was not completed. And that's before I make any other attempts to contact the merchant. So at this point I get a far higher return on effort by posting publicly about my experience. At least that's my perception. And I suspect many people who post negative experiences online do so because they have the same perception.

Even if I'm wrong about this, it would still seem to be prudent for companies to understand more about their customers motivations in posting grievances publicly. And not suing, obviously.
