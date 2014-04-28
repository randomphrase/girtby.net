---
layout: post
status: publish
published: true
title: Ultimate Boot CD 4 (The) Win
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Trying to sort out the mess that is my backup `<airquote>`strategy`</airquote>`, I recently bought a DDS-4 tape drive off eBay. Here's the exciting story of how I got it working.




wordpress_id: 179
wordpress_url: http://girtby.net/2008/09/05/ultimate-boot-cd-4-the-win
date: 2006-03-27 11:30:01.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1357
  author: Garth
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2006-03-27 11:30:01 -0600'
  date_gmt: '2006-03-27 11:30:01 -0600'
  content: <p>Top effort! How long did it take to build the ubcd4win image?</p>
- id: 1358
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-03-27 11:30:01 -0600'
  date_gmt: '2006-03-27 11:30:01 -0600'
  content: <p>About 15 mins go to woah. Very easy.</p>
- id: 1359
  author: subrahmanian.v
  author_email: subrahmanian_v@yahoo.com
  author_url: ''
  date: '2006-03-27 11:30:01 -0600'
  date_gmt: '2006-03-27 11:30:01 -0600'
  content: <p>Often i get a blue screen saying "Windows has detected a Kernel Disk
    problem.....and asks if i have recently installed any new hardware or software.  Finally
    it says 'dumping physical memory' and after a along time the system starts or
    sometimes does not start at all.  What should be done to overcome this blue screen
    error?  It has happened over a dozen times to me this past week.</p>
- id: 1360
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-03-27 11:30:01 -0600'
  date_gmt: '2006-03-27 11:30:01 -0600'
  content: |-
    <p>subrahmanian: Perhaps you have confused my blog with some technical support forum.</p>

    <p>I can't really help you apart from saying that you almost certainly have a hardware problem. These days bluescreens are pretty rare in Windows (IME) and almost always indicate failing hardware.</p>

    <p>On the other hand though I'm just a guy on the internet, what do I know?</p>
---
Trying to sort out the mess that is my backup `<airquote>`strategy`</airquote>`, I recently bought a DDS-4 tape drive off eBay. Here's the exciting story of how I got it working.




<a id="more"></a><a id="more-179"></a>


(There's probably a blog post to explain why a tape drive and not, for example a spare hard disk or DVD burner, but I'll leave that for another time).

Anyway, the first time I tried to use the new drive I got mysterious SCSI controller errors spewed all over the console. Extensive Googling for the error messages (see below) did not reveal much in the way of help, except some vague indication that it might be related to firmware on the DDS drive itself. Or of course it would be a dud drive, after all I did get it off eBay.

On the assumption that it was firmware related, this presented two problems: firstly locating the firmware itself and secondly booting an operating system that would run the firmware updating program.

#### Firmware, firmware all around

The first problem is harder than you might think. The description of the item on eBay said that it was a Dell-branded drive (OEM Seagate STD2401LW), but according to the unit itself, it was an "Archive Python" model. As I later discovered, there is a DIP switch which is used to change the model reported to the operating system "for compatibility with certain backup software" (which I read as: "to fix certain broken backup software"). Flipping this switch resulted in the correct Seagate device description being found by the SCSI controller and displayed at boot.

It turns out like that Seagate had sold their tape drive business to another company called Certance, which in turn sold the business to Quantum. So, in summary, I had a drive that was pretending to be an Archive Python, but was actually a Dell-branded Seagate, which was previously supported through Certance but now through Quantum. As far as I could tell, Quantum was the last in the chain of mergers and acquisitions, but I could be wrong. So the chance of finding the firmware which was not going to leave this tape drive a useless brick was very slim, I reckoned.

[Quantum's site](http://www.quantum.com/ServiceandSupport/SoftwareandDocumentationDownloads/DAT40Drives/Index.aspx) listed the most likely candidate firmware for download. It was even recently updated. I figured that it was worth a shot, but this presented the second problem.

#### Windows comes to visit

The Quantum firmware upgrade utility was available for Windows, Linux, Netware (WTF!?) and Solaris. I am running FreeBSD. I would either have to install one of these operating systems on my machine (making room for it was the biggest hassle), or install the tape drive *and* SCSI controller card into my Windows box. All to run the firmware upgrade utility, which may not even be the right firmware, and which may not even solve my problem in the first place.

What would you do in this situation?

Enter [ubcd4win](http://www.ubcd4win.com/): the Ultimate Boot CD for Windows. This tool simply saved my bacon. I was able to boot my server into Windows directly from CD without touching the hard drive. I downloaded the Quantum firmware update program to the RAM disk and ran it from there. I was even able to run the TapeRx program which performed a short read/write test on the tape drive and ensured that it was all running smoothly.

With the firmware updated, I crossed my fingers and rebooted to FreeBSD to test the tape drive with `tar`. It worked! I now have a working tape drive.

Thanks ubcd4win! You are the win!

#### Google fodder

For the sake of anyone else Googling for a similar problem, here is the error message I was getting in FreeBSD:

    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): WRITE FILEMARKS. CDB: 10 0 0 0 1 0
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): CAM Status: SCSI Status Error
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): SCSI Status: Check Condition
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): MEDIUM ERROR asc:3,2
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): Excessive write errors
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): Retries Exhausted
    Mar 25 16:18:23 claude kernel: (sa0:ahc0:0:6:0): failed to write terminating filemark(s)
