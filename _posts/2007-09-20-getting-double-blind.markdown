---
layout: post
status: publish
published: true
title: Getting Double-Blind
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "So in my discussion about [headcycles](/archives/2007/8/29/strapping-a-motorcycle-to-your-head)
  I alluded to the possibility of detecting audio compression flaws with my fancy
  new equipment. By this I mean artifacts that are introduced as a result of the lossy
  process that squeezes audio into MP3s, AACs and so forth. I decided to conduct a
  double-blind test on myself to test that hypothesis.\r\n\r\n\r\n"
wordpress_id: 1987
wordpress_url: http://girtby.net/2007/11/13/getting-double-blind
date: 2007-09-20 11:41:00.000000000 -05:00
categories:
- Nerd Factor X
- Me Use Brain
tags: []
comments:
- id: 1624
  author: dave
  author_email: david.scotson@gmail.com
  author_url: ''
  date: '2007-09-20 11:41:00 -0500'
  date_gmt: '2007-09-20 11:41:00 -0500'
  content: |-
    I've never used this software myself, but I have been reading hydrogenaudio.org (where double-blind testing is a bit of a hot topic) for a long time, and did do a tiny bit of stats a long time ago. So I may be wrong but when you say "it really did feel like guessing" then you're very close to the truth since I think you really want to be getting 7 out 8 to establish that it's not just random chance. Or even better doing more trials to give it more data.

    They [HydrogenAudio wiki][1] suggests that doing 16 trials and getting 13 correct is the minimum before you can conclude that you're not just guessing:

    dave


      [1]: http://wiki.hydrogenaudio.org/index.php?title=ABX
- id: 1625
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-09-20 11:41:00 -0500'
  date_gmt: '2007-09-20 11:41:00 -0500'
  content: |-
    Thanks dave, good points.

    I would only say that just because it feels like guessing doesn't mean that it's random. There may be some difference which is detectable only at a subconscious level. In other words, even if I am not capable of articulating what the difference is, I may still be capable of detecting that there is a difference. Human perception is a funny thing.
---
So in my discussion about [headcycles](/archives/2007/8/29/strapping-a-motorcycle-to-your-head) I alluded to the possibility of detecting audio compression flaws with my fancy new equipment. By this I mean artifacts that are introduced as a result of the lossy process that squeezes audio into MP3s, AACs and so forth. I decided to conduct a double-blind test on myself to test that hypothesis.


<a id="more"></a><a id="more-1987"></a>

#### Methodology and Apparatus

Like any good amateur scientist I wanted to devise an experiment which would allow me to test my hypothesis. And by "devise an experiment" I mean "trawl the internet for software which might be suitable". After a bit, [I found some](http://ff123.net/abchr/abchr.html).

It's called ABC/HR, and it is designed mainly for conducting large-scale quality evaluation of audio codecs. This is almost but not quite what I wanted. I didn't want to evaluate the codec, I wanted to evaluate my equipment and my listening ability. Subtle difference.

Fortunately however ABC/HR has an "ABX" mode. This is apparently supposed to train the user to identify the differences between two similar samples. It allows you to select two samples A and B and randomly chooses one of these to be X. You have to listen to the samples and determine which of these is X. The test is repeated a certain number of times.

During the test you get to switch at any time between A, B, and X. Playback is continuous, meaning that if you switch to a different sample it will continue where the first sample left off (modulo some occasional audio glitches).

<img src="/assets/2007/09/abx-test-screenshot.png" alt="ABX test screenshot" title="abx-test-screenshot" width="346" height="418" class="size-full wp-image-3726 lede" />There is a fair bit of theory here which I can't be bothered with, and hence will happily refer you to the references cited on the ABC/HR site for more information. But somehow from this theory and some configuration parameters it produces results in the form of probabilities that you falsely accept that A is different from, or the same as, B. See the screenshot for an example.

I did this test using the following test tracks, chosen more or less at random from the [plastic reciepts](/archives/2005/10/8/a-cd-see) that were easily accessible at the time:

 * Race:In by Battles, an instrumental rock number
 * Tabula Rasa, a great modern classical piece by the Estonian composer Avro P&auml;rt
 * Camping Next To Water by Badly Drawn Boy, kindof indie/folk I guess
 * Every Planet We Reach Is Dead by Gorrilaz, a pop song more or less

Each of these I ripped from CD using two different methods. First, the uncompressed .WAV file using the latest version of [Exact Audio Copy](http://www.exactaudiocopy.de/). Second, a compressed 128 Kbps AAC file using the latest iTunes. The latter was converted to a .WAV for the purpose of the test using FAAD2.

I set up test files for each of the songs and loaded them up in ABC/HR, and settled in for a bit of a listen, with a beverage to aid concentration.

#### Results

Here are the results. P1 is the probability of falsely accepting that "A is different from B". P2 is the probability of falsely accepting that "A is the same as B". In each case A was the uncompressed sample, and B the compressed sample.

<div><table border="1">
<tr><th align="left">Song</th><th>Correct Trials</th><th>P1</th><th>P2</th></tr>
<tr><td>Race:In</td><td>5 of 8</td><td>0.363</td><td>0.005</td></tr>
<tr><td>Tabula Rasa</td><td>4 of 8</td><td>0.637</td><td>&lt; 0.001</td></tr>
<tr><td>Camping</td><td>6 of 8</td><td>0.145</td><td>0.038</td></tr>
<tr><td>Every Planet</td><td>4 of 8</td><td>0.637</td><td>&lt; 0.001</td></tr>
</table></div>

I can also report by way of results that I found the test *extremely* difficult. In a lot of cases it really did feel like guessing. I tried initially to pick out individual artifacts in the compressed sample, but quickly decided that it was too hard. For most of the tests I was simply trying to intuit the right answer based on an overall impression of the sample.

#### Interpretation

As you can see I didn't get many trials right. The probabilities however are the most interesting part.

For a couple of the songs I had a better than even probability of falsely accepting the compressed version as different to the uncompressed. For the other two, the probability dropped below 0.5. I'm not sure if you can simply average these probabilities though so I won't.

However there does seem to be a pretty good trend on the second set of probabilities. In other words it seems that I am extremely unlikely to falsely accept that the two samples are the same.

#### Conclusion

I think this all means that I can notice some very marginal difference, but there's really not a lot in it. So, based on the results, and the experience of actually conducting the test, I feel no need to re-rip all of my 128Kbps AAC files. I might rip future CDs at 160Kbps just to give a bit of extra headroom, but after that it's just a waste of space/bandwidth.

An alternative conclusion might be that I need to buy even more expensive headphones, so that I *can* hear the AAC compression artifacts! Yeah, that's it.
