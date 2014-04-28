---
layout: page
status: publish
published: true
title: Content Export with Atom
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3626
wordpress_url: http://girtby.net/?page_id=3626
date: 2006-12-26 21:06:26.000000000 -06:00
categories:
- Uncategorized
tags: []
comments: []
---
Draft version 0.3, 2006-09-27

Alastair Rankine <alastair@girtby.net>

**NOTE**: This is a tentative proposal. Nothing is concrete, let alone implemented. I just wanted to
get something out there that people can mull over. Comments definitely appreciated, either in email
to me or the atom-syntax list, or in the [accompanying blog
post](/articles/2006/08/14/towards-a-common-blog-export-format)..

## Introduction

With the explosion in adoptation of software for weblogging and similar forms of online publishing,
there is now a significant quantity of content contained in the persistent storage formats used by
such software. This content cannot currently be extracted easily, as the storage formats are
typically either proprietary or undocumented or just rapidly changing. The effect on the user is
that it becomes a difficult proposition to migrate this content from one system to
another. Additionally, software authors are faced with a combinatorial explosion, where each new
system must understand all of the storage formats of those that came before in order to maximise the
potential to attract users from those systems.

What is needed is a common interchange format, which can be used when content authors migrate from
one system to another. This should allow the content to be represented with maximum fidelity and
minimise the amount of manual re-entry required.

The goal of this document is to specify how to adapt the Atom syndication format [RFC 4287] to make
it suitable as a common interchange format. Atom is currently deployed as a syndication format, but
with only relatively minor extensions and usage conventions, can be applied to the task of content
exchange between blogging engines. This was [originally envisioned as a goal for the Atom protocol][1].

### Scope

This document describes how existing Atom constructs can be used to represent content. More
specifically, it defines *conventions* for existing Atom constructs, but always in a manner that is
conformant to the letter and spirit of [RFC 4287] and derived standards.

The emphasis of this document is on the content stored by a given software system, and not its
configuration. In other words it is not anticipated that this export format entirely captures the
configuration of a given blogging system. For example, configuration of display themes, spam
protection, or database are deliberately excluded from this format. As a consequence, this format is
*not* deemed suitable for backup purposes for a given blogging system.

It is also assumed that media files referenced by links from within the content are not required to
be represented in this format. The same applies to resources refered to from "enclosure" links.

### Dependencies

This document is dependent on the following:

 * Atom syndication format (defined in [RFC 4287])
 * Atom threading extensions (defined in [RFC 4685])
 * Atom Publishing Protocol (currently in draft)

### Conventions

The `atom:` prefix is used to refer to the Atom namespace `http://www.w3.org/2005/Atom`.

The `thr:` prefix is used to refer to the Atom feed thread namespace
`http://purl.org/syndication/thread/1.0`.

The `app:` prefix is used to refer to the Atom Publishing Protocol namespace
`http://purl.org/atom/app#`.

The URL prefix `http://purl.org/syndication/export/` is temporary only, pending assignment. This is
used below to construct schemes for specifying certain information using Atom categories.

It is assumed that the implementation is already capable of generating Atom feed documents, and
hence described below are the differences between these documents and the blog export document. The
term "similar to feed" is used when a given Atom element should be populated in a similar manner to
an Atom feed document, and generally the differences will be listed.

The Atom feed thread extensions [RFC 4685] are preferred to represent discussions. However in the
absence of a complete implementation of these extensions, a workaround is provided below.

The Atom Publishing Protocol [APP-id] is referenced by this specification but a complete
implementation is not required by Atom export implementations. However some exported information is
specified using elements from the Atom Publishing Protocol, as referenced below.

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT",
"RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [RFC
2119].

## Atom Export Documents

An Atom export document is an Atom feed document, except that it contains entries for all content on
the blog. This includes all articles, published or unpublished. It also includes any managed pages,
comments, trackbacks and pingbacks. All such entries are included in the export document.

No ordering is specified for the individual content items in the feed, except where dependencies
exist between entries. The `thr:in-reply-to` element is used to define dependencies, as described
below. Thus, such elements SHOULD be used to refer to previous `entry` elements (in document order).

### Example

The following is an example of an Atom export document.

