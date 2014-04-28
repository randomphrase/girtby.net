---
layout: post
status: publish
published: true
title: The Switch
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  PC1: Hello, I'm a PC

  PC2: And I'm also a PC.



wordpress_id: 223
wordpress_url: http://girtby.net/2008/02/09/the-switch
date: 2006-12-07 18:16:39.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1508
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-07 18:16:39 -0600'
  date_gmt: '2006-12-07 18:16:39 -0600'
  content: |-
    > it goes away next reboot. No idea what’s going on.

    It’s called Udev.
- id: 1509
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-07 18:16:39 -0600'
  date_gmt: '2006-12-07 18:16:39 -0600'
  content: |-
    OK, got it working.

    The magic incantation: `sudo dpkg-reconfigure mdadm`

    The really frustrating part is that there are a lot of people on the various forums who are offering solutions but none of them really address the underlying problem. Several suggest hacks to create the `/dev/md0` device entries either manually with `MAKEDEV` or to get udev to do it using some undocumented (!) `links.conf` file. Others suggest hacks to the `mdadm.conf` file to tell it what raid arrays are configured (which should not be necessary because this information is stored in the filesystem superblocks anyway). So many answers, but all of them band-aids over the real underlying cause.

    The way I understand it, it should work is as follows:

     1. System starts up, early in the startup sequence it initialises udev and the filesystem
     2. Certain filesystems are marked as raid-autodetect, which triggers the kernel to load the relevant module (`md_mod` I believe).
     3. Later in the system boot sequence, mdadm-raid is invoked. This scans the partitions for raid-arrays previously created and "assembles" them. It also creates the `/dev/md0` entries by communicating with udev.
     4. The newly-created raid device is mounted in accordance with `/etc/fstab`.
     5. The raid monitoring daemon is started.

    I think what was happening in my case was that the kernel wasn't set up somehow to trigger the md module to be loaded. This needs to be done in a special way because you normally need md to be compiled into the kernel. `dpkg-reconfigure mdadm` obviously takes care of it, and I'd like to know exactly how it does this. But maybe that's something for another time.

    Despite spending far too much time on this, I'm glad I've got a better understanding about it all, and that it seems to be working properly without hacking. Disappointed that the correct solution was so difficult to come across.
- id: 1510
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-07 18:16:39 -0600'
  date_gmt: '2006-12-07 18:16:39 -0600'
  content: |-
    The second drive is installed, added to the array, and it's rebuilding now:

        alastair@pierre:~$ cat /proc/mdstat
        Personalities : [raid1]
        md0 : active raid1 sdb[0] sda1[1]
              244195904 blocks [2/1] [_U]
              [>....................]  recovery =  0.9% (2265920/244195904) finish=68.9min speed=58440K/sec

        unused devices: <none>

    Lovely. 68 mins a lot quicker than 11 hours.
- id: 1511
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-07 18:16:39 -0600'
  date_gmt: '2006-12-07 18:16:39 -0600'
  content: To cap it all off, it looks like [there *is* a way of getting the nVidia
    driver working on FreeBSD/amd64](http://people.fruitsalad.org/adridg/bobulate/index.php?url=archives/320-Thank-you,-openSUSE-from-a-FreeBSD-guy.html).
    If only I'd discovered this about a week ago.
---
PC1: Hello, I'm a PC

PC2: And I'm also a PC.



<a id="more"></a><a id="more-223"></a>

PC1: Ooooh, my aching disk controller.

PC2: What's the matter, PC1?

PC1: Well, I've got these two 250GB drives and they work fine in isolation, but whenever they are in a mirrored configuration, they develop subtle filesystem corruption problems. That leads to kernel panics and spontaneous reboots. It's not nice. I've tried both the hardware *and* software RAID1 solutions, and it's the same deal both times.

PC2: Ouch.

PC1: Yes. So far I've been limping along in software RAID mode with write caching turned off. This *mostly* prevents the filesystem corruption but not entirely. Also it makes writes glacially slow.

PC2: How slow?

PC1: Like, about 6 MB/sec. About 6 times slower than they should be. Let's see, at that rate, it would take about 11 hours to fill the disk. I *could* get a new SATA controller card, but what's the chances the same thing might not happen again?

PC2: Well listen PC1, why don't I take over the file server duties with those disks? I've got two SATA ports on-board, everything should Just Work. Pretty sure I can handle the extra load, I have an Athlon XP 3200+ CPU, you know.

PC1: Hey you don't need a fast CPU to be a big dumb file server, bub. My Celeron 1.13GHz suits me *just fine*. But anyway, sure, knock yourself out. Just get yourself set up with the latest FreeBSD 6.1-RELEASE and then we'll get those drives installed.

*(time passes)*

PC2: Well that didn't go so well.

PC1: Why, what happened?

PC2: Well I got FreeBSD installed OK, but then I found out the bad news. There is no nVidia driver for FreeBSD/amd64. And the standard X.org driver refuses to work with my new Dell LCD monitor.

PC1: Oh, poor diddums. I don't even *have* a monitor and you don't see me complaining.

PC2: Well your lack of monitor might have something to do your integrated graphics chipset, but the less said about that, the better. So anyway, back to me. I was a bit stuck without the graphics driver, and it was the perfect excuse to do something I've always wanted to do.

PC1: What, get that Hello Kitty desktop theme installed?

PC2: No, something more drastic than that. I've switched to ... **Ubuntu Linux!**

PC1: OMG, you must have been desperate.

PC2: Don't be nasty. Anyway, it worked. Ubuntu seems to recognise all of my hardware. Well, almost all. Unfortunately, I had the same video sync problem that I had encountered with FreeBSD. Fortunately, there was a "safe VGA mode" on the installer live CD. Unfortunately, it didn't work. Fortunately, there was a workaround. This was enough to get Ubuntu installed, and then the official nVidia amd64 video driver.

PC1: So after all that, are you ready to install the drives? They'll need to be re-fomatted because Linux doesn't understand UFS very well. Tell you what, I'll give you one drive, you create a RAID-1 array with one disk and one one missing disk. Then copy all the stuff across, I'll give you the other disk, and you can rebuild the array.

PC2: Sounds like a plan.

*(more time passes)*

PC2: Ubuntu doesn't like me.

PC1: "[I don't like you either. You just watch yourself. We're wanted men. I have the death sentence on twelve systems.](http://www.imdb.com/title/tt0076759/quotes)"

PC2: Shut up, nerd. Apparently `mdadm` is the RAID tool of choice for Linux, so I installed it. But it requires RAID "personalities" to be loaded into the kernel, and I have no idea how to do that. Also it requires `/dev/md0` to be present and, well, it isn't. All of the RAID doco starts with those two basic requirements and I have no idea why my system is not meeting them. I can create `/dev/md0` using the `sudo mknod /dev/md0 b 9 1` magical incantation, but it goes away next reboot. No idea what's going on.

PC1: So I guess I'm still useful for something after all! I may corrupt my filesystem once in a while but at least I have one!

PC2: Ubuntu doesn't like me, I told ya.

PC1: Don't anthropomorphise operating systems. They hate that.
