---
layout: post
status: publish
published: true
title: Subversion
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 43
wordpress_url: http://girtby.net/2007/03/28/subversion
date: 2004-11-10 21:15:15.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 991
  author: girtby.net &amp;amp;raquo; I ❤ UNIX
  author_email: ''
  author_url: http://girtby.net/archives/2004/12/13/i-heart-unix/
  date: '2004-11-10 21:15:15 -0600'
  date_gmt: '2004-11-10 21:15:15 -0600'
  content: "[...] it turned out there was only a few files of only minor importance
    (err, actually just the <a href=\"http://girtby.net/archives/2004/11/10/subversion/\">subversion
    repository</a>!), but it was nice to get them back. \tA few months back I bought
    a couple [...]"
- id: 992
  author: Vijay
  author_email: sunnyvijay@gmail.com
  author_url: http://sunnyvijay.blogspot.com
  date: '2004-11-10 21:15:15 -0600'
  date_gmt: '2004-11-10 21:15:15 -0600'
  content: |-
    <p>Hi,</p>

    <p>Very nice review about subversion.</p>

    <p>Good Work.</p>

    <p>I was exactly looking for this.</p>
---
<a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=Mac&q2=Windows&B1=Make+a+fight%21&compare=1&langue=us">Mac vs. Windows</a>? <a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=Java&q2=C%23&B1=Make+a+fight%21&compare=1&langue=us">Java vs. C#</a>? <a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=Linux&q2=BSD&B1=Make+a+fight%21&compare=1&langue=us">Linux vs. BSD</a>? <a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=Perl&q2=Python&B1=Make+a+fight%21&compare=1&langue=us">Perl vs. Python</a>? <a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=IE&q2=Firefox&B1=Make+a+fight%21&compare=1&langue=us">IE vs. Firefox</a>? <a href="http://www.googlefight.com/cgi-bin/compare.pl?q1=vi&q2=emacs&B1=Make+a+fight%21&compare=1&langue=us">vi vs. emacs</a>?

Fugeddaboudit. Real Nerds fight religious wars over source control systems. In my experience no subject is more likely to get a decent debate going amongst a group of developers than code reviews. And after that, source code control.

So I'm checking out (groan) <a href="http://subversion.tigris.org/">Subversion</a>.

In short, the source code control wars are soon to come to an end. Subversion is that good.

It doesn't yet have the features and maturity of <a href="http://www-306.ibm.com/software/awdtools/clearcase/index.html">Clearcase</a>, but unlike Clearcase it doesn't bring your servers, clients or networks to their knees. Bear in mind that Clearcase is about the most powerful source code control system around. If you want to do serious large-scale development you would be (or have been) nuts to use anything other than Clearcase. As a qualified Clearcase administrator and daily user I invested lots of time and energy in Clearcase over the years, but as of right now I would recommend Subversion.

As for CVS? I would also prefer Subversion. Even for small one-person projects - where I once would have recommended CVS over Clearcase.

To test Subversion from both a user and administrator's perspective, I've been using it to manage my config files and favourite libraries on my various machines. (Yes a source code control system is overkill for this task, but hey, ya gotta play with toys).

One of the killer features of Subversion IMHO is that you can set it up to use WebDAV as an access protocol. Basically this is an extension of HTTP and goes through any firewall. Setup is a bit tricky, because you need Apache 2.0 and some playing with permissions, but once you get it right, you can access your server from anywhere. My Subversion repository is set up on my home machine.

<a href="http://clarence.darktech.org/repos">Go ahead, take a look</a>.

The correct reaction at this point is: "OMFG! You can browse the repository directly in your browser!". OK so the <a href="http://www.freebsd.org/projects/cvsweb.html">CVSweb</a> users may not be saying that, but the Clearcase users certainly are. In fact the CVSweb users are probably saying "is that all? just the latest revision?" To which the answer is most definitely <a href="http://clarence.darktech.org/WebSVN/">no</a>.

Check out the Subversion website for more of the features. Also check out the Windows GUI, <a href="http://tortoisesvn.tigris.org/">TortoiseSVN</a> which is great also.

So I've been using the Subversion repository to store my favourite emacs libraries. So when I check in a new version of, say, <a href="http://www.xsteve.at/prg/vc_svn/index.html">psvn</a>, the Subversion interface for emacs, all I need to do is do an `svn update` to have that update propogated to another one of my machines. So far the <a href="http://svnbook.red-bean.com/svnbook-1.1/ch07s04.html">vendor branch</a> feature of Subversion has been sufficient to maintain all of the third-party code in my repository, but checking in each new downloaded version of the libraries uses a bit of a kludgy perl script. Hopefully they'll make this a bit more polished in future.

While Subversion does do efficient merging between branches (or in this case between sucessive versions of third-party libraries), it doesn't store the fact that a merge occurred, and hence can't calculate a common ancestor when you perform any subsequent merges between those branches. This is one area where Clearcase really shines, and I hope that Subversion gets this feature soon. In the meantime, tracking merges manually is not such a burden because Subversion increments a repository-wide revision number after every transaction. So instead of remembering that you last merged at 11:46am yesterday, all you need to track is that you merged into revision 132. I'm sure this revision number comes in handy for other things as well (build numbers, anyone?)

My `.emacs`, `.bashrc` and other files are synchronised in the same way as the third-party libraries as described above, but are a bit more tricky to maintain because they need to be made generic enough to run on all platforms. But that's not Subversion's fault!

OK, so enough nerd overload. Take-home message: Subversion is very good. Use it on your next project, you won't regret it.
