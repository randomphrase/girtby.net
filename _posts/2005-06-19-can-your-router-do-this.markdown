---
layout: post
status: publish
published: true
title: Can your router do this?
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 107
wordpress_url: http://girtby.net/2007/03/30/can-your-router-do-this
date: 2005-06-19 21:57:02.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1150
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: |-
    &gt;  in a crazy double-NAT arrangement

    I resemble that statement.
- id: 1151
  author: Peter
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: |-
    Another interesting hackable device is the Linksys NSLU2. http://www.linksys.com/products/product.asp?grid=35&amp;scid=43&amp;prid=640

    Again, a little, silent embedded box designed to samba share a USB drive. You can flash the firmware and do all sorts of interesting things with it. Check out:

    http://www.nslu2-linux.org/

    Why would you bother building specific embedded hardware when there are mass produced devices like the WRT54G and NSLU2 available off the shelf.
- id: 1152
  author: girtby.net  &amp;amp;raquo; Blog Archive   &amp;amp;raquo; Dynamic DNS on
    the Cheap
  author_email: ''
  author_url: http://girtby.net/archives/2005/06/22/dynamic-dns-on-the-cheap/
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: "[...] y email that FreeBSD sends me.   So there you have it. I guess I&#8217;ll
    migrate it to my new router at some point, but for now I&#8217;m happy. \t \t\t\t\t\t
    \t\t\t\t \t\t\t\t\t \t\t\t\t\t\tTh [...]"
- id: 1153
  author: BsAtHome
  author_email: bertho@akhphd.au.dk
  author_url: ''
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: |-
    &gt; The only slight hiccup was it didn’t describe which of the two “experimental”
    &gt; firmware images to use (jffs2 or squashfs?) and I guessed wrong.

    Nice comment,... It *would* be more useful then to say *which* image _is_ the correct one. Statistics will only confirm that your chance is 50%. No need to submit others to the same pain ;-)

    --
    BS
- id: 1154
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: |-
    You are quite right, my apologies. The <del>jffs2</del> squashfs image is the correct image for new installs.

    EDIT: D'oh!
- id: 1155
  author: Josh
  author_email: kanedasan@gmail.com
  author_url: http://ubernooder.com
  date: '2005-06-19 21:57:02 -0500'
  date_gmt: '2005-06-19 21:57:02 -0500'
  content: how did you make the boot_wait setting stick?
---
<img src="/images/wrt54gs.jpg" alt="Linksys WRT54GS" class="lede" width="170" height="155"/>New toy at Chez Girtby: A [Linksys WRT54GS](http://www.linksys.com/products/product.asp?grid=33&scid=35&prid=610). Running the [OpenWRT](http://openwrt.org/) linux distribution. Can your router do this?

     BusyBox v1.00 (2005.05.25-20:30+0000) Built-in shell (ash)
     Enter 'help' for a list of built-in commands.

       _______                     ________        __
      |       |.-----.-----.-----.|  |  |  |.----.|  |_
      |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
      |_______||   __|_____|__|__||________||__|  |____|
               |__| W I R E L E S S   F R E E D O M

     root@OpenWrt:~# ps -ax
       PID  Uid     VmSize Stat Command
         1 root        408 S   init
         2 root            SW  [keventd]
         3 root            SWN [ksoftirqd_CPU0]
         4 root            SW  [kswapd]
         5 root            SW  [bdflush]
         6 root            SW  [kupdated]
         7 root            SW  [mtdblockd]
        23 root            SWN [jffs2_gcd_mtd4]
        36 root        392 S   syslogd -C 16
        43 root        352 S   klogd
       364 root        408 S   udhcpc -i vlan1 -b -p /tmp/dhcp-wan.pid
       454 nobody      408 S   /usr/sbin/dnsmasq
       459 root        428 S   /usr/sbin/dropbear
       464 root        408 S   /usr/sbin/httpd -p 80 -h /www -r WRT54G Router
       509 root        412 S   init
       510 root        648 R   /usr/sbin/dropbear
       511 root        460 S   -ash
       514 root        384 R   ps -ax
     root@OpenWrt:~#

There is so much to like here. The WRT54G is small and silent, perfect for 24x7 operation. It can happily coexist with visiting friends and relatives who don't always relish the soothing fan noise of the server farm. There's a nifty little 200MHz MIPS-based CPU with 32MB of RAM and 8MB of flash.

Also, OpenWRT is linux. But better than that it's *stripped down to the bare useful minimum* linux, as you can see from the `ps` output above. You install the [extra stuff](http://tracker.openwrt.org/) you want, as you need it, using an `apt-get` workalike called ipkg.

Installation was relatively painless, considering. The [doco](http://openwrt.org/OpenWrtDocs/Installing) is a little intimidating, but contained most of the right information. The only slight hiccup was it didn't describe which of the two "experimental" firmware images to use (jffs2 or squashfs?) and I guessed wrong. Then it took me a while to realise that the "boot_wait" NVRAM setting which I had used to enable TFTP upload of the initial firmware on boot hadn't stuck, and needed to be turned on again before I could upload the right image. But all is well now.

I have learned to be pretty conservative when it comes to making changes to my router. So new toy is currently sitting behind my regular Netgear router (the one which is still [corrupting broadcast packets](/archives/2005/02/27/netgear-bugs/) and restarting its wireless interface every 4 mins exactly) in a crazy double-NAT arrangement. The idea is that I'll migrate my other hosts to the new Linksys box as it settles in (and I get used to it), and once all the hosts are sitting behind it, it will replace the Netgear as my internet router.

And do a whole lot more besides. I want to set it up to do [traffic shaping](http://lartc.org/), <acronym title="Wireless Distribution System">WDS</acronym>, [bandwidth](http://people.ee.ethz.ch/~oetiker/webtools/mrtg/) [usage](http://iptraf.seul.org/) [monitoring](http://www.ntop.org/), and lots of other über-geeky stuff. This is barely scratching the surface of what you can do with this great little box: check out the [hardware pr0n](http://openwrt.org/OpenWrtDocs/Customizing)!

Can *you* hack a [VGA output](http://openwrt.org/OpenWrtDocs/Customizing#head-984ddd07d3fc87694614ea8c06d3581edad9d78c) into *your* router?
