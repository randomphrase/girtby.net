---
layout: post
status: publish
published: true
title: Punctuation Insensitivity
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  So I'm trying to decide whether my [recent encounter with rogue punctuation](/archives/2005/11/27/making-trouble/) is an extension of [Julian's arguments about case insensitivity](http://www.somethinkodd.com/oddthinking/2005/10/27/the-case-for-case-preserving-case-insensitivity/), or a counter argument.

  I'm sure you all read Julian's blog, but allow me to briefly summarise his argument. Basically he says that when capitalisation rules are ignored, the meaning of words is unchanged. So whether I write JULIAN or Julian, it is obvious that I am referring to the same person. Obvious to humans, that is. And hence it is desirable for computers to be using similar rules when dealing with information obtained from humans.

  > There is no longer any excuse for making humans learn and handle the quirks of the way computers store upper- and lower-case characters. Instead, software should handle the quirks of human language.

  It's hard to disagree with this. But it does pose the question: are there other types of transformations besides case changing that should be considered semantically neutral? And if so, should we expect software to deal with them?



wordpress_id: 158
wordpress_url: http://girtby.net/2008/09/05/punctuation-insensitivity
date: 2005-11-27 19:54:06.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1319
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://oddthinking.somethinkodd.com
  date: '2005-11-27 19:54:06 -0600'
  date_gmt: '2005-11-27 19:54:06 -0600'
  content: |-
    <p>Alastair,</p>

    <p>You raise some interesting points. I never would have thought to extend the argument to punctuation, but now that you have, I see it as a natural extension. </p>

    <p>I never considered underscore as an upper-case hyphen either. Cute idea!</p>

    <blockquote>I used a hyphen (-) when I should have used an en dash (–). </blockquote>

    <p>Drats! I thought you had used a minus sign: 2-3 = -1</p>

    <p>I think the distinction between case and punctuation is fairly clear, and you touched on it above: how reliable are the transformation (or equivalence) rules?</p>

    <p>We can reliably detect equivalence between a tab character and 8 space characters in formatting code, so most programing languages ignore it. </p>

    <p>I argue we can reliably detect equivalence between upper and lower case characters, so we should ignore it in more programming languages.</p>

    <p>I don't think general punctuation equivalence detection is (yet?) trustworthy enough to perform. So I am not calling for it (yet). </p>

    <p>Where it <em>is</em> reliable (e.g. hyphen versus en dash is a good example), then there's an argument to do some of it but the frequency of us making this distinction in a programming language seems rare, and hence low-priority. In a word-processor, on the other hand, I would argue that searching for "2-3" should match all the hyphen-variants; punctuation equivalence should be somewhat implemented.</p>

    <blockquote>valid for all cultures and languages</blockquote>

    <p>That's an ideal solution, but only one possibility. Appropriate meta-tagging of language encoding could allow language-specific rules to be implemented.</p>
- id: 1320
  author: Matt
  author_email: matt@mattrubinstein.com.au
  author_url: http://mattrubinstein.com.au
  date: '2005-11-27 19:54:06 -0600'
  date_gmt: '2005-11-27 19:54:06 -0600'
  content: |-
    <p>I know that all this stuff is ultimately to do with programming and programming languages, but in human languages it's not the case (yeah, yeah) that capitalisation is semantically empty. A random example from a boingboing entry about the Church of Scientology's secret weirdo facility:</p>

    <blockquote>The church offered a tour of the underground facility if KRQE would kill the piece, the station said in its newscast. Scientology also called KRQE's owner, Emmis Communications, and "sought the help of a powerful New Mexican lawmaker" to lobby against airing the piece, the station reported on its Web site...</blockquote>

    <p>What happens if you lower-case the capital "N" in "a powerful New Mexican lawmaker"?
    One is a member of the NM legislature, the other a pro wrestling contender.</p>
- id: 1321
  author: Richard
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2005-11-27 19:54:06 -0600'
  date_gmt: '2005-11-27 19:54:06 -0600'
  content: |-
    <p>I think the main problem with extending the case insensitivity argument to punctuation is that case operates at the word level, while punctuation is almost entirely grammatical: the order of complexity that your punctuation transforms need to handle (and that a human might still interpret differently) is just too high in the general case.</p>

    <p>It's this complexity argument that keeps most programming languages dependent on synchronization tokens, and their compilers from automatically (for example) inserting a missing semicolon at the end of a statement, or correcting a mismatched bracket. The corrected version could be doing something completely different to what was intended, because you forgot to close a bracket, end a statement, etc. Languages like Haskell and Python have broken out of the terminator addiction through their use of semantic indenting, but they still can't go throwing extra brackets into arbitrary expressions.</p>
---
So I'm trying to decide whether my [recent encounter with rogue punctuation](/archives/2005/11/27/making-trouble/) is an extension of [Julian's arguments about case insensitivity](http://www.somethinkodd.com/oddthinking/2005/10/27/the-case-for-case-preserving-case-insensitivity/), or a counter argument.

I'm sure you all read Julian's blog, but allow me to briefly summarise his argument. Basically he says that when capitalisation rules are ignored, the meaning of words is unchanged. So whether I write JULIAN or Julian, it is obvious that I am referring to the same person. Obvious to humans, that is. And hence it is desirable for computers to be using similar rules when dealing with information obtained from humans.

> There is no longer any excuse for making humans learn and handle the quirks of the way computers store upper- and lower-case characters. Instead, software should handle the quirks of human language.

It's hard to disagree with this. But it does pose the question: are there other types of transformations besides case changing that should be considered semantically neutral? And if so, should we expect software to deal with them?



<a id="more"></a><a id="more-158"></a>


#### Hyphen-ventilating

Consider the following sentence:

You are 2-3 times more likely to use correct punctuation than I.

Did you spot the deliberate punctuation mistake?

No? It's not an easy one. I used a hyphen (-) when I [should have](http://www.alistapart.com/articles/emen/) used an en dash (&ndash;). Don't know or care about the difference? You're not alone, I think it's fair to say that in everyday writing, hyphens and en dashes are more or less interchangeable.

In this case it seems a fairly easy prospect for a computer to make the relevant transformation in order to determine equivalence between two passages of text. So it could, for example, realise that "Accounts 2004-2005.doc" is really the same file as "Accounts 2004&ndash;2005.doc".

Software developers may find it more relevant to ask whether underscore (_) is really a upper case hyphen? After all, on my keyboard anyway, the former is the shifted version of the latter. So does this deserve to get the case-insensitivity rule applied? Is `ip-address` really a typo for `ip_address`? I would say most people would regard these as equivalent, at least to the degree of similarity between `ipaddress` and `IPAddress`.

#### Apostrophe's For Sale

Sometimes punctuation can be added without loss in meaning. The infamous [grocer's apostrophe][1] is a good example of this: "Apple's for sale" means the same thing as "Apples for sale". And there's also my personal punctuational bugbear, the possessive "it's". Just as with capitalisation, there is of course no argument about the grammatical incorrectness of these examples. But humans are of course fallible, and the computers should be accommodating our flaws, particularly when the intended meaning is still easily discernible.

However, unlike the relatively simple case transformation, it's not obvious to me whether or not a computer could perform these transformations correctly in every instance.

The challenge here is in detecting false positives, or in other words, detecting transformations which are not semantically neutral. Just ask the proverbial panda who [eats, shoots and leaves](http://en.wikipedia.org/wiki/Eats%2C_Shoots_and_Leaves). Here, adding the comma *changes the meaning of the sentence* and hence should not be considered the same sentence by a computer.

#### The Slippery Slope

So if we allow computers to deal with case-abuse by making them case insensitive, should we not also empower them to deal with punctuation abuse also? If not, why the discrepancy?

The pragmatic answer is probably that punctuation insensitivity is highly complex, or at least non-obvious. Perhaps punctuation problems are relatively uncommon, and so the benefit of making punctuation-insensitive software is not worth the cost of this complexity.

So while it seems quite arbitrary to say that unintentional capitalisation problems will be handled transparently, but not accidental punctuation problems, it should be accepted that there is almost certainly no one answer to What The User Expects the computer to do in all cases of the latter kind. Hence providing case insensitivity but not punctuation insensitivity is probably a reasonable compromise for now.

#### The Case Against

On the other hand, I can imagine a purist approach which says that unless it can be guaranteed that the computer will handle in an identical manner all possible inputs that are sematically equivalent to each other, then all bets are off. An all-or-nothing approach in other words.

I have some sympathy for this position. Implementing case insensitivity is really a special case (erk) which does not apply to the majority of the world's written languages (or even to a majority of the worlds writers). I shudder to think what other transformations would be reasonably demanded to support languages other than the Indo-European ones.

In short, it may be easier to just adopt a "no transformation" policy when it comes to determining if one sequence of characters should be regarded as equivalent to another. (Excepting the behind-the-scenes transforms that are allowed by Unicode such as character composition). The alternative is devising a set of transforms that are universally accepted as being valid for all cultures and languages.

This is left as an exercise for the reader. Extra marks for working code.

[1]: http://en.wikipedia.org/wiki/Apostrophe_(mark)#Greengrocers.27_apostrophe
