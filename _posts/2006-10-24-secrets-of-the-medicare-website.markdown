---
layout: post
status: publish
published: true
title: Secrets Of The Medicare Website
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  By now most people who have had any dealings with a large institution will have been asked what their mother's maiden name is.

  The first time you encounter this, it makes you do a bit of a double-take and wonder how such information can be relevant to anyone. Look into it a bit further and you see they are simply trying to establish a method of authenticating you, probably as a backup for a password-based authentication system.

  These secret questions, as I like to call them, are becoming more common. But there are many mistakes your institution can make in trying to implement them. In my dealings with a large Australian government website, I encountered many of them.

  A war story follows.



wordpress_id: 215
wordpress_url: http://girtby.net/2008/08/15/secrets-of-the-medicare-website
date: 2006-10-24 09:29:00.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
- Me Use Brain
tags: []
comments: []
---
By now most people who have had any dealings with a large institution will have been asked what their mother's maiden name is.

The first time you encounter this, it makes you do a bit of a double-take and wonder how such information can be relevant to anyone. Look into it a bit further and you see they are simply trying to establish a method of authenticating you, probably as a backup for a password-based authentication system.

These secret questions, as I like to call them, are becoming more common. But there are many mistakes your institution can make in trying to implement them. In my dealings with a large Australian government website, I encountered many of them.

A war story follows.



<a id="more"></a><a id="more-215"></a>

#### Secrets Of The Medicare Website

<div class="aside"><p>For any non-Australians reading, it should be pointed out that Medicare Australia is the government-run public health program. Unlike the US namesake everyone in Australia is likely to use their services. The ubiquity of this service, as well as the sensitivity of health-related information, should be kept in mind when reading below.</p></div>

