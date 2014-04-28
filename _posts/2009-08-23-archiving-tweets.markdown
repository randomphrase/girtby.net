---
layout: post
status: publish
published: true
title: Archiving Tweets
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  If you've run [Damon Cortesi's handy curl command](http://dcortesi.com/2009/07/16/for-wil-wheaton/) to download all (or the last 3200) tweets from your twitter account, you'll have a directory full of files with names like `user_timeline.xml?count=100&page=1`. Not only that but they include a large amount of redundant profile stuff in the `<user>` element. And not only *that*, but twitter sometimes returns a "Twitter is over capacity" page instead of your tweets.

  What we want to do is a) detect any files which don't contain tweets, b) remove the redundant user profile, and c) combine the results into a single file.

  Well, friends, here is a shell script to do exactly that. You'll need zsh and xsltproc, both of which are standard on MacOS X and most sane Linuxen.

  <div class="aside"><p>zsh is needed to sort the input files in numeric, as opposed to lexicographic, order. If you know of a way to do this in bash, let me know...</p></div>

  Output is on stdout, so just redirect to your filename of choice:

      $ tweetcombine user_timeline.xml\?count=100\&page=* \
          > tweet_archive.xml

wordpress_id: 3905
wordpress_url: http://girtby.net/?p=3905
date: 2009-08-23 23:14:05.000000000 -05:00
categories:
- Nerd Factor X
tags:
- twitter
- archive
- backup
comments:
- id: 14634
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2009-08-24 03:40:35 -0500'
  date_gmt: '2009-08-23 16:40:35 -0500'
  content: |
    <p>A weird sort of power.</p>

    <ol>
    <li>You can use <code>[01-32]</code> instead of <code>[1-32]</code> to get filenames with correctly sorting names and with the <code>-o</code> switch you can clean up the filenames further.</li>
    <li>You can download JSON rather than XML.</li>
    </ol>

    <p>Bottom line:</p>

    <pre><code>curl -k -u user:pass -o tweets-#1.json 'https://twitter.com/statuses/user&#95;timeline.json?count=100&amp;page=[01-32]'
    perl -MJSON::XS -E'@s=map{local@ARGV=$&#95;;@{decode&#95;json&lt;&gt;}}@ARGV;delete@{$&#95;}{qw(user source)}for@s;say encode&#95;json\@s' -- tweets-* | json&#95;xs
    </code></pre>

    <p>Tad easier…</p>
- id: 14638
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-08-24 10:31:48 -0500'
  date_gmt: '2009-08-23 23:31:48 -0500'
  content: |
    <p>A weird sort of easier:</p>

    <pre><code>% curl -k -u randomphrase:shh -o tweets-#1.json ...
    zsh: no matches found: tweets-#1.json
    % curl -k -u randomphrase:shh -o tweets-\#1.json ...
    [...]
    % perl -MJSON::XS -E'...' -- tweets-* | json&amp;#95;xs
    zsh: command not found: json&amp;#95;xs
    Can't locate JSON/XS.pm in @INC (@INC contains: ... )
    .
    BEGIN failed--compilation aborted.
    </code></pre>

    <p>Despite the snarky comment above, yes it does work nicely after installing libjson-xs-perl.</p>

    <p>Another nice to have would be to resolve shortened URLs - this is probably a lot easier to do in Perl than XSLT...</p>

    <p>BTW: Your comment was marked as "Very Spammy" by Defensio, and had to be manually rescued. This makes me sad.</p>
- id: 14641
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2009-08-24 16:14:21 -0500'
  date_gmt: '2009-08-24 05:14:21 -0500'
  content: |
    <p>I concede that <a href="http://search.cpan.org/perldoc?JSON::XS" rel="nofollow">JSON::XS</a> is less likely to be installed than libxslt.</p>

    <p>I started out with your stylesheet actually, but eventually I got to annoyed at all the effort that XSLT takes for very simple cases like this one.</p>

    <p>The deciding factor was JSON + dynamic language, so Ruby would work as well as Perl here; I guess it would look cleaner at the expense of a longer command. (Python’s not much for one-liners, however.) Of course you’d ultimately put this in a script, so that’s neither here nor there.</p>

    <p>As for the spamminess, that was probably because somehow all the underscores in my code block got turned into <code>&#95;</code> character references, and ASCII characters spelled as NCRs is a popular filter blinding technique. (On both sides of the war, actually – <em>we</em> use it <em>against</em> spammers too, c.f. <code>mailto:</code> hiding.)</p>
---
If you've run [Damon Cortesi's handy curl command](http://dcortesi.com/2009/07/16/for-wil-wheaton/) to download all (or the last 3200) tweets from your twitter account, you'll have a directory full of files with names like `user_timeline.xml?count=100&page=1`. Not only that but they include a large amount of redundant profile stuff in the `<user>` element. And not only *that*, but twitter sometimes returns a "Twitter is over capacity" page instead of your tweets.

What we want to do is a) detect any files which don't contain tweets, b) remove the redundant user profile, and c) combine the results into a single file.

Well, friends, here is a shell script to do exactly that. You'll need zsh and xsltproc, both of which are standard on MacOS X and most sane Linuxen.

<div class="aside"><p>zsh is needed to sort the input files in numeric, as opposed to lexicographic, order. If you know of a way to do this in bash, let me know...</p></div>

Output is on stdout, so just redirect to your filename of choice:

    $ tweetcombine user_timeline.xml\?count=100\&page=* \
        > tweet_archive.xml

<a id="more"></a><a id="more-3905"></a>Here's the script:

    #!/bin/zsh

    # Combine all of the twitter user_timeline.xml files specified on the command line into a single output
    # Written by Alastair Rankine, http://girtby.net
    # Licensed as Creative Commons BY-SA

    input_args=()
    for f in ${(on)*}; do
        [[ -f $f ]] || exit "Not a file: $f"
        input_args+="<input>${f//&/&amp;}</input>"
    done

    xsltproc - <<EOF
    <?xml version="1.0"?>
    <!DOCTYPE inputs [
      <!ATTLIST xsl:stylesheet id ID #REQUIRED>
    ]>
    <?xml-stylesheet type="text/xml" href="#style1"?>
    <inputs>
      ${input_args}

      <xsl:stylesheet id="style1" version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

        <xsl:output type="xml" indent="yes"/>

        <xsl:template match="*">
          <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
          </xsl:copy>
        </xsl:template>

        <xsl:template match="statuses">
          <xsl:apply-templates/>
        </xsl:template>

        <xsl:template match="user"/>

        <xsl:template match="xsl:stylesheet"/>

        <xsl:template match="input">
          <xsl:choose>
            <xsl:when test="document(.)/statuses">
              <xsl:apply-templates select="document(.)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:message terminate="yes"><xsl:value-of select="."/> does not contain statuses element</xsl:message>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:template>

        <xsl:template match="inputs">
          <statuses type="array">
            <xsl:apply-templates/>
          </statuses>
        </xsl:template>

      </xsl:stylesheet>
    </inputs>
    EOF

I think this method of sticking filename arguments into an XSL document with an embedded stylesheet is quite a powerful way of processing XML documents with shell scripts. (Probably should put the `<input>` tags into a separate namespace though...)
