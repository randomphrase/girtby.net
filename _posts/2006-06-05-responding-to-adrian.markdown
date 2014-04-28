---
layout: post
status: publish
published: true
title: Responding to Adrian
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Regular readers are probably sick of me crapping on about WYSIWYG. I promise to shut up about it soon. In the meantime, I'm rather flattered to notice that a certain Adrian Sutton has taken the time to examine one of my earlier posts, namely [This Is What You See, This Is What You Get](/archives/2005/06/13/this-is-what-you-see-this-is-what-you-get/). He provides a [detailed and thoughtful analysis](http://www.symphonious.net/2006/05/12/the-challenge-of-intuitive-wysiwyg-html/) and I am grateful for this (next time send me an email or trackback though eh?)

  On a number of points it seems we disagree, so I will return the favour with a response of my own.







wordpress_id: 192
wordpress_url: http://girtby.net/2007/02/19/responding-to-adrian
date: 2006-06-05 23:14:33.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1425
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://oddthinking.somethinkodd.com
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Alastair,</p>

    <p>If I was going to attack the claim that Microsoft Word's diff tool is accurate, I would have tackled a completely different area to the one that you chose.</p>

    <p>I would start by pointing out Word's behaviour when editing tables, margins and the like.</p>

    <p>If you delete a row in a table, Word admits with a pop-up dialog that it cannot track the change. Structural changes to tables are both common and important content changes.</p>

    <p>If you change a table's width, Word silently ignores the change - it isn't included in the diffs. </p>

    <p>I know I am going to be seriously bitten by these shortcomings one day; I am just waiting for it to happen.</p>

    <p>I would also challenge Adrian's idea that changes can be sufficiently tracked while editing. </p>

    <p>Firstly, it ignores the case where changes are performed by external tools, which is a common enough scenario.</p>

    <p>Secondly, at least as Word implements it, it only provides a diff between the current document and the previous version <em>as determined by the author</em>. Diffs should be between the current document and the previous version <em>seen by the reader</em>. If you send me version 2.4 of a document, how can you know whether to send the diffs between 2.4 &amp; 2.3, or 2.4 &amp; 2.0, or 2.4 &amp; 1.0? Word is rather arbitrary on this point. I recommend to authors to store their documents with mark-ups <em>not</em> displayed by default - anything else will probably confuse and annoy more readers than it pleases.</p>
- id: 1426
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: <p>Excellent comments Julian. The reason I didn't include these examples
    in my response was that a) I wasn't aware of them, and b) they don't seem to be
    general limitations of WYSIWYG as much as specific limitations of Word.</p>
- id: 1427
  author: Richard
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Word's diff goes a little further, if you have access to <em>un</em>marked up copies of both versions of a document: you can use the Merge and Compare Documents feature to see what changed between any two versions of a document. Word will even prompt you to merge changes back into an original in some circumstances (which I haven't been able to reliably reproduce). Also, version control systems like ClearCase have plugins that use Word's diff tool to display changes to documents.</p>

    <p>However, if either document has any outstanding tracked changes, then the merge will fail. Considering some of these changes can be quite difficult to get accepted/rejected (they may not respond at all when you select "Accept change", so you need to "Accept All" to get accepted), and different versions of Word show and track different changes, this can make diffing documents unusually difficult. When used with ClearCase, for example, you either have to ensure every change is accepted and track changes is turned off before each checkin, or be prepared for rounds and rounds of pain in seeing what the hell your workmates just did.</p>

    <p>This, and the shortcomings itemized above, are showstoppers for me too.</p>

    <p>Even ignoring Word's fabulous diff features, it is often really quite difficult to use two people's basic page/paragraph/line number tracking even when these numbers may have come from identical copies of the document. This is because Word will reformat any document you open to match the fonts and page layout of your local system. Enabling line numbers (which should just be a change to the margins of a document) will also reflow the text, meaning that that paragraph at the bottom of page 5 may well move to the middle of page 6 <em>without any changes to the content</em>. Frankly, if you want to review a word doc at all, you have to use generated PDFs from that doc: PDFs at least look the same for everyone.</p>

    <p>Excel has also added diff support. However, I've noticed that it is no help at all when diffing two workbooks created by different people, or even two versions of the same spreadsheet when "Protect and Share Workbook" hasn't been enabled. Though large slabs of content from one workbook may have been added to the other, Excel refuses to diff the two. Add to that Excel's penchant for only allowing one workbook of a given name open at once, and you've got irritation aplenty. At least it has support for viewing two workbooks (that you have open simultaneously) side by side.</p>

    <p>And don't get me started on PowerPoint's commenting system...</p>

    <p>On the main topic, I still think full WYSIWIG/WISIWYG/whatever is possible, but that such editing for systems with invisible features, like hyperlinks in HTML, it's not. Maybe if it wasn't possible to (completely) conceal the URL of a hyperlink the system might improve?</p>

    <p>BTW Now that Julian's been trialling the Preview button on his blog for several months, with no audible complaints, could we get that feature here? Please?</p>
