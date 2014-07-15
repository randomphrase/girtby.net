---
layout: post
status: publish
published: true
title: Pimp My XSLT
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "Deeply nerdy stuff here. I attempt to impress you all with my l337 XSLT
  skillz.\r\n\r\nSlicing and dicing iTunes playlists. Lets say you want to extract
  a list of files for the songs in a given playlist. Maybe you want to see which files
  are stored where. I dunno. Anyway, how would you do it?\r\n\r\n"
wordpress_id: 160
wordpress_url: http://girtby.net/2008/08/23/pimp-my-xslt
date: 2005-12-08 20:49:49.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1322
  author: Damien
  author_email: nj609eagle_CLEAR_OUT_@hotmail.com
  author_url: ''
  date: '2005-12-08 20:49:49 -0600'
  date_gmt: '2005-12-08 20:49:49 -0600'
  content: |-
    This is just about perfect for what I'v been looking to do.
    Still being new to XSLT how can I loop through each fo the xs:key items
- id: 1323
  author: koops
  author_email: tim.koops@gmail.com
  author_url: http://90kts.com
  date: '2005-12-08 20:49:49 -0600'
  date_gmt: '2005-12-08 20:49:49 -0600'
  content: Farken hot, love your work bro
---
Deeply nerdy stuff here. I attempt to impress you all with my l337 XSLT skillz.

Slicing and dicing iTunes playlists. Lets say you want to extract a list of files for the songs in a given playlist. Maybe you want to see which files are stored where. I dunno. Anyway, how would you do it?

<a id="more"></a><a id="more-160"></a>

If you're sane, you probably reach for Perl, Python or, my (and [everyone else's](http://radar.oreilly.com/archives/2005/12/ruby_book_sales_surpass_python.html)) new infatuation, Ruby, to digest the `iTunes Music Library.xml` file. These tools can slice'n'dice with the best of them. And for a quick and dirty hack, I'm right there with you.

But here's some food for thought. Check out the following XSLT script.

    <?xml version="1.0"?>
    <xsl:stylesheet version="1.0" id="stylesheet"
                    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      <xsl:output method="text"/>

      <xsl:param name="playlist" select="'Library'"/>

      <xsl:key name="playlists-by-name"
               match="/plist/dict/array[preceding-sibling::key[1]='Playlists']/dict"
               use="string[preceding-sibling::key[1]='Name']"/>

      <xsl:key name="tracks-by-id"
               match="/plist/dict/dict[preceding-sibling::key[1]='Tracks']/dict"
               use="integer[preceding-sibling::key[1]='Track ID']"/>

      <xsl:template match="/">
        <xsl:apply-templates select="key('playlists-by-name',$playlist)" mode="playlist"/>
      </xsl:template>

      <xsl:template match="dict" mode="playlist">
         <xsl:for-each select="array[preceding-sibling::key[1]='Playlist Items']/dict">
         <xsl:variable name="trackid" select="integer"/>

         <xsl:apply-templates select="key('tracks-by-id',$trackid)" mode="track"/>
        </xsl:for-each>
      </xsl:template>

      <xsl:template match="dict" mode="track">
        <xsl:value-of select="string[preceding-sibling::key[1]='Location']"/><xsl:text>
    </xsl:text>
      </xsl:template>

    </xsl:stylesheet>


Go ahead and try it! Save it to your iTunes directory as `playlist.xsl` (or whatever) and apply your favourite XSLT processor. MacOS users have `xsltproc` available by default:

    xsltproc --novalid playlist.xsl iTunes\ Music\ Library.xml

(To print a different playlist, use `--stringparam playlist "Other Playlist"`)

Now maybe I'm just deluding myself, but I think this is quite readable. For XSLT anyway. Here's what it's doing.

 * The `xsl:key` constructs are creating hash tables on the input document. As the names imply they are indexing playlists and tracks.
 * The `/` template is the "start" of the stylesheet, and it selects the playlist to process using the `key()` XPath function.
 * The "playlist" template iterates over the tracks which are referenced by ID. We look up the playlist items and iterate over them with the `xsl:for-each` construct. We select the track to process by again using the `key()` function.
 * Finally, the "track" template outputs the location.

The readability of all this is impacted by the `preceding-sibling::key[1]` stuff. And this is mainly because Apple chose to use a generic Property List vocabulary rather than one which is specific to iTunes. Incidentally, I came across [this blog](http://www.xmldatabases.org/WK/blog/1086_Cleaning_up_iTunes_plist_XML.item) which explained how to convert from a property list into a more comprehensible format. I happen to think that the property list is quite usable as-is, provided that you employ the use of `xsl:key` as above.

In fact, I think this use of `xsl:key` is the deal-maker. Some of the [other attempts to process iTunes Libraries with XSLT](http://www.google.com/search?q=XSLT+iTunes) don't seem to take advantage of this, and I think it really helps.

Notwithstanding the workarounds for the weird XML vocabulary, I would (again with my jaundiced eye) judge this to be quite a maintainable piece of code. If you had to change it to operate on a given album or a set of tracks from a genre, or even output a different field from each track, I'm guessing that this would be pretty easy, even for XSLT n00bs. Also if Apple decide to change the output format by (for instance) rearranging the fields inside a `<dict>` element or changing the whitespace, this script should still cope OK.

And it's fast. 3 seconds to write out all the files in my Library playlist.

OK so the point of all this is not to say that I am an XSLT god (although feel free to draw that conclusion), rather to show the expressiveness and power of the language. No, it's not suitable for every coding task, but I think it's a valuable tool to have in the arsenal. Particularly on MacOS X, where property lists show up everywhere. Including iTunes libraries.
