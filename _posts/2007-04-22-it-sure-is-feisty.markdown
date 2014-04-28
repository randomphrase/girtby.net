---
layout: post
status: publish
published: true
title: It Sure Is Feisty
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1672
wordpress_url: http://girtby.net/2007/04/22/it-sure-is-feisty
date: 2007-04-22 12:11:05.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1579
  author: bjkeefe
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: |-
    My condolences.

    You're quite right to call out Ubuntu for missing this hardware problem -- your hardware doesn't sound overly exotic.

    Sorry if I didn't read carefully enough, but would you please be more explicit about what you did that "eventually solved [your] problem"?  Thanks.
- id: 1580
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxyblog.blogspot.com/
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: |-
    The great thing is that you could see "agpgart: No usable aperture found." etc during the boot sequence.

    I purchased a system from a PC shop a while back and noticed that the hardware guy booted it up with a linux liveCD before handing it over, when I commented on this he explained that booting linux is an excellent test and diagnostic of the hardware, better than just the bios and more helpful by far than Windows.

    My Ubuntu 7.04 was completely smooth, but then I have very generic intel hardware. Ubuntu has surged ahead of Fedora on the desktop, but I still use FC6 as a server mostly due to familliarity.
- id: 1581
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: |-
    Reworded slightly. The solution was adding `iommu=noaperture` to the kernel boot line.

    Also, I'd like to call Ubuntu on this, but I'm conscious that the nVidia drivers are "restricted" and hence explicitly *excluded* from the standard Ubuntu base. I *guess* that the testing responsibility falls on nVidia's shoulders, but I can't imagine that the BIOS/motherboard vendor (Award/Gigabyte) is entirely in the clear.

    Another possible lesson from all this is that there is a distinct need for systems integrators - vendors who can provide combined hardware and software that has had some testing and hence some guarantee against problems like this.

    Maybe it can be open-sourced? That is, a collaborative environment for authoring a test suite, and a catalogue of knowledge on how to source and assemble appropriate hardware (with specific makes and models) and software to pass the test suite. The result would be a set of "known good" hardware, not just as components, but as entire systems including components and configuration. Maybe there is something like this out there already?
- id: 1582
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: It seems you're not the only one with <a href="http://pl.atyp.us/wordpress/?p=1212">video
    problems</a> with Feisty Fawn.
- id: 1583
  author: yetanothersteve
  author_email: ''
  author_url: ''
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: |-
    I have a Gigabyte K8NS-939, Athlon 64 X2 system and saw the same "No usable aperture found." message. There was a special hidden setting in the Bios setup where I had to hit "Ctrl-F1" to activate the Advanced Chipset Menu. After that, I was able to change the AGP aperture in the Bios and the dmesg entries then became a message stating that the AGP Aperture had been set to 128mb, which is what I chose in the Bios. No changes to kernel boot parameters or modules required. Your motherboard manufacturer may have also hidden the AGP aperture setting or even called it something else.

    FYI, the iommu=noaperture did help because I tried it before finding the Bios setting, but it forced the aperture to be 32mb, which is small for my 128mb NVidia GeForce 6800XT card.

    Using the quick "not really a benchmark but it does give a number" "glxgears -printfps" test, I went from 6200 fps to 9100 fps using either the bios change or iommu=noaperture. I may reinstall Quake4 and see if that performance is improved.
- id: 1584
  author: beniji
  author_email: tmp@kappia.com
  author_url: http://kappia.com
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: FYI The nVidia AGP aperture size causes problems for MS Windows too - it
    occurs on my Shuttle XPC running Windows 2000 if the BIOS AGP settings are not
    spot on. Unlike Feisty (which did the same thing as you experienced on my Tecra
    laptop), Windows does boot and use the video hardware but will crash every few
    minutes.
- id: 1585
  author: Jon Day
  author_email: jon@daysite.net
  author_url: http://daysite.net
  date: '2007-04-22 12:11:05 -0500'
  date_gmt: '2007-04-22 12:11:05 -0500'
  content: |-
    Thank you Sir!!  After much research, your solution worked great.  Eliminated the slow jerky screens, poor scrolling, and a host of other related problems.

    Fedora 8
    AMD 64
    Biostar TForce 6100-939 (mother board)
    Acer 22" AL2216W (flat monitor)
    MSI NX8500GT (nVidia video card)
---
I wish I could say that my experience upgrading to [Ubuntu 7.04](http://www.ubuntu.com/getubuntu/releasenotes/704tour) was delightful.

Last Friday I invoked the handy updater tool. After a couple of hours of downloading (from the Internode mirror, thanks) and installing the new software, I rebooted to find...

A blank screen.

Not just that, but a completely unresponsive computer. It had almost completed initialising, just to the point of loading X. After the screen went blank though, it wouldn't exit X to the text console. In fact, it wouldn't even respond to pings.

So began a weekend attempting to diagnose the blank screen. I soon isolated it to a problem with the nVidia proprietary drivers, but no solutions were forthcoming.

The [Ubuntu Forums](http://ubuntuforums.org/) are a bit of a blessing and a curse in my experience. There is just *so much* traffic there, which is good, but there is a fairly low signal-to-noise ratio, which is bad. When I was diagnosing [RAID disk problems](/articles/2006/12/7/the-switch#comment-756), I found many threads that had become inundated with folks describing similar-but-different problems (or even completely different problems), and with others proposing half-arsed solutions. It's often quite difficult wade through it all to a real solution to any given problem.

After some time wading, I tried a different tack. The following ominous message appeared early in the boot sequence, and it bugged me:

	agpgart: Detected AGP bridge 0
	agpgart: Aperture conflicts with PCI mapping.
	agpgart: Aperture from AGP @ f0000000 size 4096 MB
	agpgart: Aperture too small (0 MB)
	agpgart: No usable aperture found.
	agpgart: Consider rebooting with iommu=memaper=2 to get a good aperture.
	PCI-DMA: Disabling IOMMU.

So I tried the obvious, rebooting with `iommu=memaper=2`. This was no good, but a bit of googling led me to [this nV News Forums post](http://www.nvnews.net/vbulletin/showthread.php?t=83419), where someone is describing very similar symptoms to mine, and getting response from an nVidia engineer. There was no resolution, but from this thread I learned two important facts:

 1. That some recent changes were made in the kernel in the area of IOMMU and aperture size.
 2. The existence of `iommu=noaperture`.

The second piece of information was the one that eventually solved my problem, namely adding `iommu=noaperture` to the kernel boot line.

The solution is really sub-optimal because it results in a 32MB aperture, and [apparently](http://www.uwsg.iu.edu/hypermail/linux/kernel/0509.2/1972.html) 64MB is the useful minimum. However I can say that 32MB does at least allow the system to load the nVidia drivers and run at an acceptable speed. In fact it runs beautifully.

It seems likely that fixing this problem would almost certainly have fixed the appalling graphics performance with the old 6.10 version. Whereas in the old kernel, the lack of a usable AGP aperture resulted in performance problems, in the new kernel it simply refused to work at all.

Of course it has to be asked: why wasn't this caught in testing?

My theory is that this problem is caused by a combination of: an AMD x86-64 CPU, AGP graphics, and a particular type of BIOS that, for some reason, doesn't set/report the correct AGP aperture size.

As for the chance of your average human being able to diagnose any of this. Well. I'll leave it up to you humans to decide.