- id: 1428
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Richard: Wow, I had no idea Word and Excel were so broken. Admittedly it's a hard problem, but Microsoft seems to have scored so many own goals that you have to wonder what they were thinking. Anyway maybe my avoidance of WYSIWYG has had some practical benefit to as well as providing me with something to grumble about on the blog...</p>

    <blockquote>
      <p>it is often really quite difficult to use two people’s basic page/paragraph/line number tracking even when these numbers may have come from identical copies of the document. This is because Word will reformat any document you open to match the fonts and page layout of your local system.</p>
    </blockquote>

    <p>Right - and it is important to note that this is a general, practical, limitation of WYSIWYG and not just a specific limitation of Word.</p>

    <blockquote>
      <p>And don’t get me started on PowerPoint’s commenting system…</p>
    </blockquote>

    <p>Ooops, perhaps I <a href="http://girtby.net/archives/2005/05/19/more-powerpoint-ui-potshots/" rel="nofollow">already have</a>?</p>

    <blockquote>
      <p>BTW Now that Julian’s been trialling the Preview button on his blog for several months, with no audible complaints, could we get that feature here? Please?</p>
    </blockquote>

    <p>Your wish is my command, now that I have abandoned Hashcash as my anti-spam plugin.</p>
- id: 1429
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: <p>Adrian <a href="http://www.symphonious.net/2006/06/06/content-authoring-vs-site-design/"
    rel="nofollow">posts a followup</a> and thinks that we differ on the intended
    use cases for WYSIWYG HTML editors. I'm not so sure, but he's indicated there
    is more to come so I will wait for that.</p>
- id: 1430
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Richard, comment preview should be working now.</p>

    <p>I've tweaked it a bit, let me know what you think.</p>
- id: 1431
  author: Adrian Sutton
  author_email: adrian@symphonious.net
  author_url: http://www.symphonious.net
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Manual trackback since automatic trackbacks don't seem to work between my blog and yours - not sure why.
    <a href="http://www.symphonious.net/2006/06/11/on-the-importance-of-rendering-fidelity/" rel="nofollow">On The Importance Of Rendering Fidelity</a></p>
- id: 1432
  author: Adrian Sutton
  author_email: adrian@symphonious.net
  author_url: http://www.symphonious.net
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Another manual trackback, this time on the invisible tag problem:
    <a href="http://www.symphonious.net/2006/06/12/the-invisible-formatting-tag-problem/" rel="nofollow">The Invisible Formatting Tag Problem</a></p>
- id: 1433
  author: Adrian Sutton
  author_email: adrian@symphonious.net
  author_url: http://www.symphonious.net
  date: '2006-06-05 23:14:33 -0500'
  date_gmt: '2006-06-05 23:14:33 -0500'
  content: |-
    <p>Final installment:
    <a href="http://www.symphonious.net/2006/06/13/diffing-html/" rel="nofollow">Diffing HTML</a></p>
---
Regular readers are probably sick of me crapping on about WYSIWYG. I promise to shut up about it soon. In the meantime, I'm rather flattered to notice that a certain Adrian Sutton has taken the time to examine one of my earlier posts, namely [This Is What You See, This Is What You Get](/archives/2005/06/13/this-is-what-you-see-this-is-what-you-get/). He provides a [detailed and thoughtful analysis](http://www.symphonious.net/2006/05/12/the-challenge-of-intuitive-wysiwyg-html/) and I am grateful for this (next time send me an email or trackback though eh?)

On a number of points it seems we disagree, so I will return the favour with a response of my own.







