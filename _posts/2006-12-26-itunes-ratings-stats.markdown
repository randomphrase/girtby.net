---
layout: page
status: publish
published: true
title: iTunes Ratings Statistics
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3624
wordpress_url: http://girtby.net/?page_id=3624
date: 2006-12-26 21:05:25.000000000 -06:00
categories:
- Uncategorized
tags: []
comments: []
---
#### What is it?

This is a script that will slice'n'dice your iTunes music library and tell you the distribution of rated tracks. You find out how many have one star, how many have two, etc. You also find out the percentages for each rating, as well as the cumulative percentage. Here's some sample output:

<blockquote>
<p>Here are some statistics from your iTunes Library:</p>
<p>4339 tracks, 613
          (14%) rated</p>
<table border="1">
<tr>
<td colspan="3"></td>
<th colspan="3">Cumulative % of rated</th>
</tr>
<tr>
<td></td>
<th>Number</th>
<th>% of rated</th>
<th>Actual</th>
<th>Target</th>
<th>Shortfall</th>
</tr>


  <tr>
<td>Tracks rated 5 stars:</td>
<td>6</td>
<td>1</td>
<td>1</td>
<td>5</td>
<td>4</td>
</tr>
  <tr>
<td>Tracks rated 4 stars:</td>
<td>136</td>
<td>22</td>
<td>23</td>
<td>15</td>
<td>-8</td>
</tr>
  <tr>
<td>Tracks rated 3 stars:</td>
<td>277</td>
<td>45</td>
<td>68</td>
<td>50</td>
<td>-18</td>
</tr>
  <tr>
<td>Tracks rated 2 stars:</td>
<td>160</td>
<td>26</td>
<td>94</td>
<td>90</td>
<td>-4</td>
</tr>
  <tr>
<td>Tracks rated 1 stars:</td>
<td>34</td>
<td>6</td>
<td>100</td>
</tr>
</table>
</blockquote>

Why is this useful? See the [accompanying blog post](/archives/2005/11/03/itunes-library-preening/) for more justification, but basically the idea is to tell you the distribution of ratings in your library in order to get some idea of how you are rating the tracks. Armed with this knowledge you can adjust the ratings to meet targets. For example, if you wanted to reserve a five-star rating for the top 10% of tracks, you might want to know the percentage of your current five-star tracks in order to know whether to demote some of them to four-stars, or to promote some of the four-star tracks to five.

#### Installation / Usage

Right-click on [itunesratings.xhtml](/extras/itunesratings.xhtml), choose "Save As..." (or "Download Linked File To..."), and save to your iTunes folder. This is the folder with your `iTunes Music Library.xml` file. On MacOS this is `~/Music/iTunes`, on Windows this is likely to be `My Documents\My Music\iTunes`.

From there, you should open it in an XSLT-capable browser. Right click on the document and choose "Open With" one of the following tested browsers:

 - Firefox (Windows or Mac)
 - Camino

At this time Safari is *not* supported. Come to think of it, none of these browsers are *supported*, I just mean that it currently won't work in Safari. Internet Explorer doesn't seem to work either, sorry. Get Firefox.

#### Customisation

You can adjust the target percentages for each rating. To do this, just open the document in a text editor. You will see the following lines:

    <count-rated rating="100" targetpct="5"/>
    <count-rated rating="80" targetpct="15"/>
    <count-rated rating="60" targetpct="50"/>
    <count-rated rating="40" targetpct="90"/>
    <count-rated rating="20"/>

Leave the `rating=` bits alone, but feel free to adjust the `targetpct` values. You can also change the order of the ratings, if you are so inclined.

#### History

- 2005-11-03: Initial release

Written by [Alastair](http://girtby.net). Licensed under the [Creative Commons Attribution License](http://creativecommons.org/licenses/by/2.0/)
