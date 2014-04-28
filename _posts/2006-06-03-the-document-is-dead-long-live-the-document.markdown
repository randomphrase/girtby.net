---
layout: post
status: publish
published: true
title: The Document Is Dead ... Long Live The Document
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  The pitch: Certain human interface elements are metaphors for real-world objects. However the metaphors have been extended so far that the interface elements now have widely-understood semantics far beyond their real-world counterparts.

  In this post I'm going to pick on a specific example: the document. Yes, those icons of a piece of paper with the top right corner folded down, are everywhere. The document is a user interface metaphor which is very common in modern operating systems. And like most metaphors they have been stretched. But more importantly, has the document outlived its usefulness, or can it be extended into the world of Web 2.0 and beyond?





wordpress_id: 191
wordpress_url: http://girtby.net/2007/03/09/the-document-is-dead-long-live-the-document
date: 2006-06-03 16:05:11.000000000 -05:00
categories:
- Nerd Factor X
- Me Use Brain
tags: []
comments:
- id: 1418
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    <p>One problem is that it's not very clear in the user interface, and particularly since Web 2.0, as to whether a window is a read only view of a "document" (project, whatever), or whether you can change the stuff in the window and subsequently have it transmitted to the store.</p>

    <p>That little dark area in the red dot (in a MacOS Aqua window) is a pretty subtle way of saying what you are viewing is different to what's in the store. And of course all these RSS readers need to be "refreshed" do get the read only view back in sync with the remote store.</p>

    <p>Web "browsing" sounds rather passive.</p>

    <p>The old concept of a document is also a little dated now that documents are collections of data of multiple types. There was a day when a document was .jpg and all it contained was an image, but now documents can be .pages and contain rich text, movies, sounds, images, and who knows what else. Each of those sub-documents may need to be edited.</p>

    <p>I don't like what Apple's been doing with these rather hidden project bundles. I created a site in iWeb, for example, and when I wanted to move it to another machine I had to go hunting for it in /Users/marxy/Library/Application Support/iWeb/Domain</p>

    <p>We still need a "document" icon we can double click on, drag to a key drive, email to someone, and drop in the trash. Perhaps it's time for a better name than document.</p>
- id: 1419
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    <p>Excellent comment marxy. I hadn't considered the issue of indicating read-only/read-write permissions to the user.</p>

    <p>You also bring up the issue of what to do when the user trashes a web document. Are they deleting the local reference and cached content, or do they really want to delete the web-based version as well? The document metaphor is looking less and less useful in this situation...</p>

    <p>Creating a better name than document sounds like a great idea but I have no suggestions.</p>
- id: 1420
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    <p>I guess the local "document" is a proxy for the remote site.</p>

    <p>The nextstep/apple concept of a "bundle", which is a directory full of files that looks to the user as if it's one object (through a trick of the Finder and open/save file dialogs).</p>

    <p>Seems to me it would be good to actually make these bundle directories into some kind of jar file so they could be really managed as a single object by the user.</p>

    <p>Project seems to be a good name for describing the "thing" you are working on.</p>

    <p>Great thread here alastair.</p>
- id: 1421
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    <p>marxy, I must admit that I was a little confused as to why you were focused on the file format, until I realised that perhaps my description of the Web Doc as containing a cached copy of the web data may have thrown you off.</p>

    <p>Let me have another stab at this. Lets say we have a blog, and want to create a document-based metaphor for editing it. So first we would need to look at the data model of the blog and pick an appropriate object from which to create the document. For example, each post on the blog could be a separate document.</p>

    <p>So now we're creating a blog editing application which will be associated with these documents. It will use a protocol like Atompub for communicating with the server. However the contents of the document on disk can be unrelated to this protocol. The document could consist of a collection of XML and image files inside a MacOS bundle, or a Jar/Zip file, or whatever. However it could be something else - a binary format which is specific to that application for example.</p>

    <p>To my mind the Web Doc would contain information in an application-specific format, and not (necessarily) XHTML that you see in a browser window. I'm not proposing taking a slice of the browser's cache and making it an independent entity in the filesystem, although that may be appropriate for some applications.</p>

    <p>This idea could be implemented in a world filled with last century client/server database applications. Just take a slice of the data and serialise it to a local file, synchronise it to the server appropriately, and there you have it. The data lives in the database, and is "loaned" out to documents.</p>

    <p>Does that make any sense?</p>
