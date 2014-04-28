---
layout: post
status: publish
published: true
title: Blog Tinkering
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1773
wordpress_url: http://girtby.net/2007/11/06/blog-tinkering
date: 2007-07-09 10:59:00.000000000 -05:00
categories:
- Meta
- Linkpimpin'
tags: []
comments:
- id: 1595
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2007-07-09 10:59:00 -0500'
  date_gmt: '2007-07-09 10:59:00 -0500'
  content: “Sir, we finally found the WMDs! They’re in Alastair’s blog.”
- id: 1596
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-07-09 10:59:00 -0500'
  date_gmt: '2007-07-09 10:59:00 -0500'
  content: |-
    Thanks to all who emailed to point out that the monthly archive links are broken. You'll each be getting a $1000 reward for your diligence.

    I can fix them, but unfortunately my fix seems to also break comments. But only on the production server, not on my local server. Such are the mysteries of the Mephisto dispatcher I suppose.

    More info to be posted here as I dig deeper.
- id: 1597
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-07-09 10:59:00 -0500'
  date_gmt: '2007-07-09 10:59:00 -0500'
  content: OK, archives and comments seem to both be working. And hopefully nothing
    else is broken.
- id: 1598
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-07-09 10:59:00 -0500'
  date_gmt: '2007-07-09 10:59:00 -0500'
  content: Oops. Looks like "/articles/y/m/d/slug" style links were broken. Hopefully
    fixed now.
---
Some blog updates, the details of which will no doubt enthrall and excite very few of you.

#### Invisible Changes

Under the covers, the entire girtby site (such as it is) is now stored in an [SVK](http://svk.bestpractical.com/view/HomePage) <del>repository</del> depot. SVK is a great little distributed version control system built on top of Subversion. I want to say more about it in future, but for now it is really helping me maintain this site.

I use it like this. First I set up local mirrors of various Subversion repositories. The mephisto repository, the 1-2-stable branch of rails, and the repository for my one and only plugin. With a single `svk sync -a`, I can download the most recent changes in all of those repositories, and access it locally.

So then I copy the source from each of these repositories into a new local branch. Any changes I make on this local branch are, of course, isolated from the mirrored sources that I just downloaded.

When time comes to update, I can just merge across from the appropriate mirrored repository into my local branch. The really cool thing is that this merge is generally painless because SVK manages to *track merge points* (a well-known limitation of Subversion). This means it can do a three-way diff and hence get the merge right ninety-nine times out of a hundred. Plus the Mephisto codebase has *extensive* unit tests that really help the confidence level.

Result: updating to the latest Mephisto, rails, etc is extremely easy. You wordpress guys really should do yaself a favour.

#### Visible Changes

There have also been some subtle changes to the girtby stylesheet. Hopefully it looks better, although you be the judge.

Thanks to the version control I can tell you in exact detail what was changed, but I'll spare you from that. Suffice it to say: some font changes, de-cluttering, and general tidyup. There is more to do here.

Of course the most visible change is the new Markdown <acronym title="What You See Is What You Mean">WYSIWYM</acronym> comment editor, [WMD](http://wmd-editor.com/). Let me know what you think of it. I'm very impressed so far, this is how WYSIWYM editors should be done.

It should be pointed out that the preview mode may not accurately match your comment when it published. This is because WMD uses its own, JavaScript, implementation of Markdown. The rest of the blog uses the ruby implementation, which is not as good, frankly. Until I get around to fixing the ruby version (yeah, right), please accept my apologies if your comment comes out wonky. Or more wonky than you anticipated.