<a id="more"></a><a id="more-192"></a>




#### The Ideal of WYSIWYG

Adrian starts off by recognising that WYSIWYG is more of an ideal than an objective property. He recognises that What You See is almost never What I See, but he goes on to assume that the differences will never be significant in any way:

> Actually, for most people things render pretty close to the same - most people don't notice any significant difference between a document that uses subpixel rendering and one that doesn't, screen resolution and display gamma are consistent enough as to not cause problems anyway.

This is a pretty broad, and in general wrong, assumption. In my article I provided an (admittedly rather contrived) example where the reader selects boldface type for display, completely obscuring the use of boldface type that the writer had chosen for emphasis.

Despite being at least vaguely aware of the possible differences that can arise between my system and yours, on too many occasions I have managed to shoot myself in the foot. Like [picking an unusual unicode character](/archives/2005/10/07/internet-explorer-makes-me/). Or my various ham-fisted CSS experiments. The point being that I often have no idea about how this site will look on other people's systems, and it sometimes *does* make a difference. A big difference.

> I edit all my posts for this blog in a WYSIWYG editor and view the result on many different devices, with many different browsers and operating systems and have never had a problem with the way it looks.

Testing that there are no differences between your editing environment and certain common viewing environments is of course laudable. Extending this to assert that there are no such differences for *anyone*, seems a bit, well, naive.

> If I had a reason to be exceptionally pedantic about the way things came out I wouldn't be using HTML.

I am however in complete agreement with this point. Indeed, and one of my objections to WYSIWYG for editing HTML is that it reinforces the illusion that What You See on your browser is What I Intended You To See. It emphasises a single possible representation of the HTML, and disregards all of the others, thus encouraging the inexpert user to believe that there is only one possible representation of their document. In this respect HTML differs from other uses of WYSIWYG, such as in a word processor.

The corollary of Adrian's statement is that if I happen to be using HTML, I shouldn't be pedantic about the way it appears. No argument from me, but this does seem to directly contradict the WYSIWYG ideal.

#### I, Emphasis

> [M]ost people tend to use the I tag instead of EM because they want italic and not emphasis. Any decent HTML editor will use (or at least have an option to use) EM when the user clicks the italic button, thus preserving intent and displaying correctly in nearly every situation.

I'm going to assume that he meant "button" or some UI widget instead of "tag". By definition WYSIWYG editors do not encourage users to edit tags.

So I agree that most likely people will hit the I button in order to make some text italicised. But does this reflect their true intent, or does it just reflect a widespread adoption of WYSIWYG word processors where there is no semantic markup?

WYSIWYG HTML editors hide the fact that there even *is* an underlying markup, let alone one that attempts to convey high-level semantics above mere formatting.

So I would say that when people hit the I button, they are mostly doing it to get emphasis. In other words, there is no way for them to put the correct semantic markup on the document, so they choose the nearest presentational markup. All perfectly reasonable, but still begs the question as to what should they do when semantic markup *is* available?

This exact scenario is one I've [pondered before](/archives/2006/01/22/wysiwyg-editors-forecast-calls-for-continued-suckage/).

#### The Outlook Example