<typo:code lang="xml">
<?xml version="1.0" encoding="UTF-8"?>
<feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom"
      xmlns:thr="http://purl.org/syndication/thread/1.0"
      xmlns:app="http://purl.org/atom/app#">

  <title>Paula's Blog</title>
  <subtitle type="html">The Brillant Paula Bean</subtitle>
  <id>tag:example.com,2005:Typo</id>
  <generator uri="http://www.typosphere.org" version="4.0">Typo</generator>
  <link href="http://example.com/xml/atom10/export.xml" rel="self" type="application/atom+xml"/>
  <link href="http://example.com/" rel="alternate" type="text/html"/>
  <author>
    <name>Paula</name>
    <email>paula@example.com</email>
  </author>
  <updated>2006-08-07T07:15:35-04:00</updated>
  <app:categories app:fixed="yes">
    <category term="brillant" scheme="http://example.com/category/brillant" label="Brillant"/>
  </app:categories>

  <entry>
    <author>
      <name>Paula</name>
    </author>
    <id>http://example.com/id/articles/123</id>
    <published>2006-08-07T06:07:00-04:00</published>
    <updated>2006-08-07T07:15:35-04:00</updated>
    <title type="html">Get Paula</title>
    <link href="http://example.com/articles/get-paula" rel="alternate" type="text/html"/>
    <category term="brillant" scheme="http://example.com/category/brillant" label="Brillant"/>
    <summary type="html">I just wrote this brillant code.</summary>
    <category term="http://daringfireball.net/projects/markdown" label="Markdown"
              scheme="http://purl.org/syndication/export/contentsyntax"/>
    <content type="text" xml:space="preserve">I just wrote this *brillant Java code*. Have a look!

    public String getPaula() {
        return paula;
    }</content>
  </entry>

  <entry>
    <author>
      <name>Anonymous</name>
    </author>
    <id>http://example.com/id/comments/1532</id>
    <published>2006-08-07T06:07:30-04:00</published>
    <updated>2006-08-07T07:15:35-04:00</updated>
    <title type="html">WTF!?!</title>
    <link href="http://example.com/articles/get-paula#comment-123" rel="alternate" type="text/html"/>
    <link href="http://example.com/id/articles/123" rel="related" type="text/html"/>
    <category term="comment" scheme="http://purl.org/syndication/export/1.0" label="Comment"/>
    <thr:in-reply-to ref="http://example.com/id/articles/123"/>
    <content type="text">First post!</content>
  </entry>

  <entry>
    <author>
      <name>Daily WTF</name>
      <uri>http://thedailywtf.com/</uri>
    </author>
    <id>http://example.com/id/trackbacks/3123</id>
    <published>2006-08-07T06:07:30-04:00</published>
    <updated>2006-08-07T07:15:35-04:00</updated>
    <title type="html">Trackback from Daily WTF</title>
    <thr:in-reply-to ref="http://example.com/id/articles/123"/>
    <link href="http://example.com/articles/get-paula#trackback-3123" rel="alternate" type="text/html"/>
    <category term="comment" scheme="http://purl.org/syndication/export/1.0" label="Comment"/>
    <summary type="html">Paula shows off her brillant code</summary>
  </entry>

</feed>
</typo:code>

## Element Definitions

Unless stated otherwise, all elements are populated similarly to the feed.

### `atom:feed` Element

Populated similarly to the feed. The following differences apply:

 * An instance of an Atom Publishing Protocol Category Document SHOULD be included. This defines the
   list of valid categories which may appear in subsequent `atom:entry` elements.

 * An `atom:contributor` element is REQUIRED for each *defined* author. This MAY include registered
   users which do not have authoring privileges.

### `atom:entry` Element

Populated similarly to the feed. The following differences apply:

 * An `entrytype` category SHOULD be used to indicate the type of entry. For example, the
   `entrytype` category can be used to specify a static page instead of a regular blog article, or
   to disambiguate a trackback from a comment.

 * `atom:category` elements SHOULD be used similarly to the feed, but where these do not match the
   defined categories in the `atom:feed` element, they can be assumed to be "tags". See discussion
   for `app:categories` in [APP-id].

 * `app:control` elements MAY be used to indicate the control status for an entry. In particular,
   draft status may be indicated by the `app:draft` sub-element.

 * A `contentsyntax` category MAY be used to indicate a syntax for the content element. This MUST
   only be present when the `atom:content` element contains text (as indicated by the `text`
   attribute), and should be used only when a registered MIME type is not available. See further
   discussion below regarding `atom:content`.

