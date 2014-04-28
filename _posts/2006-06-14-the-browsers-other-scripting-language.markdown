---
layout: post
status: publish
published: true
title: The Browser's Other Scripting Language
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  You'd think that with all the excitement about AJAX and other new client-side (that is, browser-side) architectural focus that there would be a bit more lovin' for the other  browser-side scripting language besides JavaScript. But despite being [turing-complete](http://www.unidex.com/turing/utm.htm) XSLT isn't as widely talked about as its more glamourous sibling.

  Herewith some observations on the current sorry state of XSLT in the browser, which may point to the reasons for its neglect.









wordpress_id: 194
wordpress_url: http://girtby.net/2008/05/11/the-browsers-other-scripting-language
date: 2006-06-14 00:53:00.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1436
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-06-14 00:53:00 -0500'
  date_gmt: '2006-06-14 00:53:00 -0500'
  content: <p>Personally I’d be content to see a fully compliant implementation of
    XSLT 1.0 with complete EXSLT support.</p>
- id: 1437
  author: David Carlisle
  author_email: ''
  author_url: ''
  date: '2006-06-14 00:53:00 -0500'
  date_gmt: '2006-06-14 00:53:00 -0500'
  content: |-
    As a result, Internet Explorer cannot process the standard <?xml-stylesheet href="foo.xsl"?> processing instruction. IE doesn't know whether the foo.xsl referred to in this instruction is WD-xsl or XSLT 1.0, and it defaults to the former.

    Not so, IE (from version 6 up) can handle the PI fine (add type="text/xsl") it uses either xslt or wd-xsl depending on the syntax that it finds, specifically if the xslt namespace is declared in the top level element of the stylesheet.
---
You'd think that with all the excitement about AJAX and other new client-side (that is, browser-side) architectural focus that there would be a bit more lovin' for the other  browser-side scripting language besides JavaScript. But despite being [turing-complete](http://www.unidex.com/turing/utm.htm) XSLT isn't as widely talked about as its more glamourous sibling.

Herewith some observations on the current sorry state of XSLT in the browser, which may point to the reasons for its neglect.









<a id="more"></a><a id="more-194"></a>



#### Tree, Transform Thyself

XSLT is a language for transforming trees of input XML nodes into output trees. It is designed to allow templates to be constructed which are matched against patterns in the input tree. When a match occurs, the template is used to construct the relevant output tree. There's more to it than that, but at its heart XSLT is all about transformation of XML trees.

<img src="/images/xslt.png" height="369" width="526" alt="Diagram showing an XML tree being transformed" class="centered" />

When you first attempt to use XSLT it can be quite intimidating. The syntax itself is all XML and that introduces some complexity of its own, although it provides a perfectly natural way of specifying output tree templates. It takes some time to get your head around the fact that you're not specifying *how* the transform happens. Instead you get the best out of XSLT by specifying the *mapping* of outputs to inputs. XSLT has a lot in common with functional programming in this respect and others.

When it works well, XSLT is [almost elegant](/archives/2005/12/08/pimp-my-xslt/) (if I do say so myself). When it doesn't it can be downright byzantine, but let's not get ahead of ourselves.

Nonetheless I think the basic idea is pretty powerful. It also happens to fit in really nicely with the REST architectural style (at least as I understand it) and so is very web-friendly. Browser accesses the raw XML of a resource and locally transforms it to an HTML representation. It is even backwards compatible with Web 1.0.

#### When Good Transforms Go Bad

Sometimes XSLT can be very frustrating. Sooner or later you run into one of the many gotchas. For example, there is no way to group a given set of XML nodes (eg to find the unique nodes) and this requires a [hack](http://www.jenitennison.com/xslt/grouping/) to work around.

Another hack which is sometimes required is the use of the `node-set` extension function (or equivalent, sometimes known as `nodeset`). This is a bit technical but it basically allows the use of intermediate results.

In XSLT 1.0 there is a thing called a Result Tree Fragment. This can be assigned to a variable and manipulated in certain ways but it cannot be treated as anything other than a piece of (potential) output. In other words, you can't re-process it using templates or even explicit iteration. As the name implies, the `node-set` extension function is used to convert the RTF back into a regular node set which can be [used as an intermediate result](http://www.xml.com/pub/a/2003/12/03/tr.html).

This is an incredibly useful function that probably should have been part of the original XSLT 1.0 language specification. In XSLT 2.0 they acknowledged the usefulness of intermediate results by removing RTFs altogether, and allowing allowing node sets to be created directly within variable declarations.

As you might have guessed, the problem with the `node-set` extension function is that, well, it's an extension of the language. And thus subject to the whims of implementers.

#### Best Viewed in Internet Explorer

OK I'll come out and say it. Most of the major browsers support XSLT, but Internet Explorer is the *only* one that provides the `node-set` function.

Firefox? They use the Transformiix XSLT engine which doesn't provide the function. They've been thinking about it since 2003 and despite [having a patch](https://bugzilla.mozilla.org/show_bug.cgi?id=193678) they're still thinking. [**Update 31-Jan-2007**: Looks like they've stopped thinking and started committing. [Firefox 3.0 is the target.][1] ]

[1]: http://www.oreillynet.com/xml/blog/2007/01/limited_exslt_support_in_mozil.htm

Safari? Same story, although their XSLT engine is [libxslt](http://xmlsoft.org/XSLT/index.html) which [does](http://xmlsoft.org/XSLT/EXSLT/index.html) support `node-set` through the EXSLT standard extension library, but the WebKit guys [haven't found time to enable it yet](http://bugzilla.opendarwin.org/show_bug.cgi?id=4079).

Opera? [No XSLT at all](http://www.opera.com/docs/specs/#xml). [**Update**: OK Opera 9 has "near complete XSLT". Whether this includes `node-set` or not, I have no idea. **Further Update**: [Yep, it does][2] ]

[2]: http://my.opera.com/desktopteam/blog/show.dml/337199

I've [bagged Internet Explorer in the past](/archives/2005/10/07/internet-explorer-makes-me/), but on this particular (and admittedly fairly esoteric) feature, IE has it all over the competition.

#### Working Draft's Paradise

Of course it wouldn't be a Microsoft product if there weren't some frustrating limitations. Read the [full details](http://www.perfectxml.com/articles/xml/XSLTInMSXML.asp) yourself, but as I understand it, the situation is as follows.

Microsoft's XML toolkit is called MSXML and in previous releases they implemented an earlier draft of XSLT which is known as WD-xsl (WD for Working Draft). And it really was a draft because the early language bears very little resemblance to XSLT 1.0.

Being conscientious engineers that they are, Microsoft allowed MSXML installations to support both the old WD-xsl and the new XSLT 1.0 stylesheets. So far so good, but unfortunately they did not engineer it to automatically determine which type of stylesheet it was being asked to process. And to maintain compatibility with existing code, the WD-xsl language was chosen as the default.

<div class="aside">
<p>Maybe I should go looking for security vulnerabilities in WD-xsl, which if found might cause Microsoft to remove WD-xsl altogether?</p>
</div>

As a result, Internet Explorer cannot process the standard `<?xml-stylesheet href="foo.xsl"?>` processing instruction. IE doesn't know whether the `foo.xsl` referred to in this instruction is WD-xsl or XSLT 1.0, and it defaults to the former. In other words they broke an implementation of a standard in favour of an implementation of a draft standard. (Does all this [sound familiar](http://photomatt.net/2006/03/19/invalid-atom/)?)

#### "To Help Protect Your Security..."

So besides the standard XML Processing Instruction the next best way to invoke an XSLT 1.0 stylesheet in Internet Explorer is to do so from JavaScript. You do something like:

      function init()
      {
        // load XML source document
        var source = new ActiveXObject("Msxml2.DOMDocument.4.0");
        source.async = false;
        source.load("source.xml");

        // load XSLT stylesheet document
        var stylesheet = new ActiveXObject("Msxml2.DOMDocument.4.0");
        stylesheet.async = false;
        stylesheet.load("stylesheet.xsl");

        // transform the source using the XSLT stylesheet
        target.innerHTML = source.transformNode(stylesheet);
      }

(Code stolen from [perfectxml.com article linked above](http://www.perfectxml.com/articles/xml/XSLTInMSXML.asp))

Note the use of `ActiveXObject`. If you try to run this code, IE dutifully warns you about the potential hazards of ActiveX and the need to "protect your security" in a yellow  information bar. This is obviously death for websites that want to use XSLT. Bafflingly, it gives you this warning even when you run it locally from your disk.

Of course XSLT scripts are locally-executed and hence potential security hazards, so I don't want to trivialise the decisions that Microsoft has made here. But really it shouldn't be too hard to secure an XSLT implementation. Besides, JavaScript is far worse &mdash; both in terms of potential for, and history of, security vulnerabilities &mdash; and that isn't blocked.

#### Whither Browser-based XSLT?

So the reasons why we don't see more XSLT usage in the browser should be obvious. The outlook for the future doesn't look too great either.

IMHO the best solution is to charge on with [XSLT 2.0](http://www.xml.com/lpt/a/2002/04/10/xslt2.html). Microsoft have stopped developing MSXML but their .NET replacement is still under development. [Speculation is rife](http://netapps.muohio.edu/blogs/darcusb/darcusb/archives/2006/06/09/citation-formatting-in-word-2007) that they may be including XSLT 2.0 support. [**Update**: [confirmed](http://www.tkachenko.com/blog/archives/000590.html)] Also there is the Saxon XSLT engine, and early rumblings from the Apache Xalan crowd and Oracle. Although none of these are likely to be used in the browser, they may provide some impetus for XSLT 2.0 as a whole..

Come on Firefox guys, come on WebKit guys, come on Opera guys. XSLT 2.0 looks powerful and useful. Don't let Microsoft beat you to the punch - again.
