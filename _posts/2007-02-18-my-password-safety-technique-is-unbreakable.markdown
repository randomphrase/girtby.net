---
layout: post
status: publish
published: true
title: My Password Safety Technique Is Unbreakable
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Well, maybe not entirely unbreakable. You be the judge.

wordpress_id: 1325
wordpress_url: http://girtby.net/2007/02/18/my-password-safety-technique-is-unbreakable
date: 2007-02-18 05:13:00.000000000 -06:00
categories:
- Nerd Factor X
tags:
- gnupg
- encryption
- emacs
- security
- password
comments:
- id: 1551
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2007-02-18 05:13:00 -0600'
  date_gmt: '2007-02-18 05:13:00 -0600'
  content: |-
    I do pretty much the same thing, except <code>s/Emacs/vim/</code>.

    Actually, I think the “password list in a GPG-encrypted textfile” pattern is a pretty standard computer geek life hack.
- id: 1552
  author: Matt
  author_email: mmanzel@gmail.com
  author_url: ''
  date: '2007-02-18 05:13:00 -0600'
  date_gmt: '2007-02-18 05:13:00 -0600'
  content: This is convenient and safe against getting your passwords stuck in a proprietary
    database but it is not foolproof. Since you are opening your decrypted text files
    in a general purpose editor, you risk your passwords getting copied to disk via
    the swapfile or a core dump.
- id: 1553
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-02-18 05:13:00 -0600'
  date_gmt: '2007-02-18 05:13:00 -0600'
  content: |-
    Matt, the EasyPG guys thought about the data being stolen from a core dump. Check out [their site](http://www.easypg.org/#security).

    Securing against data loss through the swap file ... sounds like a hard problem.
- id: 1554
  author: Brant
  author_email: ''
  author_url: ''
  date: '2007-02-18 05:13:00 -0600'
  date_gmt: '2007-02-18 05:13:00 -0600'
  content: Encrypting your swap space is possible on Linux and MacOS X (There are
    plenty of disk encryption tutorials and methods in Linux; In OS X, it's in Security
    in System Preferences).  Not sure about Windows though.  Maybe it's a new feature
    in Vista or Server 2007. (Could be in XP too, but I've never looked)
---
Well, maybe not entirely unbreakable. You be the judge.

<a id="more"></a><a id="more-1325"></a>

#### Password Database

These days you have to have a password database. I believe Bruce Schneier's [Password Safe](http://www.schneier.com/passsafe.html) was one of the first but there are now a multitude.

The idea is this: because every single frigging website requires a login these days, and you would be an idiot to give them all the same password, hence you need a way of keeping track of them all. The password database stores the password in an encrypted database. You have to remember the password for the database, obviously, but it's a lot easier to remember one than a hundred.

#### Complementary Technologies

I've been using a password database for years now, in co-operation with a couple of techniques which I will recommend to you first:

 * The [Passwd Composer](http://www.xs4all.nl/~jlpoutre/BoT/Javascript/PasswordComposer/) is an ingenious method of generating a password for a website login. Basically you remember a single static password, and the composer generates a new password for the site based on a MD5 of the static password and the site's domain.

   I have found this works extremely well in general but can go wrong in some situations. Say you want to create an account on example.com and it redirects you to register.example.com where you fill in the information including your password. If you use the password composer, you need to be careful to recognise that the current domain is not the one you will be logging into later (e.g. www.example.com, or even login.example.com). In very unusual cases the site can sometimes even use HTTP-based (as opposed to form-based) authentication, and the password composer doesn't even get a chance to run.

   In any event the password composer doesn't eliminate the need for a password database because you often want to store the fact that you *have* an account on example.com, perhaps with the unique username that you chose for that site.

 * I am also totally addicted to [Google Browser Sync](http://www.google.com/tools/firefox/browsersync/) and even trust it with my comparatively low risk passwords that I don't want to have to re-enter all the time. Most often these are passwords that have been composed by the above technique. This is not a substitute for a password database for the obvious reason.

#### What to Put In There

So if you have to have a password database you can end up using it for all sorts of useful personal information that you don't want to lose but occasionally need. Serial numbers for purchased software, SSNs, TFNs, insurance policy numbers, etc etc.

<div class="aside"><p>The location of my password database and the master password are on file with my solicitor for the executor of my will to find. Perhaps this is going too far.</p></div>

Of course some of these things are more sensitive than others so you might want to have multiple password databases, based on the vulnerability of the database and the sensitivity of the information contained. Stuff about your bank details probably shouldn't be on your laptop, for instance.

#### Which One?

Over the years I have tried several password databases, particularly when I was carrying a Palm device and there were password databases that synchronised between mobile and desktop. Eventually I gave up the Palm and was stuck with a database of passwords in a proprietary format. For a while I continued to use the Windows-based desktop application to access my passwords. I needed to move, and fortunately the application supported [data](/articles/2006/8/14/towards-a-common-blog-export-format) [export](/articles/2006/12/1/is-that-a-wiki-in-your-pocket), and I ended up with a CSV formatted text file containing my online life.

At the time I turned to standard encryption software, namely [GnuPG](http://www.gnupg.org/) to encrypt the file while I could find a suitable alternative password database which would allow me to import the CSV file. Eventually I realised that I didn't need a password 'database' as such, as long as I could edit the GnuPG-encrypted file in a vaguely modern text editor. Like emacs.

#### Enter [EasyPG](http://www.easypg.org/)

"EasyPG is an all-in-one GnuPG interface for Emacs". It's pretty cool, and it is now my password "database". Here's how it works.

Firstly I install the EasyPG mode into emacs, including the appropriate `.emacs` magic. Then any file ending in `.gpg` will be encrypted and decrypted with GnuPG. Et voila:

<img src="/images/emacs-password.png" border="0" height="326" width="539" alt="emacs-password.png" class="centered" />

Here we are saving the file after adding some secret information, and EasyPG is asking how to encrypt it. Ordinarily there would be a list containing all the keys on my GnuPG keyring, but I have used a buffer-local variable (set on the first line of the file) to indicate that it should encrypt the file using my public key.

Incidentally I chose not to use symmetric encryption for my password files. This has the disadvantage of requiring my GnuPG private key in order to decrypt the file, and hence the private key has to be deployed in parallel with the password file. The downside with symmetric encryption is that you need to enter the master password when you open *and save* the file. In the name of security, EasyPG does not cache this password by default. So to open a symmetrically-encrypted file, make a change and save it requires *at least* three entries of the password. Using asymmetric encryption requires the password only once.

Another great advantage of using emacs is that all of the editing features are present. For example I can *merge* two password files using emacs' very powerful built-in merging features. Or I can format it using outline mode for easy navigation (although incremental search is sufficient for me for now).

<div class="aside"><p>Before discovering EasyPG I used the aging <a href="http://mailcrypt.sourceforge.net/">Mailcrypt</a> package with a script I found on the EmacsWiki to associate with <code>.gpg</code> files. I switch to EasyPG because Mailcrypt couldn't handle binary encrypted files, and also it precluded the use of other major editing modes such as outline. Worth the change IMHO.</p></div>

So that's it. I'm pretty happy with managing my passwords this way. For a quick password check I don't need to fire up emacs, I just use GnuPG directly on the command line:

    gpg -d Documents/serials.gpg |less

Works well, cross platform, no proprietary software, no data lock-in. Wish I could say the same for my music collection, but that's another story.