Logging into the [Medicare Online](http://www.medicareaustralia.gov.au/yourhealth/our_services/CoinHomepagePRD.htm) website for the first time I was presented with a very intimidating form. After entering the password that they sent to me by mail, they wanted me to set up some secret questions and answers. No less than *five* secret questions, and I had to supply both the questions and the answers that would conform to their three bullet points of security:

>   For authentication purposes, please record 5 different Questions and Answers in the fields below. Questions and Answers are not case sensitive. For security and convenience please ensure:
>
> * your Answers are only known to yourself,
> * your Answers are not related to your log on name and password, and
> * the Answer is difficult for people to guess even if they see your questions.
>
> Example: What is my mothers maiden name?

Sighing inwardly, I recalled a [Schneier column](http://www.computerworld.com/securitytopics/security/story/0,,99628,00.html) where he described the security problems of such secret questions. In short: the answers to secret questions are almost always easier to guess than passwords, and hence are a poor substitute or backup.

#### Schneier's Advice

So upon seeing the 5 secret questions form, my first instinct was to create questions and answers as follows:

Question *n*: What is the answer to question *n*?
Answer *n*: (Title of [Random article from Wikipedia](http://en.wikipedia.org/wiki/Special:Random).)

This requires me to remember those five random article titles forever in my password database. Along with the password I had created for the site. Grrr.

But then I read Schneier's article linked above, and he convinced me otherwise. He described how he responded to secret questions:

> My usual technique is to type a completely random answer -- I madly slap at my keyboard for a few seconds -- and then forget about it. This ensures that some attacker can't bypass my password and try to guess the answer to my secret question, but is pretty unpleasant if I forget my password. The one time this happened to me, I had to call the company to get my password and question reset.

So that's exactly what I did: bash at the keyboard for a bit and hit submit.

For the questions I selected "these", "questions", "are", "really", "stupid". I don't know why -- I should have just typed gibberish for these as well as the answers -- but this turned out to be a really good idea, as we shall see.

#### Ask a Secret Question, Get a Secret Answer

After setting up my 5 secret questions and answers, I discovered that in order to do anything useful on the Medicare website you need to apply for a "Higher Access Level". And guess what you need to do?

> For your protection you are required to further prove who you are, by answering two of your secret questions and answers. When you are successful, you will be asked to enter your current Medicare card address as a final verification.

For my protection, two of the five questions were posed and awaited my response. In order to proceed, I needed to know exactly what was the jibberish I had entered a few seconds ago. An impossible task, surely? There's no way I could reproduce the same sequence of keys on the keyboard. The Firefox AutoComplete feature was bringing back some jibberish, but apparently not the right jibberish.

<div class="aside"><p>I think what was happening was this. The original secret Q&A form had fields with names answer1 through answer5. The subsequent Higher Access Level form had fields with names answer1 and answer2. I think that Firefox was using my first two secret answers, regardless of the secret questions, and mostly getting them wrong. I suspect that I could have kept hitting refresh until it prompted me for secret question 1 and 2, and used the AutoCompleted answers.</p></div>

After a bit of googling I found the [dumpAutoComplete](http://www.foundstone.com/resources/proddesc/dumpautocomplete.htm) tool. This is a tool to mine the information in the AutoComplete database. When you submit a form, Firefox stores the contents of most string fields in this database. Unfortunately there's no way to view the contents of this database from within Firefox. Instead I had to quit the browser, which wrote out the form data to disk, ran the dumpAutoComplete tool, and loaded it up in a text editor where a bit of visual grepping found the answer1 through answer5 fields and the corresponding jibberish. Because I had used identifiable questions, I was able to select the right answers from the form data.

This process was almost certainly quicker (and more pleasant) than calling Medicare and explaining the situation. I particularly dreaded explaining to a customer service rep why I couldn't answer my own secret questions that I entered a few minutes earlier, on the advice of a world-renown security expert. So I was very relieved to get this information out of the browser autocomplete file.

#### Security of Form Data

Here is where we can see some security problems with Medicare's implementation of secret question. Secret information can be entered into a `<input type="password">` field and it can be assumed that the browser will keep the contents secure. Other form data such as `<input type="text">` is not as secure and is handled differently.

For example, by default Firefox stores text form data in its database. It is possible to disable this globally, but not on a per-instance basis. On the other hand, each time a password is saved to the password database, the user is prompted. Password data is not shared across sites but other form data *is*. So I'm pretty sure I could easily retrieve secret answers from people by using a phishing site and relying on AutoComplete to do the rest.

In short, the secret answers should be secured as passwords are, namely in `<input type="password">`.

#### Don't Like That Question? Here's Another

It should be reiterated that at the point I attempted to upgrade to Higher Access Level I was already logged in. The initial login password had been sent by mail, and on first login I had been prompted to change the password. The website had *verified* that my new password met some arbitary complexity criteria.

And yet Medicare had assumed that the level of security afforded by all these checks was not sufficient because they also asked the secret questions when upgrading.

In fact it's worse than this, because they asked two of the five original secret questions, picked *at random*. I played with this a while, just hitting refresh was enough to cause the website to pick a different pair of questions to ask. This means that if all I know are the answers to two out of the five questions, I can just hit refresh until those two questions are presented, and I'm in. It's like having five locks on a door, but allowing the door to be opened by picking any two of them.

#### Secret Questions As A "Better" Password

The idea that secret questions should be used as an additional level of authentication is a suspect one because in general, there is no reason to suspect that secret questions are more secure than passwords.

The main problem is that even the "difficult to guess" secret answers are nowhere near difficult enough to guess, as mentioned in Schneier's article. But I think there are other problems.

Due to the difficulty of formulating the questions, it is highly likely that questions such as the canonical mother's maiden name will be reused multiple institutions which use the same secret question approach. In other words multiple organisations will have access to this shared secret information. This is unlike a password where it is possible (and recommended) to use unique credentials for each.

Also, the secret questions and answers typically *cannot be changed*. This seems to be true for the Medicare site, and likely others as well. By definition the secret answer must be easy to remember, hence static. So if you find your secret question compromised (eg such as might happen if your mother divorces and reverts to her maiden name) you need to choose a different secret question. (And remember to never use it again subsequently)

So we have a system of authentication where the secrets are commonly shared across multiple organisations and cannot easily be changed. Are the warning bells going off yet?

#### User-Selected Questions

The Medicare system might seem, at first glance, to be better than most secret question authentication schemes because it lets the user create their own questions. After all they can potentially ask really obscure questions. But let's think about it for a moment.

Firstly, it's *hard* to think up a question and answer pair which satisfies the requirements of being easier to remember than passwords, but not guessable or knowable by others. For example, I could use "what is my favourite TV show?" But this is very easy information to obtain. The obvious attack is a social engineering one: pose as a market researcher and ask my SO (who is unaware that this question is a secret one) about TV viewing habits in the household.

So thinking up questions is hard. Here, multiply that level of difficulty by five.

Secondly, it generally requires some experience in security, in order to know what is guessable or knowable by others. For instance I know enough security to know about the social engineering attack mentioned previously. But would an average Joe know this? For each question you have to consider how you would mount an attack to determine the answer. In my opinion it is totally unreasonable to expect users of a system to have the expertise required to do this.

Thirdly, even a sufficiently savvy user is entirely unmotivated to do the right thing here anyway, because they have a goal that is entirely unrelated to authentication. The goal is to *use the website*, and any mistakes they make or shortcuts they take in selecting a secret Q&A are not necessarily going to result in a security breach for weeks or months or years after. In short, this is the web equivalent of the Windows [Find Setup Wizard](http://www.joelonsoftware.com/uibook/chapters/fog0000000059.html), and a usability disaster.

#### HOWNOTTO: Use Secret Questions

Let me finally wrap up with a summary, presented as a list of things for you (Medicare) to do when they next redesign their website.

 * **Get professional security advice.** I am just some random guy on the internet and I can see that your site security is broken in so many ways. Seriously, get help from someone who knows about this stuff. I think the lack of security experience was the source of the random-two-of-five-questions problem.

 * **Don't use secret questions.** As I hope I've demonstrated, there are too many ways to come unstuck. Find other ways of authenticating your users if they lose their password. How did you authenticate them in the first place?

These are the big two. But if you must use secret questions:

 * **Don't let users choose them.** You need to have an understanding of security in order to make secret questions secure, and most users won't have this. Nor should they be expected to.

 * **Let users change them.** The questions, that is. The answers leak out all the time.

 * **Use only as a backup to forgotten passwords.** Why? Because they are *not as secure* as passwords.

 * **Don't let them be saved to AutoComplete data.** Bit of a technical one.

That's about it for now. Join me next time on Medicare Website Disasters when I show how they violate their own privacy policy. Until then, goodnight.
