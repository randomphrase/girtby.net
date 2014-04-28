---
layout: post
status: publish
published: true
title: You Only Have to Backup the Stuff You Want to Keep
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "<a href=\"http://www.thepcmuseum.net/hardware.php\"><img src=\"/images/c64cassette.jpg\"
  height=\"275\" width=\"400\" alt=\"Commodore 64 cassette player, picture stolen
  from thepcmuseum\" class=\"lede\" /></a>Backups are probably the least exciting
  topic in computing. And they are surprisingly hard to do right. So that's why everyone,
  including me, makes a half-arsed attempt but ultimately relies on the notion that
  disaster will never strike.\r\n\r\nMost of us can afford to be complacent about
  backups, mainly because we don't *generate* important stuff that needs to be backed
  up regularly. Hence the occasional evening with a DVD burner and a spindle of blanks
  is probably perfectly adequate for some people.\r\n\r\nOther people do need up-to-date
  backups. Even losing a week's worth of data is devastating. As for losing it all?
  If you just have to go [digging through a dumpster](http://www.washingtonpost.com/wp-dyn/content/article/2005/12/21/AR2005122102311.html)
  to recover your stuff, you should consider yourself lucky.\r\n\r\nThe huge storage
  capacity of today's hard drives are a massive challenge for a backup regime, and
  the prevailing wisdom seems to be that the only devices suitable for backing up
  these monsters are more hard drives. I think this is a perfectly valid solution
  but for me I [went with an old-school tape drive](/archives/2006/03/27/ultimate-boot-cd-4-the-win/).
  Here's why.\r\n\r\n\r\n\r\n\r\n\r\n\r\n"
wordpress_id: 180
wordpress_url: http://girtby.net/2007/02/21/you-only-have-to-backup-the-stuff-you-want-to-keep
date: 2006-03-28 14:46:53.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1361
  author: Frances
  author_email: phae@deviantart.com
  author_url: http://www.fberriman.com
  date: '2006-03-28 14:46:53 -0600'
  date_gmt: '2006-03-28 14:46:53 -0600'
  content: <p>Due to <a href="http://www.nostrich.net/" rel="nofollow">Rich</a>, I
    noticed you have the 2nd "nicest website on the net".  Cool, huh?</p>
---
<a href="http://www.thepcmuseum.net/hardware.php"><img src="/images/c64cassette.jpg" height="275" width="400" alt="Commodore 64 cassette player, picture stolen from thepcmuseum" class="lede" /></a>Backups are probably the least exciting topic in computing. And they are surprisingly hard to do right. So that's why everyone, including me, makes a half-arsed attempt but ultimately relies on the notion that disaster will never strike.

Most of us can afford to be complacent about backups, mainly because we don't *generate* important stuff that needs to be backed up regularly. Hence the occasional evening with a DVD burner and a spindle of blanks is probably perfectly adequate for some people.

Other people do need up-to-date backups. Even losing a week's worth of data is devastating. As for losing it all? If you just have to go [digging through a dumpster](http://www.washingtonpost.com/wp-dyn/content/article/2005/12/21/AR2005122102311.html) to recover your stuff, you should consider yourself lucky.

The huge storage capacity of today's hard drives are a massive challenge for a backup regime, and the prevailing wisdom seems to be that the only devices suitable for backing up these monsters are more hard drives. I think this is a perfectly valid solution but for me I [went with an old-school tape drive](/archives/2006/03/27/ultimate-boot-cd-4-the-win/). Here's why.






<a id="more"></a><a id="more-180"></a>




Aside from the obvious perils of hardware failure, fat-fingeredness and acts of Dog, here's what I'm afraid of: I worry about malware destroying my data *without me noticing immediately*.

Consider a virus which infects your system and silently vandalises photos in your collection. Or changes words in your thesis. Or inserts profanities into your resume. You don't scrutinise the entirety of your important data each and every day, so it may be months before you notice. In the meantime you are backing up this corrupted information.

If you use online storage as a backup medium you need to be especially careful - a malware infection could not only damage your current data, but all your backups as well. Sound far-fetched? Want to gamble your data on it?

Mitigating the threat of malware means archiving to write-once media or being especially rigourous about archiving old backup media.

In addition, our backup medium must be easy to carry off-site, convenient to use, and as automated as possible.

How does each of three broad categories of backup devices fair with respect to these criteria?

 * Optical media is write-once and so gives you the best protection against silent data loss. The major downside is, of course, the hassle of mounting blank disks all the time. Current capacities (4.something GB per disk given that dual-layer disks are still relatively expensive) are just too low to conveniently store a lot of stuff without swapping.

 * On the other hand, Hard disks are generally huge and hence great targets for backing up large amounts of data. It's feasible to put a hard drive into long-term storage every year or so, but doing this more regularly increases the expense accordingly. And while you're actively using the drive as a backup medium, all your previous backups are at risk both from malware infection and failure of the drive itself. Hard disks are not always convenient to take as off-site storage (unless of course you use spare space on an iPod).

 * Magnetic tapes are, in my opinion anyway, a reasonably happy medium between the two extremes of optical media and hard disks. The tapes tend to be cheap enough to allow long-term archiving on a regular basis (e.g. every month or so), and they are large enough (in capacity) to store my stuff without endless swapping. Also they are small enough (in physical size) for convenient off-site storage. On the downside they are pretty low-tech and require a lot of care, feeding and cleaning (particularly DDS).

This is why I chose tape over the others. Elsewhere, Tim Bray dispenses excellent [advice about backups](http://www.tbray.org/ongoing/When/200x/2006/01/31/Data-Protection), and comes down on the side of removable hard disks. So your backup mileage will vary.

In other news, I've also been playing with FreeBSD's [Software RAID-1](http://www.onlamp.com/pub/a/bsd/2005/11/10/FreeBSD_Basics.html?page=1) feature for extra protection against disk failures ([but not as a backup strategy](http://www.somethinkodd.com/oddthinking/2005/10/03/changing-views/)). I have an idea that this feature can also be used to test my backups by dynamically, that is, with the system running. The plan is to un-mirror my two drives, restoring the backup to one of the drives, and then comparing the drives to each other on a file-by-file basis. Lastly the plan is to re-mirror the drives all without rebooting. I'll report back if I get this working.

**Update**: Apparently "what's your backup strategy?" [is a meme](http://seanmcgrath.blogspot.com/archives/2006_03_26_seanmcgrath_archive.html#114344964752307289)!  I claim independent simultaneous invention! But I claim nothing to do with the "backuparama" tag, OK?