- id: 1422
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    <p>Yep. So maybe the on local computer document should have nothing in it except a url and all the actual content should live on the server?</p>

    <p>I guess I'm a bit hung up on implementation from the programmer's perspective.</p>
- id: 1423
  author: Rob
  author_email: rob.theplacid@verizon.net
  author_url: ''
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    It took me awhile to actually figure out what you were saying, but I think I finally got it. You're advocating storing parts of larger documents in a local cache, which can be edited locally and/or refreshed from the internet.

    I think these two ideas are completely independant of each other, but they each make a certain amount of sense. Microsoft seems to agree because they bought Onfolio (a company that made a web research tool) and integrated their product into the free Microsoft Live Toolbar (which I have installed, but haven't had an oppertunity to use).

    As for holding documents in a local cache... IE and Mozilla have long let you sycronize your bookmarks for offline reading. Mozilla's upcoming live bookmarks (I think) is going to push this idea even further, and I've read promises that JavaDB will let you run web applications from offline caches as you would from the server.

    So I think the core of what you're saying makes sense.

    BUT I fail to see what this has to do with the document metaphor.

    The advantage of redefining documents from a user's point of view IMHO is nill. The link to caseyporn made some good points, and this type of view will probably have a great affect on the development of file sytem-content management system hybrids in the near future, but none of abrogates the need for documents.

    See, the reason we need documents it because a "document" is basically just another name for "data file". You can't get around it. It doesn't matter if your blog entry is stored in a database on the server side, it reaches the browser in the form of a (x)HTML file. You can save it if you want a record of it, you can print it out, you can do whatever you want. That's a document. It can embed other kinds of documents inside it- pictures or audio or whatever. They're stored in files too.

    The only time you really work with documents without going through some pseudofile-like structure are when you play media which are protected by DRM that prevents you from outputting the content. And that's an artificial limitation, not one imposed by the interface or for technical reasons. And presumably once the data stream's in the media player's memory, it'll treat it the same as any document it loads from a file, so it's still a document.

    Marxy said, "So maybe the on local computer document should have nothing in it except a url and all the actual content should live on the server?"

    How is that different from a file server? Why not link to it directly? What do you gain by redirecting from a file on the client? I find the concept of hard linking to a file on a network intriguing, but I can't see what that has to do with the concept of a document. Your idea of storing a blog independant of it's representation on the server seems (to me) even more illogical. If it's going to be sent to your browser in HTML, why not author it in the same format?

    Which actually is a pet peeve of mine. Maybe there are technical reasons that just zip over my head (it wouldn't surprise me) but I don't understand why web message boards and wikis filter messages through proprietary markup languages. But that's kind of side issue which doesn't directly deal with the issue at hand.
- id: 1424
  author: Steve
  author_email: nzcalling@gmail.com
  author_url: http://pawprintz.memebot.com/
  date: '2006-06-03 16:05:11 -0500'
  date_gmt: '2006-06-03 16:05:11 -0500'
  content: |-
    Re Printing & all that:

    I've Just read (or at least tried to read - I'm not that technical really) your article "The Document Is Dead ... Long Live The Document".

    It interested me mainly because I wanted to invent that sentence, but you or someone else has already done that. Not to worry.

    I sat through 4 hours yesterday of Microsoft employees tell me how great Microsoft was & showing the assembled Auckland throng of 200 the latest, greatest version of Microsoft Windows (Vista) & Office (2007).

    Now, without a doubt, the User Interface is pretty & the graphics are cool, the search features are great & the documents that the unsophisticated user can now create in word are very impressive. Ill also note that the fierce integration with the back end (Sharepoint Server) now means that Microsoft is serious about helping it's customers manage those millions of documents created each day.
    What really struck me though is that it's clear the Microsoft now has no more interest in '*.doc', the standard document format.
    The document, in Microsoft's eyes anyway, appears to be dead. Those of us with even a minimal understanding of computing will know that the document has been a core profit centre at Microsoft for a long, long time. They've helped people create documents & share documents since the dawning of the Windows era & before. Historically , once a person had bought Microsoft software, Microsoft really didn't care what people did with their documents. You could print them, save them someplace, you could e-mail them or whatever. Microsoft seemed accepting of the fact that documents created in Microsoft software were just that, digital documents maybe, but nonetheless, just isolated repositories of information out there for you to do whatever you wished. Delete even.
    Now though, through this thing called XML (the new file extension format. . . +more), the document is alive & connected. My limited understanding is that any XML document is a Window to the world. The digital world can see inside & XML can interact & publish itself dynamically with connected systems. This would appear to be a paradigm shift. Let me explain my thoughts.
    The average office worker up until now could be happy & comfortable that his document was anonymous on the network. He could protect his turf, hide his knowledge, pull the wool over his bosses eyes by keeping his documents buried in the shared drive & giving it an irrelevant name. Certainly, in the last few years, some enterprises have installed document management to 'help you' contextualise your documents but, as far as I know, you always had the option to ignore that software's prompts & save your document as 'anonymous46464.doc' someplace.

    From now on, based on what I've seen of Microsoft's new software, there is no hiding places for your data. If you create a document in 'Office 2007' & save it to a network drive, Microsoft have embedded many technologies in the software infrastructure to make the data in your document transparent to everyone. Basically, by using 'Office 2007' to create documents in an enterprise environment you may as well be using a web authoring tool & publishing that document on the intranet.
    Let me expand on this: Microsoft, with their great 'Word' software have abandoned the freestanding document. As far as I know, Microsoft have a good idea of where we are all headed as regards information sharing, technology etc. Should we therefore abandon the free-standing, isolated document as a repository of information in business?
    Does this mean that the printed invoice is dead? The notion of printing any business documents is dead? Has our world & the information buzzing around it just become too dynamic to capture in snapshot format (the printed document)?

    Please allow me pose some questions to the readers of this blog.

    Has the static document, either in digital or analogue format arrived at it's use by date? ie: Should MS Office be resigned to the technology trash-heap. I'm not picking on Microsoft here, believe me, in my view Microsoft create great software for the market, it's just that they don't create markets & the market has moved on.
    Should we restrict the deployment/usage of freezers (printing devices) in the enterprise? explanation: A printer freezes data, takes only a snapshot of data at a particular moment. Business today is far too dynamic to allow freezing devices stiffen the wheels of commerce.
    Should be ban filing cabinets & restrict the distribution of paper in the enterprise.
    Consider the cost of providing print appliances in an enterprise. What does any business accomplish by deploying multitudes of printers & copiers in their business. What value do they add?
    I propose that printers & copiers significantly impede the 'flow' of information in an enterprise. They create static snapshots of data that are not easily adjusted & re-introduced to the digital workflow. What do the readers of this blog think of this proposition?
    Thank you Girby for allowing me to impose on your discussion. Steve.
---
The pitch: Certain human interface elements are metaphors for real-world objects. However the metaphors have been extended so far that the interface elements now have widely-understood semantics far beyond their real-world counterparts.

In this post I'm going to pick on a specific example: the document. Yes, those icons of a piece of paper with the top right corner folded down, are everywhere. The document is a user interface metaphor which is very common in modern operating systems. And like most metaphors they have been stretched. But more importantly, has the document outlived its usefulness, or can it be extended into the world of Web 2.0 and beyond?





<a id="more"></a><a id="more-191"></a>




#### Cues From The Analogue World

We all-know what a dead-tree document is in the analogue world (you know, the world outside the computer). The idea is that computer documents should be similar to these in most respects, in order to maximise usability. You write dead-tree documents, send them to people, file them, forward them to colleagues, or fold them into paper aeroplanes... and so it shall be for electronic equivalents.

<div class="aside">
<p>I've always liked apps like Apple Mail which use paper aeroplanes as icons for various email actions. It just seems more appropriate than the envelope and letter metaphor, somehow. Or may be just because it reminds me of playing <a href="http://homepage.mac.com/calhoun/Glider%20PRO.html">Glider</a>. Ahh, happy memories.</p>
</div>

The only problem is that there are things you can do with electronic documents that you can't do with paper ones. Like, save them, for one thing. Where does that fit into the metaphor? (Unless you count "saving" a paper document as not throwing it in the bin).

But this is OK, the metaphor is only intended as a leg-up to help newbies understand user interface concepts. Or as Tog [puts it](http://www.asktog.com/basics/firstPrinciples.html#metaphors), <q>Good metaphors are stories, creating visible pictures in the mind</q>. It shouldn't necessarily constrain us as user interface designers. Obviously we don't want to break the metaphor entirely, but it is inevitable that a user interface entity will perform many more functions than the real-world counterparts.

<div class="aside">
<p>Of course, sometimes the metaphor is broken in hilariously bad ways. In MacOS pre-X you ejected a disk by putting it in the trash can. In Windows today you apply wallpaper to your desktop. It makes sense until you think about it. Wallpaper. On the desktop.</p>
</div>

Here be usability dragons. For example, there are folks like Tog who think that the Save function [shouldn't have been invented in the first place](http://www.asktog.com/basics/firstPrinciples.html#protectUsersWork). For the record, I agree, but would argue there are even [better ways of managing changes to documents](http://caseyporn.com/blog/archives/000909.html).

So given that the idea of a document as a user interface no longer corresponds to a physical document, it seems only natural to ask what the hell *is* it? More precisely I'd like to define exactly how the analogue world document metaphor has been extended into the world of the computer user interface. This is important because the definition leads to consistency and, ultimately, usability.

#### What a Document Isn't

So if we Google on the definition of a document (with respect to user interfaces) we get about a million hits, none of them relevant. The term document is just too widespread.

Julian points at the definition of a document that you'll find in the [.NET API documentation](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vsintro7/html/vxlrfDocumentObject.asp):

> A Document object represents each open document or designer in the environment -- that is, windows that are not tool windows and have an area to edit text.

Wow, they really did write that. That's far worse than the worst definition of a document that I could think of. They seem to be saying that documents are a specialisation of window. There are of course many ways to refute this, but one obvious way is to point at the multiplicities between documents and windows. A document can be rendered in more than one window, thus showing that a document is not a window.

Let's look elsewhere elsewhere.

#### Back to basics

<div class="aside">
<p>The remainder of this post is unashamedly Mac-centric. This is partly because of my background as a Mac programmer, but mostly because I think everyone else basically followed Apple's lead on this important innovation.</p>
</div>

First a bit of history: [MacApp](http://developer.apple.com/tools/macapp/) was an application framework for MacOS (surprise!). It pioneered, or at least popularised, many object-oriented design patterns. It is widely cited, including in the hugely-influential [Gang of Four book](http://en.wikipedia.org/wiki/Gang_of_Four_(software)), if you look closely.

MacApp was also designed to support development of applications that were fully compliant with the Apple Human Interface Guidelines at the time. So without further ado, let's take a walk down memory lane, with the <a href="http://developer.apple.com/documentation/mac/MacAppProgGuide/MacAppProgGuide-58.html#HEADING58-0">Programmer's guide to MacApp</a>:

> Most Macintosh applications use the document as a repository for data, both in memory and on disk. When a user double-clicks a document's icon or chooses Open from the File menu, the application opens the document, reads its data into memory, and opens a window to display the data. When the user closes the document, the application saves the data to disk if it has changed.
>
> Documents are closely associated with windows. Opening a document usually opens one or more windows to display the document's data. Closing a window may close its associated document--closing a document always closes any associated windows.

Despite its age, I think this captures most of what we mean when we think about documents, even in today's computing environments. Hey, it's a start anyway.

<div class="aside">
<p>Tog <a href="http://www.asktog.com/basics/firstPrinciples.html#humanInterfaceObjects">says that</a> <q>human interface objects are not necessarily the same objects as found in object-oriented systems.</q> A good point in general, but I think that in this case there is a high degree of overlap between the O-O framework's concept of a document, and that of the HI. I offer no real justification for this.</p>
</div>

To summarise: a document is a persistent store of data. The data can be loaded into memory, manipulated, and then stored again. Manipulation of document data is done through one or more windows.

I think this is a pretty good definition of a document an in the early 90s it would have been unquestioned. However the world has moved on since then.

#### Document-centric computing

The document metaphor was very successful on the Macintosh. So successful, in fact, that the document metaphor was thought to be suitable for all data, and hence all interactions on computer systems. This is how [OpenDoc](http://en.wikipedia.org/wiki/OpenDoc), and the more general idea of Document-centric computing, was born. It seems a bit naive, but I confess I was a believer at the time.

The idea was that emphasising the document over the application was a usability win. The stated justification was that it allowed the user to focus on their data rather than the software. OpenDoc mainly consisted of a fantastically complex framework to manage access to the document canvass by the various "part editors". It was kind of like Windows OLE, but better. (Well, better conceived, if not better executed.)

With hindsight, it all sounds impossibly idealistic. Even in the early days there were questions as to how the document metaphor could be made to fit applications that were mainly clients for a central database. Short answer: it couldn't. Then came the web.

Apple had an OpenDoc-based web browser called (I am not making this up) [CyberDog](http://en.wikipedia.org/wiki/CyberDog). It allowed a web page to be embedded in a document. All of the same usability problems for document-based database applications applied to CyberDog.

Now obviously OpenDoc suffered from many implementation problems but I think that with the advent of the web, the entire concept of document-centric computing was fatally flawed. Embedding a browser into a document? Why would anyone want to do that? Sure, embed *content* from a web page, but not an entire browser frame surely? It just doesn't seem to fit into our real-world ideas of documents.

On OddThinking I made an [offhand comment](http://www.somethinkodd.com/oddthinking/2006/03/28/settling-up-the-tabs/#comment-3292) to the extent that "browsers don't use documents" and proceeded to [justify it](http://www.somethinkodd.com/oddthinking/2006/03/28/settling-up-the-tabs/#comment-3352) by defining documents in terms of persistent storage and author-specified content, neither of which is true for browsers today. The persistent storage criterion originated from the MacApp definition above. And the author-specified content? That was my goofy way of saying that CyberDog was a dog.

<div class="aside">
<p>This post started as yet another extended comment on OddThinking. Then I realised that I was spending far too much time writing comments over there, and not putting effort into my own blog. Rather than risk girtby.net becoming jealous (or over-anthropomorphised) I  posted my reply here. Besides, we'd gotten off the original topic anyway.</p>
</div>

#### What has it done for us lately?

So document-centric computing waned just as the web started to wax. Fast forward to 2006. I look at my OS X installation and notice that document-centric applications are definitely the exception rather than the rule, at least for the applications that I use. Looking down my dock, I see three browsers, NetNewsWire, Apple Mail, a couple of IM apps, iTunes, iPhoto, iCal, Address Book, Interarchy, Terminal, MarsEdit and a couple of text editors. How many document-centric apps there? Two, if you count the editors.

OK, I admit I'm not a typical user. I dislike WYSIWYG, so I'm not a fan of traditional document-editing applications like word processors. So instead, let's look at the apps in the [iLife suite](http://www.apple.com/ilife/). *None* of them are traditional document-based applications, although three of the six operate on what I call a project metaphor (missing, crucially, the Save function that would make them a document-based application).

Let's face it: documents are not an important user interface metaphor in the MacOS world any more. Just look: the current revision of the [Human Interface Guidelines](http://developer.apple.com/documentation/UserExperience/Conceptual/OSXHIGuidelines/index.html) has no mention of them, other than to say "here is the type of window you should use when displaying documents".

#### A Document? That's soooooo pre-Web 2.0

Has the web killed the document star? If not, *will* the web kill the document?

Lets say you had some content you wanted to have reviewed by your colleagues. The document-centric way (or *workflow* if you want to get all jargony) of doing this is, of course, to package up the document into an email and send it off to the reviewers. They would annotate and send back to you. You'd then merge the comments and act on them.

I think this highlights an important attribute of the document: it is not just a delivery mechanism for content, but also a token which grants the possessor a certain role in a given workflow. You ship me the document, and I get to approve it, review it, or whatever. Just like a real world document, I then ship it back to you.

The web-centric way of doing this is to publish online and invite the reviewers to either annotate the content directly (technology willing) or provide comments online. This is not too far away. The problems of delivering these workflows to the web are being worked on, and are [not too far away](http://db.tidbits.com/getbits.acgi?tbart=08489).

#### Hybrid web-desktop documents

In previous posts I've [banged](/archives/2005/09/06/ical-ucal-we-all-cal/) [on](/archives/2005/01/12/gooey-or-webby-or-both/) [about](/archives/2005/11/23/macos-x-essentials/) the advent of hybrid web/desktop applications. These are basically applications that are mainly accessed through a desktop-based user interface, but also through a web-based interface when necessary. The examples that I've seen so far have not chosen to use a document metaphor.

However, I can see that a document metaphor would be a great *addition* to web-based applications. Lets call them Web Docs. They might work in the following way:

 * Each Web Doc would be associated through a file extension (or [whatever](http://arstechnica.com/reviews/os/metadata.ars)) to a hybrid web/desktop application. The traditional document operations such as New, Open and Close would all work as they do currently.
 * The Web Doc would contain a URL for a subset of the data on the web application. So if the web application were a blog, the Web Doc would contain a URL for an individual post on that blog.
 * The Web Doc would contain a cached copy of the most recent version of the data on the web. This would be used for offline editing, increasing performance, or whatever.
 * The Save operation would be reserved for uploading local changes to the web version. Of course there is the potential for conflicts here, and these need to be resolved, unlike current documents.
 * The Revert to Saved operation would trigger a download of any changed data from the server to the Web Doc. Maybe this could be triggered automatically?
 * Creating a Web Doc could be done from within the appropriate application, or by a fairly simple enhancement to the browser. When the user drags a link (either from the location field or the page itself) to the desktop, current browsers create a "generic" URL document. In the Web Doc world, they should instead first perform an HTTP HEAD operation on the link, determine the mime type of the resource and then create a document containing this URL, but associated with the correct application for the mime type.
 * As a consequence of the previous point, this raises the possibility of "unpopulated" Web Docs. These have a URL for the data but no local cache. This implies that the data URL should be conveyed in file system metadata rather than in the document content itself, otherwise a common file format would be needed across all Web Doc-aware applications.

There are many consequences, and admittedly I haven't thought them all through. Like the fact that the Web Doc idea is dependent on the document metaphor surviving in an environment of multiple authors. And the need for authentication to decoupled somehow from the data (perhaps mandating a system-wide credentials repository like Keychain?). And the need to resolve confusion between local access controls and access controls for the web-based content. And, well, lots of other stuff I'm sure.

The key goal here would be to enable document-like behaviour for web-based content. That's  a pretty powerful combination if you ask me.