In my original post I drew attention to the [invisible formatting tag problem](http://www.codinghorror.com/blog/archives/000583.html). Adrian takes me to task for using Outlook as an example.

> Let's not hold Outlook up as if it were even a reasonable attempt at an editor. It's probably the most awful editing experience you are ever likely to find. If you use Outlook, stick to plain text emails. Regarding the hyperlink complaint, that's most likely because Outlook automatically applies hyperlinks when you type an URL - this annoys a lot of people so they made it easy to remove the hyperlink again, by hitting backspace at the end of the hyperlink. This is just caused by the fact that Outlook's editor hasn't been carefully thought through and is just a bad example of a WYSIWYG editor - there's no reason it has to be like that.

The example I gave was to delete the final character of some hyperlinked text. The delete operation removes the internal formatting tag, and hence removes the hyperlink entirely, as well as the final character.

In this behaviour Outlook is no different to many other HTML editors, and is a completely appropriate example. The problem of the invisible formatting goes directly to the heart of the limitations of WYSIWYG editors. There is no visual representation of the `</a>` tag, so there are bound to be some surprises when the user starts editing in the vicinity of the tag.

I am also criticising Outlook, not as an example, but as a specific implementation. Outlook treats hyperlinks differently than other markup operations such as bold, underline, etc. This inconsistency is the reason for my criticism. Backspace over a character with bold formatting and it has no effect an any other formatting on the page. If the user sees an underlined word and deletes the final character, should they expect underlining for the entire word to disappear? Or only if the word happens to be blue as well? These bizarre corner cases do not make for happy users.

#### Diffing Hell

In my original post I probably should have explained why I thought diffing operations were yet another complication for WYSIWYG editors. In a nutshell, it is this: Certain types of markup has no visual representation, hence is difficult to annotate this markup in order to show common diffing operations (eg add, delete, change). When I change "millions" to "billions" in a WYSIWYG editor, Microsoft Word shows as the former crossed out in red and the latter in blue. How could I show that the URL of a given hyperlink has changed? Or that an HTML id attribute had been added?

> Diffing HTML is hard, very, very hard. However, it's not the HTML that makes it hard - it's the fact that the content is generally natural language. I don't think I've ever seen a wiki that can do a decent diff of content - they don't understand the natural language to be able to determine what the intent of the changes were and display them appropriately.

Well, no. But that's not what diffing is.

For a good introduction to diffing and the algorithms commonly used, see [OddThinking](http://www.somethinkodd.com/oddthinking/2006/01/16/comparing-strings-an-analysis-of-diff-algorithms/).

Diffing XHTML, and XML in general, *is* very hard but not because of natural language constraints. It's hard because the set of possible editing operations is expanded due to the hierarchal nature of the document. So in addition to the usual string-based edit operations we get to do things like prune/graft, operations on attributes, etc.

Some time ago I tried out Norm Walsh's [DiffMk](http://nwalsh.com/java/diffmk/index.html) XML diffing tool. It was slightly disappointing until I had an appreciation for the full complexity of the task. There is a lot of potential for academic investigation here. Especially as the major word processing formats are going to be using XML under the covers anyway...

> Amusingly the best diff ability I've seen is in a WYSIWYG editor - Microsoft Word. It has track changes so it knows exactly what you changed and how it happened so it displays the changes very accurately and doesn't lose the meaning of the changes in doing so. So if you want to improve the diff capabilities of your wiki, try an editor that will track changes to a document while it's being edited and forget about trying to diff after the fact. Your users will thank you for it.

This must be a different Microsoft Word than the one I've used. My version works as follows: insert a new paragraph in the middle of a numbered sequence of paragraphs. Watch Word mark all subsequent paragraphs as changed even though it is only the *automatically generated* number which has changed.

This goes back to actions versus intents that we were discussing earlier. While it is true that the numbers of all paragraphs after the one I insert has changed, it is not a semantically significant change. It is a change in the output, not a change in the input, and hence should not be counted as a change that should be tracked.

So I guess I disagree with the assertion that Word is a great diff tool. Hey, it can't even do three-way diffs; a show-stopping limitation, in my book anyway.

#### Slight Snarkiness

Lastly I can't help but recognise the mild irony of espousing the benefits of WYSIWYG HTML editors but, in the course of using such tools, completely failing to correctly display text that looks like an HTML tag:

>>  Consider the difference between the
and
>>
>> constructs in XHTML for example.

There's supposed to be the *text* `<br/>` and `<p>` in that sentence. Instead Adrian's HTML editor inserted the corresponding *tags*.

Oops!

#### Points of Agreement

There is much that Adrian and I agree on. Adrian acknowledges that WYSIWYG is an ideal to be approached rather than an attribute to be attained:

> In fact, I can't think of a single example of strict WYSIWYG - every editor I know has some form of special marking that doesn't display in the final output.

Exactly. In other words we seem to be in agreement that WYSIWYG is no longer sufficient for editing semantically-rich languages like HTML. This also comes up in other contexts:

> If you do however want to step outside the capabilities of the WYSIWYG editor, switch to the code tab and edit the HTML by hand.

He makes the point that WYSIWYG can make the crucial difference for newbies; faced with the choice of learning a WYSIWYG tool or an arcane markup language, they will almost always take the former choice. Again, no argument from me. I think we differ as to whether the WYSIWYG editor is accurately capturing the intent of the user. If not, then I would argue that the editor is not doing its job.

Again, Adrian thanks for a lengthy response.
