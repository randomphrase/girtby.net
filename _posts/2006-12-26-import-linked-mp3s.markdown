---
layout: page
status: publish
published: true
title: Import Linked MP3s Into iTunes
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3632
wordpress_url: http://girtby.net/?page_id=3632
date: 2006-12-26 21:09:37.000000000 -06:00
categories:
- Uncategorized
tags: []
comments: []
---
This page contains a collection of AppleScripts to import mp3 files into iTunes. There are currently two versions, one for Safari, and one for [NetNewsWire](http://ranchero.com/netnewswire/).

The basic strategy is to scan the HTML source of the currently-selected item, download any linked .mp3 files, and import them into iTunes. The main use case is for music-oriented blogs, where you might want to read each entry before importing the music into iTunes. As described in the [original post](/archives/2005/03/03/podcasting), this is sometimes better than a straight podcast.

This has been tested with NetNewsWire 2.0, but will probably work the 1.0 release if you're lucky.

Written by [Alastair](http://girtby.net). Licensed under the [Creative Commons Attribution License](http://creativecommons.org/licenses/by/2.0/)

[Download Script for NetNewsWire](/extras/Import%20Linked%20MP3s%20into%20iTunes%20-%20NNW.scpt)
[Download Script for Safari](/extras/Import%20Linked%20MP3s%20into%20iTunes%20-%20Safari.scpt)

### History

* 2005-03-03 : original release
* 2005-03-08 : updated for blogs like [music for robots](http://music.for-robots.com/) where the RSS feed doesn't have the linked MP3s. Now the script downloads the HTML for the full article and parses that for linked MP3s if none were found in the original post.
* 2005-03-09 : updated to fix a stoopid bug in deleting temporary files
* 2005-04-21 : Filters duplicate MP3 links
* 2005-04-26 : Can now add to playlist named after subscription or group. Creates if needed. Also error message if no headline selected.
* 2005-05-04 : Fixed bug that occurred with long filenames (sigh).
* 2005-05-17 : Added Safari version, sets the comment field of the imported MP3 to the source URL. Also removed the ability to download the full article text for the NNW version, as it is redundant with the Safari version.

### Installation (NetNewsWire)

1. Install the NNW script into the scripts folder: `~/Library/Application Support/NetNewsWire/Scripts`
1. Make sure you have have "Copy files into iTunes Music Folder when adding to Library" checked in the iTunes preferences.
1. (Optional) Open the script in the script editor, and change the name of the playlistName property to the name of the playlist you want to add new tracks to. Unless you set this property the playlist will be named after the group of the subscription (or just the subscription if it isn't in a group).

### Installation (Safari)

1. Open the AppleScript Utility (`/Applications/AppleScript`) and make sure the "Show Script Menu in menu bar" item is checked
1. Switch to Safari and select Open Safari Scripts folder from the script menu
1. Copy the script into the Safari Scripts folder.
1. Open the script in the script editor, and change the name of the playlistName property to the name of the playlist you want to add new tracks to.

### Gotchas

* When running, the script spins a beachball and does not allow you do use NetNewsWire/Safari. Bummer, that.
