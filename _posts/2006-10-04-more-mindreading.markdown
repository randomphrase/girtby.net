---
layout: post
status: publish
published: true
title: More Mindreading
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Amongst my family I am rapidly acquiring a reputation as The Explainer of Internet Mindreading Tricks.

  The [last time](/articles/2006/02/09/the-mindreader) it was relatively simple. This time, not so much.

  [Try it yourself](http://digicc.com/fido), excuse the advertising, and then read on for my explanation.



wordpress_id: 212
wordpress_url: http://girtby.net/2007/02/19/more-mindreading
date: 2006-10-04 08:35:24.000000000 -05:00
categories:
- Me Use Brain
tags: []
comments:
- id: 1483
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2006-10-04 08:35:24 -0500'
  date_gmt: '2006-10-04 08:35:24 -0500'
  content: |-
    choose: 1241
    jumble: 4122
    diff: 2881
    choose "8"
    jumble to put in 128

    The dude says "7", but it's "8"...
    am I doing this wrong?
- id: 1484
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2006-10-04 08:35:24 -0500'
  date_gmt: '2006-10-04 08:35:24 -0500'
  content: hehe, 4121. I can't jumble...
---
Amongst my family I am rapidly acquiring a reputation as The Explainer of Internet Mindreading Tricks.

The [last time](/articles/2006/02/09/the-mindreader) it was relatively simple. This time, not so much.

[Try it yourself](http://digicc.com/fido), excuse the advertising, and then read on for my explanation.



<a id="more"></a><a id="more-212"></a>

So lets say we start with a two digit number where the digits are a and b.

The number is 10a + b. We jumble it up in the only way we can to give 10b + a.

Subtract them and we get 9a - 9b = 9 (a - b)

Try it with three digits a b and c

abc - acb : 100a - 100a + 10b - 10c + c - b = 9b - 9c = 9 (b - c)

This time there are a few more combinations:

abc - bca : 100a - 100b + 10b - 10c + c - a = 99a - 90b - 9c = 9 (11a - 10b - c)
abc - cab : 100a - 100c + 10b - 10a + c - b = 90a - 99c + 9b = 9 (10a - 11c + b)

In fact, this number is always divisible by 9. The reason is that the "a" term of the answer is always going to be equal to (some power of 10)a - (some other power of 10)a. In other words:

10<sup>x</sup>a - 10<sup>y</sup>a

for some x and y. If x > y then this equals:

10<sup>y</sup> ( 10<sup>x-y</sup>a - a )

which is

10<sup>y</sup> a (10<sup>x-y</sup> - 1)

And 10 to some power minus 1 is always divisible by 9 if you think about it.

So we've got a number divisible by 9. If we type all but one of the digits of this number into the computer - can the computer work out the other digit (which it knows isn't a zero)?

Well with two digits again, the number is going to be one of: 9, 18, 27, 36, 45, 54, 63, 72, 81, 90, 99.

But, if you give me one of the digits of those numbers I can always give you the other (non-zero) digit. Notice that the digits always add up to nine! So give me a 5, and I'll give you 9 - 5 = 4 in return. Give me a 9 and I'll give you another 9 in return (again because it won't be a zero)

For three digits, we get the same sort of thing:

108, 117, 126, 135, 144, 153, 162, 171, 180, 189, 198, 207, 216, 225, ...

With a three-digit multiple of 9, the digits always add up to 9 or 18. As it turns out this is a general property, namely the digits of a multiple of 9 always add up to a multiple of 9. It's easy to disprove: pick a random number, multiply by 9, add the digits and see if it's also a multiple of 9. If you want it, there's a [nice proof](http://mathforum.org/library/drmath/view/67061.html) that I wish I had come up with.

So for the computer to get the missing digit, all it has to do is add up the digits you give it, and subtract the result from the nearest multiple of 9.

Bingo!
