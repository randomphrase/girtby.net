---
layout: post
status: publish
published: true
title: The Value of VoIP
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 18
wordpress_url: http://girtby.net/2007/09/19/the-value-of-voip
date: 2004-10-04 21:39:48.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 959
  author: girtby.net &amp;amp;raquo; Girty By Logfiles
  author_email: ''
  author_url: http://girtby.net/archives/2004/10/21/girty-by-logfiles/
  date: '2004-10-04 21:39:48 -0500'
  date_gmt: '2004-10-04 21:39:48 -0500'
  content: "[...] mattering of google hits. \tSo I pour heart and soul into lengthy,
    considered articles like <a href=\"http://girtby.net/archives/2004/10/04/the-value-of-voip/\">The
    Value of VoIP</a>, and yet the most popular post is a three-liner throwaway wrapping
    a l [...]"
---
<p class="metapost">Extensive musings on the benefits of VoIP technology follow. Apologies that <a href="http://www.quotationspage.com/quote/26931.html">I didn't have time to make it shorter</a>.</p>

As some readers will know, I work for a telecomms equipment vendor in the enterprise market. Unsurprisingly, the company has a large interest in <abbr title="Voice over IP">VoIP</abbr> technology. In my considerable time at the company I have listened to, and spoken, many words pondering the tangible benefits of this technology. Others outside the company too; one recent example that comes to mind is the <a href="http://www.itconversations.com/shows/detail203.html">Lucy Sanders</a> interview on itconversations.com. Also <a href="http://www.johnquiggin.com/archives/001969.html">John Quiggin</a> raised the issue in a recent post. It was these that prompted me to post my take on the benefits of VoIP.

In a nutshell: commoditised telephony.

<h4>What does "commoditised" mean?</h4>

By this I mean that the hardware and software necessary for a telephony system have become commodities. In this context a commodity is something that is suffiently unencumbered by the use of proprietary technology, or other development costs, as to present a low barrier of entry for new suppliers into the market. In addition, it implies the precense of healthy competition in the market and the associated downward price movement. PC hardware is commoditised. So is (certain) software. The stuff just doesn't cost as much as it used to.

So getting back to VoIP, I think of it as one part of of IP telephony, which occurs when bearer (ie voice) and signalling (ie call setup) are both made over an IP network. In a lot of cases, people say VoIP when they mean IP telephony but I prefer the latter term.

Why is IP telephony a good thing? Because IP devices are commodities. Every man and his dog's fridge now has an IP stack and the connectivity to use it. But wait, you may be thinking, why is this important? I don't <em>want</em> to make phone calls with my fridge! The only thing I was to use like a phone is, well, a phone.

Which is perfectly understandable. But I'm not just talking about endpoints. Traditional analogue handsets are of course commodity items already and have been for some time. It is certainly true that IP equivalents are coming down rapidly in price also, thanks to the huge advances in embedded IP-capable devices in recent years. For example, the <a href="http://www.grandstream.com/y-bt100.htm">Grandstream SIP phones</a> are around A$200 and falling. However I believe this is a second-order effect of commoditisation of other pieces of the IP telephony puzzle, specifically the exchanges and other bits of infrastructure to which the handsets are connected. "The Network".

<h4>The role of standards</h4>

Commoditisation of IP-based telephony systems is in large part due to the nature of the standards governing them. There are three differentiating factors for IP telephony standards that I see enabling commoditisation where traditional (that is, non IP-based) telephony standards have not:

<ul>
<li>The standards governing the protocols used for IP telephony are, or at least perceived to be, simpler than their traditional telephony. I think there are genuinely beneficial simplifications made when traditional telephony standards are re-implemented for IP networks. However in some cases I think that the complex standards for traditional telephony simply implement correctly complex requirements. For example, the Q.931 call model is intimately tied to our expected behaviour for telephony devices. But even when the percieved simplicity is incorrect, it still helps to attract new manufacturers, and hence drive commoditisation.</li>

<li>The IP telephony standards are built upon protocols, and principles, that are already widely commoditised. A good example might be the <abbr title="Session Initiation Protocol">SIP</abbr> protocol, which itself was heavily influenced by the architectural principles already widely implemented for internet-based communication such as email and the web. It also builds upon already-commoditised protocols such as MIME and DNS.</li>

<li>Perhaps as a consequence of the previous point, the IP telephony architectures tend to be more distributed in nature. This requires a more rigid decomposition of the system's functionality, which in turn allows individual components to be commoditised. The <abbr title="MEdia GAteway COntrol protocol">MEGACO</abbr> (H.248) protocol is an example of this in the IP telephony world. This protocol allows gateways, which are optimised for bearer traffic, and controllers, which are optimised for signalling traffic, to be separated from each other. This was done initially for scalability reasons, but one of the consequences is a distributed architecture which allows commoditised hardware and software to be used more widely than otherwise. To my knowledge there is no equivalent to MEGACO in traditional telephony standards.</li>
</ul>

It is sometimes claimed that great new applications are going to be enabled by IP telephony, and the factors listed above support this. However I have always been somewhat skeptical about these promised new applications, or at least the role that IP telephony would play in their development. One example I have heard is that an IP-based voicemail system can be integrated into an email server, providing a "single inbox". This is a great idea, except that it's already possible with traditional telephony. The advantage that IP telephony provides here is that <strong>any</strong> vendor's voicemail system should be able to deliver messages to <strong>any</strong> other vendor's email server. In other words, we are not so much enabling the development of new applications, as enabling the development of new markets. Markets for commoditised equipment.

<h4>New Markets</h4>

The factors listed above also contribute to a reduced the barrier to entry for new players in the telephony market, with accompanying benefits to customers. At one end of the scale are companies like Cisco, recent entrants into the corporate market, and maybe-depending-on-how-you-measure-it leaders of that particular segment. It's arguable that Cisco might have entered the telephony market, with or without the development of IP telephony, so I won't discuss them further.

At the other end of the scale, and perhaps even more significant, are the open source products. My friend Peter reports great success with the <a href="http://www.asterisk.org/">Asterisk</a> open-source PBX software. Open-source software is the ultimate commoditisation. Supply is infinite and hence the price is zero. Get a cheap PC running Linux or xBSD, install Asterisk, some SIP handsets and you're away. Interconnection with the <abbr title="Public Switched Telephony Network">PSTN</abbr> of course requires non-commoditised hardware, but this can be provided by the ISP and amortised across the customer base. I think this is a truly compelling offer for small businesses, branch offices and the like, which will in turn place price pressure on the medium and large ends of town. I don't think it's overly ambitious to speculate that an open source PBX based on traditional telephony software simply would not happen.

<h4>Consumer VoIP</h4>

So what about the consumer market, you may be asking. This is yet another case of reduced barrier to entry leading to commoditisation, this time of services. The technical barriers that prevent you from attracting customers to your infrastructure have been lessened, thanks to the ubiquity of IP networking. A simplistic way of looking at it might be: we want everything (email, IM, phone calls) to be supplied through one pipe, and it might as well be an IP pipe.

[That's certainly the way I want it anyway. And until Telstra (or someone) will unbundle my DSL service from a home phone service, I'm stuck. In the meantime my ISP has begun offering an <a href="http://www.swiftbroadband.com.au/swiftvoiceip/index.htm">IP telephony service</a> which I will jump on as soon as they include voicemail. Or even better, allow me to redirect my unanswered calls to a voicemail provider of my choosing (gmail maybe?) - see what I mean about commoditisation?]
