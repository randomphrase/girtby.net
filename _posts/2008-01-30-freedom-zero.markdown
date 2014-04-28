---
layout: post
status: publish
published: true
title: Freedom Zero
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Some [prominent](http://diveintomark.org/archives/2004/05/14/freedom-0) [bloggers](http://www.codinghorror.com/blog/archives/001044.html) have recently asked the question "Why don't people care about freedom 0?" To me this just raises the question "What is this freedom 0 stuff anyway?" Herewith the (lengthy) results of my own attempts to find out the answers to both of these questions, and even raise some of my own.


wordpress_id: 2572
wordpress_url: http://girtby.net/2008/02/18/freedom-zero
date: 2008-01-30 09:57:00.000000000 -06:00
categories:
- Nerd Factor X
- Me Use Brain
tags:
- free software
- licensing
comments:
- id: 1660
  author: hdh
  author_email: hieu.d.hoang@gmail.com
  author_url: ''
  date: '2008-01-30 09:57:00 -0600'
  date_gmt: '2008-01-30 09:57:00 -0600'
  content: |-
    1) Windows license forbids running it on more than 2 CPUs. The server editions has that bar at 128 I believe.

    2) Running two copies at the same time doesn't mean "distribute it to yourself", just "using it".

    3) People are free not to accept the service license agreement, and host their own data.

    4) Code for services are useless for the direct users of the service, only useful for those who want to host a copy of it.
- id: 1661
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-01-30 09:57:00 -0600'
  date_gmt: '2008-01-30 09:57:00 -0600'
  content: |-
    > 1) Windows license forbids running it on more than 2 CPUs. The server editions has that bar at 128 I believe.

    Ah yes, good point. Which reminds me, the limit of 10 incoming 'server' connections for the non-server Windows editions is also completely arbitrary, and a blatant attempt a market segmentation, also contrary to Freedom 0.

    > 2) Running two copies at the same time doesn’t mean “distribute it to yourself”, just “using it”.

    You're not convincing me, although I can see that the interpretation could go either way.

    > 3) People are free not to accept the service license agreement, and host their own data.

    What's this in relation to? Licensing of web services?

    It seems what you're saying is "if you don't like it, don't use it" and no one is arguing with that.

    The point is that people need to be aware of the freedoms they are giving up when they make the choice to use software of a given license. Most web software is non-Free, and people apparently don't care the freedoms that they give up when using it, and for each individual case that's fine. But as a community, as a society, I would say it's not fine. Or at least needs some further discussion.

    > 4) Code for services are useless for the direct users of the service, only useful for those who want to host a copy of it.

    Not sure I agree with this either - the code has lots of uses. For example, I can inspect the code to work out how to get my data out of a hosted service. Or I could inspect it for security flaws, to ensure that my hosted data is safe. Or many other uses.
- id: 1662
  author: Mark
  author_email: a@b.com
  author_url: http://diveintomark.org/
  date: '2008-01-30 09:57:00 -0600'
  date_gmt: '2008-01-30 09:57:00 -0600'
  content: |-
    Your link to diveintomark is from 2004.  Which is not to say it's the wrong link, but I've written about these issues since then:

    http://diveintomark.org/archives/2006/06/02/when-the-bough-breaks
    http://diveintomark.org/archives/2006/06/16/juggling-oranges

    I also mentioned "Free Data" in passing here: http://diveintomark.org/archives/2007/08/01/lolwreck

    Sorry for the LOLwreck pic, I'll quote the relevant paragraph here: "Also, Eben Moglen punctured the Web 2.0 hype bubble and said what I've been trying to say for years now. Praising companies for providing APIs to get your own data out is like praising auto companies for not filling your airbags with gravel. I'm not saying data export isn't important, it's just aiming kinda low. You mean when I give you data, you'll… give it back to me? People who think this is the pinnacle of freedom aren't really worth listening to. Please, we need a Free Data movement. (Yeah I know, Tim [O'Reilly] predicted it already. I was the one who told him, at FOO Camp the month before.)"

    Anyway, the bottom line is that both Free Software and Free Data are important for different reasons.  They usually go hand in hand, though this is due to correlation, not causation.  For a long time, GIMP was the poster child of a Free Software program with undocumented data formats.  (Undocumented outside of the code itself, of course.)  And MS Office formats were pretty well documented despite the absence of Freedom in the software itself, due to a massive worldwide effort to reverse-engineer them.  But those are corner cases.