Note that content may be inline or out of line, but the former is preferred for obvious reasons.

### `atom:content` Element

This SHOULD be populated with the "raw" content of the item, as it was originally entered by the
author. Note this differs from current syndication usage, where the "cooked" (typically HTML) format
is used, but it is intended to conform to the usage of this element within the Atom Publishing
Protocol.

For example, [Markdown]() and [Textile]() are both commonly-used syntaxes to enable the generation
of HTML using textual conventions instead of explicit markup. Although either of these can be used
to generate HTML, it is not (in general) feasible to reconstruct the original textual source from
HTML. Hence it is highly preferred that all Atom export implementations that implement custom syntax
for their content allow exporting in that syntax.

Registered MIME types SHOULD be used in the `type` attribute, as discussed in [RFC 4287]. Where
these are not available (such as for Markdown and Textile, as of this writing), the `contentsyntax`
category SHALL be employed (see below).

There is a potential for interoperability problems here. Specifically, if the syntax chosen by the
exporter is not recognised by the importer, or the target publishing platform itself. In this case
it is suggested that implementations support a "cooked" mode for content as well. This should be
indicated by a suitable MIME type for the `type` attribute, and the absence of the `contentsyntax`
category.

An `xml:space="preserve"` attribute MUST be used if whitespace is significant in the content. This
is necessary even when the signficance of the whitespace is unambiguously specified by a
`contentsyntax` category.

### `contentsyntax` category

This is an `atom:category`, constructed as follows.

 * The `scheme` attribute MUST be set to `http://purl.org/syndication/export/contentsyntax`.

 * The `term` attribute MUST be set to a URL uniquely identifying the syntax (or `autopara` as noted
   below)

 * The `label` attribute SHOULD be set to the name of the syntax.

For example, the Markdown syntax would be specified as follows:

<typo:code lang="xml">
<atom:category term="http://daringfireball.net/projects/markdown"
               scheme="http://purl.org/syndication/export/contentsyntax"
               label="Markdown"/>
</typo:code>

A special case is the commonly-encountered syntax which supports a subset of HTML, and additionally
inserts `<p>` and `<br/>` elements according to whitespace. This syntax is unlikely to be
standardised, nor be identifiable from a single URL, hence instead will be identified by
`term="autopara"` instead of a URL.

### `entrytype` category

This is an `atom:category`, constructed as follows.

 * The scheme attribute MUST be set to `http://purl.org/syndication/export/entrytype`.

 * The term attribute MUST be set to one of the following:

   * `page` for static pages;
   * `comment` for manually-entered comments;
   * `trackback` for trackbacks

 * The label attribute is optional and undefined.

When `comment` or `trackback` is used, it can be assumed that the entry contains feedback on a
previously-encountered entry.

## References

[RFC 2119] [Key words for use in RFCs to Indicate Requirement Levels](http://rfc.net/rfc2119.html)

[RFC 4287] [The Atom Syndication Format](http://atompub.org/rfc4287.html)

[RFC 4685] Atom Threading Extensions

[APP-id] [The Atom Publishing Protocol](http://ietfreport.isoc.org/idref/draft-ietf-atompub-protocol/)

[1]: http://www.intertwingly.net/wiki/pie/EchoVision

[Markdown]: http://daringfireball.net/projects/markdown/

[Textile]: http://www.textism.com/tools/textile/

## Acknowledgements

Thanks to Aristotle Pagaltzis and Scott Laird for their comments on drafts of this document.

## Revision History

 * **2006-09-27**: RFC 2119 conformance, various minor cleanups.

 * **2006-09-18**: Added requirement for `xml:space` in `atom:content` where necessary. Removed all
     `export:` elements, instead used APP and Thread extensions where appropriate, and category
     elements otherwise.

 * **2006-08-14**: Initial draft
