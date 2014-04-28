---
layout: post
status: publish
published: true
title: Control, Oh!
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 2099
wordpress_url: http://girtby.net/2007/10/28/control-oh
date: 2007-10-28 09:59:07.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1635
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.com/
  date: '2007-10-28 09:59:07 -0500'
  date_gmt: '2007-10-28 09:59:07 -0500'
  content: |-
    An interesting tip.  Thanks, Alastair.

    I have to say, though, that I find it easiest to use the "bang, first letter" sequence when I'm developing; e.g.,

    # !m &lt;RET&gt;
    # !t &lt;RET&gt;

    to run make and then the program itself.   (I allow . to be in my path when logged in as a regular user.)

    When things get more complicated, I find it easier to write a short script that does the sequence of commands.  I name this script "x" and put it in the directory that I'm working in.

    But, always good to know another way.
- id: 1636
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2007-10-28 09:59:07 -0500'
  date_gmt: '2007-10-28 09:59:07 -0500'
  content: Shortcuts? History expansions? *Scripts*!? What sort of universe do you
    people come from? When I get tired multiple up-arrow taps, I use the power of
    Ctrl-U/Ctrl-Y to compose the commands into a single `&&`-chain such as “`make
    && ./test`” so I can thenceforth repeat a single command.
---
So I'm brushing up on my shell-fu. In other words, working my way through the excellent and highly recommended <cite><a href="http://www.bash2zsh.com/">From Bash to Z Shell</a></cite>, skimming the bits I know and experimenting with the bits I didn't know. Here's something I didn't know; you may not either.

<div class="aside"><p>Ordinarily, a shell hint like this wouldn't make the bloggable threshold here on girtby.net, but I've been feeling a strong urge to blog again after an enforced absence, and this will do for now. Promise to return to regular <del>nonsense</del> service as soon as possible.</p></div>

By default in bash and zsh the control-o key has some very useful behaviour. Let's say you're in a compile/edit/test cycle and you're basically in a tight loop of shell commands. In this case you're probably doing what I would have in the past, namely using up-arrow or control-r to manually locate the next command to execute from the history list.

    % make
    ...
    % ./test
    ...

Try this at home (use "echo make" or similar). You quickly get bored of the double up-arrow to alternate between the two commands.

Control-o to the rescue!

Hit up-arrow twice to get back the to the `make` command, but *don't hit return*. Instead, hit control-o. This will execute the make command and leave you at the *next in the history list* &mdash; the `./test` command &mdash; ready to hit return again (or another control-o).

You can keep iterating through these two (or more!) commands with a single keystroke, each time previewing what you're going to execute. I like it.
