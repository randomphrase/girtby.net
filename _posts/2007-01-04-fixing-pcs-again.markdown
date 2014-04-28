---
layout: post
status: publish
published: true
title: Fixing PCs Again
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Last year I visited friends and family interstate and fixed their computers. This year, I did the same.

  Read on for a tale of woe, delivered in PowerPoint style for no readily apparent reason.


wordpress_id: 881
wordpress_url: http://girtby.net/2007/01/05/fixing-pcs-again
date: 2007-01-04 21:58:00.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1532
  author: Michael Studman
  author_email: whatfarkingrootkit@michaelstudman.com
  author_url: http://www.michaelstudman.com
  date: '2007-01-04 21:58:00 -0600'
  date_gmt: '2007-01-04 21:58:00 -0600'
  content: 'Another lesson I learnt over the holidays is: When fixing spyware on a
    friends computer, always scan for a root kit first. Otherwise you might have to
    make several return trips and give up a not insignificant number of hours of your
    life to eradicating some woeful little parasite.'
---
Last year I visited friends and family interstate and fixed their computers. This year, I did the same.

Read on for a tale of woe, delivered in PowerPoint style for no readily apparent reason.


<a id="more"></a><a id="more-881"></a>

#### The Problem

 * An ancient Celeron 1.16GHz PC
 * Glaciallly slow
 * Located in regional South Australia
 * Hard drive LED permanently on
 * The cause: 256MB of RAM

#### Plan A: RAM upgrade

 * Putting in another 512MB an easy performance hit
   * But RAM for this old SiS-chipset machine no longer available
 * What to do instead?

#### Plan B: CPU / Mobo / RAM upgrade

 * Purchased from Adelaide vendor:
   * AMD Sempron 3400+
   * Asus Motherboard
   * Kingston RAM
   * new PSU
 * Also supplied, at no extra charge:
   * Niggling feeling that it would all end in tears, miles from the vendor

#### Before upgrade: Backup

 * PC owner cheerfully declares that backups have never been performed
   * But is able to recite work-related story of paying $18,000 to recover a failed hard drive after backups were found to be faulty
 * Two laptops identified as potential temporary backup targets
   * Windows laptop
   * PowerBook
 * Guess which worked, and which didn't?
 * Windows Networking, an oxymoron?

#### Fitting the hardware

 * Old motherboard, PSU and assorted cables removed easily
 * New hardware installed fairly easily, except for
   * Motherboard had a 24-pin power connector
   * Supplied PSU only a 20-pin connector
 * Quick phone call to vendor who advised just sticking it in anyway
 * Which worked, much to my surprise

#### <del>Booting</del> Bluescreening Windows

 * Booting existing installation of Windows:
   * Spontaneous reboot soon after loading kernel
   * Safe mode gave the same problem
 * Booting from the original XP Home CD:
   * BSOD, somewhere in the PCI driver
 * What to do?

#### A Solution?

 * After a short Google search:
   * BSOD from the original CD may be due to incompatibilities with PCI-express hardware
   * Fixed in SP2
   * Just need to slipstream SP2 onto the XP Home CD
 * Fortunately we had a second Windows machine handy with a CD burner
   * The laptop mentioned earlier

#### Slipstreaming, Attempt 1

 * [Paul Thurott's Guide](http://www.winsupersite.com/showcase/windowsxp_sp2_slipstream.asp) looked promising
 * Two problems:
   * No CD burning software installed
     * Freeware [CDBurnerXP Pro](http://www.cdburnerxp.se/) downloaded instead
   * Slow network connection
     * SP2 download took about 2 hours
 * CD burned after attempting to guess the right settings for CDBurnerXP based on Thurott's guide for other software
   * Booted the new machine
   * But BSOD after loading Windows kernel
     * `UNMOUNTABLE_BOOT_VOLUME` or somesuch

#### Subtask: Postpone Automated Updates

 * During the 2 hour SP2 download, got repeatedly nagged:
   * "You need to reboot to complete the installation of these updates"
   * "System will automatically reboot in 5 mins"
   * Two buttons "Reboot Now", "Reboot Later"
   * Missing third button "Can't you see I'm busy doing something?"
 * Had to **sit and watch the download** to repeatedly press "Reboot Later" whenever it popped up
 * Not sure what updates these were anyway
   * Possibly related to the AV software (Symantec)

#### Slipstreaming, Attempt 2

 * Used [Tacktech guide](http://www.tacktech.com/display.cfm?ttid=359) linked from CDBurnerXP site
 * Would not boot the new machine
 * Got NTLDR error after the "Press any key to boot from CD" prompt

#### Slipstreaming, Attempt 3

 * Used [nLite](http://www.nliteos.com/) to perform slipstreaming
   * Intended to use it to generate easy-to-burn ISO
 * More downloading (.NET framework)
 * Pleasant surprise: nLite can burn directly to CD
   * Not obvious from the website or the application itself
 * Third time, success
   * Booted Windows installer
   * Performed Repair installation
   * No data lost
   * No software needing reinstallation
 * Total time to produce working Windows CD: about 4 hours

#### Lessons Learned

 * If you can't be backwards compatible (ie boot an original XP CD), at least make it easy to upgrade
 * Corollary: Slipstreaming and creating bootable CDs, should be part of the OS
 * Automatic updates are annoying
 * Automated reboots are unforgivable
 * After a hard day with hardware, [Coopers](http://www.coopers.com.au/) helps ease the pain
