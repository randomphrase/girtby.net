---
layout: post
status: publish
published: true
title: Staging Wordpress With Bazaar
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "Version Control Systems, I've had a few. But then again, too few to mention.\r\n\r\nKeen
  observers will have noted that I have tended to blog each time I try out a new version
  control system, and this really isn't an exception. Except that, well I'm not just
  trying it out, I actually use [Bazaar](http://bazaar-vcs.org/) daily at `$WORK`,
  so and this is like after-hours practice.\r\n\r\nAnyway, I wanted to share this
  because I've found that maintaining a staging and production installation of wordpress,
  complete with custom modifications and a collection of plugins, is a problem ideally
  solved by a distributed source control. Plus I really like Bazaar, and wanted to
  show how easy it can be.\r\n\r\n"
wordpress_id: 3851
wordpress_url: http://girtby.net/?p=3851
date: 2009-02-24 22:03:18.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags:
- wordpress
- bzr
- vcs
comments:
- id: 2589
  author: JeroenH
  author_email: jeroen.hoekx@hamok.be
  author_url: ''
  date: '2009-02-24 23:21:32 -0600'
  date_gmt: '2009-02-24 12:21:32 -0600'
  content: |
    <p>Helpful overview. My workflow is similar. You might be interested in the <a href="https://launchpad.net/bzr-push-and-update/" rel="nofollow">push and update plugin</a> for deploying to another server. It auto-updates the remote branch when you push, so there's no need to ssh to the remote host yourself.</p>
- id: 15179
  author: Jonno
  author_email: jon@jonathanmao.com
  author_url: ''
  date: '2009-09-30 12:44:34 -0500'
  date_gmt: '2009-09-30 01:44:34 -0500'
  content: |
    <p>Great info. Would love to see a "dummy" or tutorial version of this. Expanded and detailed for users like me who aren't programmers :-)</p>

    <p>Something that a user could follow, step by step, with no prior knowledge but with some experience.</p>
---
Version Control Systems, I've had a few. But then again, too few to mention.

Keen observers will have noted that I have tended to blog each time I try out a new version control system, and this really isn't an exception. Except that, well I'm not just trying it out, I actually use [Bazaar](http://bazaar-vcs.org/) daily at `$WORK`, so and this is like after-hours practice.

Anyway, I wanted to share this because I've found that maintaining a staging and production installation of wordpress, complete with custom modifications and a collection of plugins, is a problem ideally solved by a distributed source control. Plus I really like Bazaar, and wanted to show how easy it can be.

<a id="more"></a><a id="more-3851"></a>

I refer to two different machines here, one of which is the production server (ie my hosting provider), and one of which is the staging server (ie my personal machine). Don't let the fancy terminology put you off; mentally substitute "my box" and "their box" if it helps you.

#### Setting up a Local Wordpress Instance

On my staging server I branched the wordpress source from [launchpad's](https://code.launchpad.net/wordpress) Wordpress repository, which is regularly synced with the official repository:

    [s] $ bzr branch lp:wordpress

[I'll use an `[s]` to denote commands run on a staging server, and `[p]` for commands run on the production server.]

This command creates a "working tree" of the wordpress source code &mdash; a set of files and directories &mdash; and an accompanying repository of revisions. At any time the working tree corresponds to one of the revisions in the repository, plus any uncommitted changes. Each commit creates a new revision in the repository. Pretty standard stuff really.

So for a new wordpress installation I add the wp-config.php file and commit it:

    [s] $ bzr add wp-config.php
    [s] $ bzr commit -m "Added config file"

See the [codex](http://codex.wordpress.org/MacOS_X_Local_Mirror) for other local setup instructions, I just want to focus on the source control tool for now.

Unless you've used distributed version control systems before, you might be a bit wary at this point, perhaps wondering what happens when I next communicate with the upstream repository. But fear not, this is exactly the point of a DVCS. I've created an independent branch, and the parent branch doesn't even need to know about mine. So, I can quite happily make changes of my own and also merge in upstream changes, knowing that it is all tracked correctly.

But for now let's look at going the other way: publishing my changes to the world.

#### Uploading to the Production Server

One of the cool things about Bazaar is that it supports many different protocols for publishing branches. So for example, I can just push my branch to the hosting server using sftp:

    [s] $ bzr push sftp://girtby.net/home/alastair/wordpress

This will create a repository on the remote server containing all the revisions in my local repository. It will not, however, create an associated working tree. Bazaar does not (yet?) support updating a working tree over sftp. I guess there are too many potential issues with local conflicts and such. Anyway the solution is to ssh into the production box and do a checkout of the published branch:

    [p] $ cd ~/wordpress
    [p] $ bzr co .

What's that? You don't have Bazaar installed on your hosting provider? No problem - all you need is python. Just extract Bazaar into your home directory somewhere, add the bin directory to your path, and you're away. You don't even need to compile anything.

Of course there are many other tasks to set up a production wordpress, but again let's just focus on getting a Bazaar branch associated with the source files.

#### Another Way

Of course you could bootstrap everything the other way around. Start with a working wordpress installation on your production server, create a bazaar repository for it, then copy *that* to your local machine. This would be something like:

    [p] $ cd ~/wordpress
    [p] $ bzr init .
    [p] $ bzr add .
    [... bzr rm --keep or bzr ignore the files you don't want ...]
    [p] $ bzr commit -m "initial checkin"

You would then branch it locally using:

    [s] $ bzr branch sftp://server/path/to/wordpress

#### Staying in Sync

At this point you have two Bazaar branches, and they can easily be kept in sync as follows. First let's make sure we're running the latest wordpress on our staging server:

    [s] $ bzr merge lp:wordpress

This just says to merge the latest changes from upstream. As always with merging there is the possibility of a conflict; you make a change that conflicts with the change on the merge source. In general Bazaar is very good at handling these, and anyway you're very unlikely to encounter them unless you're making modifications to the Wordpress core.

At this stage it's a great idea to test the installation locally. Hypothetically, if there were any [unit tests](/archives/2008/12/29/software-that-goes-clunk/), you'd run them at this point. Otherwise, you can just check that the articles display properly, the admin interface works, and whatever else.

You can even see a summary of the changes that you're merging:

    [s] $ bzr status -v
    modified:
      wp-admin/admin-ajax.php
      wp-admin/custom-header.php
      [... snip ...]
    pending merges:
      westi 2009-02-22 Focus on the first blank field when asking for credentials for upgrade/instal...
        ryan 2009-02-22 Allow editing all of a plugin's files. see #6732
        westi 2009-02-22 Wrap the apply_filters call in a function_exists check as this can be calle...
        [... snip ...]

If everything looks OK, commit and push it up to the production server.

    [s] $ bzr commit -m "merge from upstream"
    [s] $ bzr push

It should have remembered the push location from last time. Also, just like last time the working tree will need to be updated:

    [p] $ bzr up

#### Eject! Eject!

So I've found wordpress trunk to be fairly stable, but should I ever need it, the DVCS provides a safety net.

If I discover a problem after merging in the latest upstream changes, I can quickly revert simply using the entirely surprising:

    [p] $ bzr revert

If, on the other hand I only discover the problem after pushing up to the production server, it's still quite easy:

    [p] $ bzr uncommit
    [p] $ bzr update

I can propagate that change back to my staging server by merging *back*:

    [s] $ bzr merge sftp://girtby.net/home/alastair/wordpress

But like I said, I haven't had to use this.

#### Synchronising Media

Changes made on the production server are generally easy to sync back to the staging server - I just download a database dump and import it locally. However media such as images are special because they are not stored in the database. Hence you need a way of getting them back to the staging server. I wonder what the answer could be?

Yep, just commit the changes on the production server and merge them back:

    [p] $ bzr add assets/2009/01/funny_picture.jpg
    [p] $ bzr commit -m "Added funny picture"

    [s] $ bzr merge sftp://girtby.net/home/alastair/wordpress

As noted before, the add command can recursively add all files in a directory, so you don't even need to specify the files individually.

#### Plugins/Themes

Plugins and themes are handled just like any other change. Just extract the plugin to the relevant directory, and add it to the repository:

    [s] $ unzip ~/Downloads/coolplugin.zip
    [s] $ bzr add coolplugin

At this point I'd probably activate and test the plugin locally, then commit and push to the production server as before.

Bazaar can also track file renames, deletions and moves, but you obviously have to tell it about them. So when coolplugin is updated, be sure to tell Bazaar about any relevant changes before committing:

    [s] $ bzr mv --after coolplugin/oldandbroken.php coolplugin/newhotness.php

The `--after` switch tells Bazaar not to actually do the move, instead it's already happened and we're just recording the fact.

#### Why Not...

... Wordpress auto-update? Put simply, I don't trust it. Will it let me manage my own patches to wordpress should they be [needed](/archives/2008/12/01/and-were-back/#comment-1946)? I don't think so. Also: FTP? What decade is this? Even FTPS, sheesh.

... git? Well no reason particularly. I've dabbled with git, but it never really *clicked* for me. The concepts and terminology and command set still seem slightly obscure to me: "Want to check in your changes? Just use 'git albatross'! Want to view checkin comments from the most recent merge? No problem, 'git ham-sandwich' is at your fingertips!" OK, I exaggerate a little.

... just shut up already? Oh, OK then.