---
Some [prominent](http://diveintomark.org/archives/2004/05/14/freedom-0) [bloggers](http://www.codinghorror.com/blog/archives/001044.html) have recently asked the question "Why don't people care about freedom 0?" To me this just raises the question "What is this freedom 0 stuff anyway?" Herewith the (lengthy) results of my own attempts to find out the answers to both of these questions, and even raise some of my own.


<a id="more"></a><a id="more-2572"></a>

#### Free Software

Freedom 0 is one of four &mdash; numbered zero through three of course &mdash; necessary and sufficient preconditions for software to be considered Free Software by the Free Software Foundation. The FSF publishes a [definitive document](http://www.gnu.org/philosophy/free-sw.html) on this subject which is my reference for the remainder of this article.

As with any discussion about freedom, we are concerned here with what is *permissible*, not what is technically possible. Hence compliance to the "numbered" freedoms (as I shall call them), or to Free Software as a whole, is entirely determined by laws and licensing, *not* by the code. Perhaps "Free License" might be a better term for what is being defined, but no matter. It is assumed that for each piece of software under consideration, there is a single unambiguous license accompanying it; dual-licensed software is not discussed.

Also not discussed in the FSF document, is the significance of the ordering of the freedoms, even though there does seem to be some, because later numbered freedoms depend on earlier ones. The freedom to distribute your modifications to some software (freedom 3) is necessarily dependent on the freedom to make modifications in the first place (freedom 1), for example.

One possible reading of the FSF's document is that freedom 0 exists not because it's a worthwhile concept in its own right, but because it helps to *explain* a larger concept, namely that of Free Software. This provides one possible reason why people don't care about freedom 0 in isolation of the others, but because of the ordering property I don't think this is the case. Freedom 0 is, at first glace anyway, a worthwhile property that deserves further exploration.

#### Defining Freedom 0

Freedom 0 is the "freedom to run the software, for any purpose". The FSF elaborates:

> The freedom to run the program means the freedom for any kind of person or organization to use it on any kind of computer system, for any kind of overall job and purpose, without being required to communicate about it with the developer or any other specific entity. In this freedom, it is the *user's* purpose that matters, not the *developer's* purpose; you as a user are free to run a program for your purposes, and if you distribute it to someone else, she is then free to run it for her purposes, but you are not entitled to impose your purposes on her.

Reiterating, this freedom is all about what is *permissible*. If the license allows me to run the software on any computer system it satisfies freedom 0, regardless of whether or not the software actually runs on that system.

As far as I can tell, freedom 0 is not *in itself* concerned with the freedom to actually modify the software in order to run it on any system; that's freedom 1. So if we're considering freedom 0 *only*, then the question can be practically reduced to "am I free to run this software on all *technically compatible* systems?" Only after freedom 1 is granted does the full meaning of freedom 0 come into effect.

<div class="aside"><p>Being a nerd, the scene from <cite>Life of Brian</cite> where they discuss "every man's right to have babies" is unwillingly brought to mind. If you're a nerd too I'm sure I don't need to recite it or make the connection to the topic at hand; let's just take it as read. If you're not a nerd ... umm ... congratulations on making it this far!</p></div>

As a thought experiment you could imagine a closed-source developer who wanted to get the kudos of having a freedom 0-compatible license. They could deliberately *introduce technical dependencies* which would, in a sense, take the heat off the license limitations. By artificially limiting the range of compatible computer systems, such as with a hardware dongle for example, they could produce software that would be theoretically freedom 0-compatible, and yet highly constraining on the user thanks to technical limitations. OK, so this is a pretty fanciful scenario, but it does reinforce the point [made in Lessig's Code 2.0 book](/archives/2007/12/20/code-2-0) that licensing and code operate together to regulate behaviour.

So this provides another reason why people may not care too much about freedom 0, namely the technical limitations kick in before the licensing restrictions do. When this happens, freedom 1 is required, but that's a different question.

#### Further Subtleties

OK so this definition of freedom 0 is already quite subtle and complex (and hence another possible reason why people don't care about it), but in addition, there are other passages in the Free Software document that seem to apply to the numbered freedoms individually, for example:

> In order for these freedoms to be real, they must be irrevocable as long as you do nothing wrong; if the developer of the software has the power to revoke the license, without your doing anything to give cause, the software is not free.

The application of this to freedom 0 seems pretty straightforward. However, there are many other passages about the relationship between Free Software and commercial software, and their applicability to freedom 0 individually is less clear.

Does freedom 0 allow you to run *multiple copies* of a given piece of software on your own computer systems? In other words, does this freedom fundamentally conflict with the idea of commercial software licensing, at least as the latter is currently practiced? Freedom 2 talks about redistributing to your *neighbour*, but what about redistributing to yourself? It's not clear.

There is apparently no conflict between commercial *distribution* and Free Software, so I guess that it might be conceivable that commercially-distributed software could also satisfy freedom 0. But at this point though I'm going to cop out and gloss over this aspect of freedom 0 for now.

#### Some Examples

Mac OS X does not satisfy freedom 0 because [according to the license](http://www.apple.com/legal/sla/macosx.html) you are not permitted to run it on non-Apple hardware. Most annoyingly this includes [virtual hardware](/archives/2006/10/30/virtual-macos-x), although this restriction has [apparently](http://arstechnica.com/journals/apple.ars/2008/01/17/macworld-ars-parallels-talks-about-2008-for-desktop-server) been relaxed in Mac OS X Server.

Until [recently](http://arstechnica.com/news.ars/post/20080121-microsoft-relents-vista-virtualization-ban-lifted.html), Microsoft had the same restriction on Vista which would preclude it from virtual hardware. Now that there is no restriction on the type of hardware that Vista can run on, is it compatible with freedom 0? Of course not; the Vista license is revocable. This may seem like a fairly theoretical concern, except that Microsoft [have changed their license](http://www.infoworld.com/articles/op/xml/02/02/11/020211opfoster.html) in the past in order to restrict users.

It's easiest to think about freedom 0 in the context of operating systems because the "computer system" part reduces to "hardware". But the same applies to applications: am I free to run this application on any other computer system (meaning, I suppose, a combination of operating system and hardware)? Is it permissible to run Internet Explorer on a Linux system, for example? [Apparently not](http://toastytech.com/guis/wine.html).

These are important questions, but to my mind the it is the web applications that are the herd of elephants in the room. In many ways these have set back the cause of Free Software significantly, because it's not even possible to *get* the software that powers most websites. If we truly cared about freedom 0 we would be clamouring for Google to release the code behind Gmail, for Yahoo to distribute the flickr code, and so on. I can think of lots of reasons why I would want to run these applications on my own servers, and very few technical reasons why I would not be able to do so.

#### Won't Someone Think Of The Freedoms?

I've touched on some possible answers to the question "why don't people care about freedom 0?" To recap:

 * **It's simply a device to explain the concept of Free Software, and is not a useful concept on its own.** As discussed above, I don't think this is right, but listed here for completeness.

 * **Technical restrictions often cut in way before the licensing ones do.** This seems to be the case for the operating system examples listed above. The "lost" freedom 0 as a result of restrictive licensing doesn't seem to have a huge impact on people. Instead the technical limitations are the main concern (though this would in turn put emphasis on freedom 1, which people seem similarly unconcerned about).

 * **This is all too hard.** Yep.

 * **Other things are more important.** The reason why you would want to raise awareness of freedom 0 is presumably to encourage its adoption in more software licenses. Commercial software and web applications are the most obvious candidates, and we should certainly be encouraging them to open up their licenses to allow us to run on more systems. But we could also encourage them to make their software better, like removing some of those technical limitations, or make the software more usable, or better documented, or better supported, or cheaper, or just prettier. People might understandably choose to advocate one of these instead of freedom 0.

I think in most cases the last reason is probably the most likely, although the specifics will vary.

#### More Important Than Free Software

For my own view, freedom 0 and Free Software in general are certainly worthy causes, to be encouraged by all software developers and the community generally. But I'm more concerned about something else.

Why do we value Free Software over non-Free Software? Well, it prevents the authors of Free Software from taking away the software that we depend on, in order to access our *data*. But here the software is simply a means to an end. Ultimately I don't particularly want to run Application X on Platform Y, what I really want to do is to *get my data out*. One way to do this is to actually run Application X on Platform Y, but another way is to run Application Z instead which has access to X's data understands its data formats.

To me this seems more fundamental than freedom 0. It's freedom -1, if you like. It's about the freedom to *change* software whenever I feel like it. I demand this freedom to extract *my* data from *your* (hypothetical your) data store; retaining all the semantics, markup, and resolution; and not polluted by any excessive implementation artifacts. I demand to be able to do this at any time and without justification.

It's not about Free Software, it's about Free Data. I've [banged on](/archives/2006/12/26/atomexport) about this before, but with apparently little effect.

So **forget freedom 0, why don't people care about Free Data?**
