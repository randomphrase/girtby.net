---
layout: post
status: publish
published: true
title: 1963 Called, They Want Their Character Set Back
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1756
wordpress_url: http://girtby.net/2007/05/20/1963-called-they-want-their-character-set-back
date: 2007-05-20 10:12:42.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments: []
---
So I'm reading a published standards document. For various reasons I don't want to say which one, but suffice it to say that it's published by a reputable standards body and also ratified by ANSI. This particular document is dated 2006.

The document describes a binary message exchange protocol, which they rather confusingly call an API. In this document there are, from what I can see anyway, at least two major flaws which just leave me breathless.

Firstly, it specifies that character strings are to encoded as "8-bit ASCII". Let's leave aside the mild contradiction (ASCII is 7-bit) for now. Seriously: who really thinks ASCII is good enough for human-readable character strings any more? Anyone?

Note that this is a predominately binary protocol, and the use of ASCII strings is fairly limited. It's not immediately obvious that the ASCII strings *are* intended for humans, except for the fact that, well, everything else is encoded in binary. And, from the context of this particular protocol, it's pretty obvious that it is carrying human-readable content.

So again: why the caveman protocol? Maybe they never heard of this new-fangled thing called Unicode?

The second major flaw is even more flabbergasting. It's about security.

There is none.

Again without going into too much detail, this is a protocol which performs a pretty crucial business function. The standard specifies a (IANA-assigned) TCP port to listen on, and how the respective hosts should initiate/terminate connections to/from this port. It goes into the handshake that is initiated after the transport layer connection is made, but says *absolutely nothing* about securing these connections. There is literally no authentication of either end, and like I said this is a pretty crucial business function.

Now in fairness this protocol is likely to be used only in fairly locked-down networks. But they sound like famous last words to me...
