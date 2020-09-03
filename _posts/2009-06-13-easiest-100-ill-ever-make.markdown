---
layout: post
status: publish
published: true
title: Easiest $100 I'll Ever Make
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "Recently, before boarding a flight up to Hamilton Island for a $WORK <del>junket</del>
  conference, I purchased a puzzle book. On the flight, I shared the puzzles amongst
  colleagues, and fun was had. One particularly tricky puzzle confounded us all, although
  I recognised it as a variant of the [Monty Hall problem](http://en.wikipedia.org/wiki/Monty_Hall_problem).
  Alarm bells should be going off at this point for those who have debated the subject
  in the past...\r\n\r\nAnyway, one colleague didn't believe that the answer in the
  back of the book was correct, and he offered to bet that by running a computer simulation
  he could prove the book (and me) wrong. I'm not a betting person, but for some reason,
  possibly euphoria at the prospect of the upcoming <del>partying</del> seminars,
  I immediately accepted his bet, wagering $100.\r\n\r\nWhat follows is my attempt
  to win that bet.\r\n\r\n"
wordpress_id: 3890
wordpress_url: http://girtby.net/?p=3890
date: 2009-06-13 22:56:31.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags:
- c++
- monty hall
- wager
- puzzle
comments:
- id: 9671
  author: Alan Green
  author_email: alang@bright-green.com
  author_url: http://bright-green.com
  date: '2009-06-14 11:35:03 -0500'
  date_gmt: '2009-06-14 00:35:03 -0500'
  content: "<p>Sorry to say this, but I think your interpretation of the puzzle is
    only something that someone already familiar with the Monty Hall problem could
    twist out the puzzle's words.</p>\n\n<p>To make it work the way you coded, the
    puzzle would need to be interpreted as: </p>\n\n<blockquote>\n  <p>Four different
    pieces of candy are\n  placed in a bag. One is chocolate, one\n  is caramel, and
    two are licorice.\n  Without looking in the bag, I draw two\n  pieces of candy
    from it, then select \n  a drawn piece that is licorice and place \n  it on a
    table. </p>\n</blockquote>\n\n<p>However, the puzzle wording you quoted does not
    imply selection, rather that the  protagonist places a randomly selected piece
    on the table. </p>\n\n<p>I think the puzzle authors were looking for a Monty Hall
    variation and messed up, resulting in a riddle rather than a puzzle.</p>\n\n<p>By
    the way, I carefully did all the math, and I agree with JT, the <em>real</em>
    answer is indeed 1 in 3.</p>\n\n<p>I hope JT pays you in 5 sentimo coins, unwrapped
    and unbagged, helpfully strewn around around your desk, over a period of a year.
    (Your agreement said nothing about HOW the money was to be paid, right? ;)</p>\n"
- id: 9716
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-06-14 13:55:36 -0500'
  date_gmt: '2009-06-14 02:55:36 -0500'
  content: |
    <p>Alan, I agree the wording is not as precise as it could be, and I agree with your reword. But given that there is at least one licorice in the hand, how can the protagonist know which one it is, in order to put it on the table, <em>without</em> selecting it?</p>

    <p>To put it another way, if I was randomly selecting a candy from my hand and it had a 100% chance of being licorice, the chance that the other candy in my hand is licorice as well would have to be 100% also (since I <em>must</em> have picked both out of the bag to begin with).</p>

    <p>(So maybe we're both wrong :)</p>
- id: 9802
  author: Alan Green
  author_email: alang@bright-green.com
  author_url: http://bright-green.com
  date: '2009-06-14 18:34:03 -0500'
  date_gmt: '2009-06-14 07:34:03 -0500'
  content: |
    <p>I reject your speculation that I may be wrong.</p>

    <p>The protagonist doesn't need to know which candy is licorice in advance, as the question only deals with the subset of possible outcomes where he puts the licorice on the table. In other words, putting the licorice on the table is a given in the same way that drawing at least one licorice is a given.</p>

    <p>The puzzle question says:</p>

    <blockquote>
      <p>Without looking in the bag, I draw two
      pieces of candy from it, and place one
      of them, which is licorice, on a
      table.</p>
    </blockquote>

    <p>I don't see how a straight-forward reading of this question would be that candies are drawn randomly (so drawing at least one licorice must be a given for the question to make sense), but the order the candies are placed on the table is is non-random (so doesn't need to be a given). </p>

    <p>In hindsight, I see the sneaky phrase "in the bag" to qualify what is not being looked at. The puzzle authors have crafted a tricksy riddle, dependent upon a particular and peculiar parsing. John Howard would be intrigued and pleased that the puzzle's words have a meaning quite different from their face value. Alternatively, you might argue that the reader should know that different kinds of lollies each have a particular feel, but that is not necessarily true in my experience, and would be an unusual - and tricksy - assumption for a math puzzle. </p>

    <p>At this point, I'm going to quote xkcd at myself (http://www.xkcd.com/386/) and apologise to you for the John Howard reference. Sorry.</p>

    <p>PS: I calculate 77,456 5-sentimo coins.</p>
- id: 14287
  author: Chris
  author_email: csuter@sutes.co.uk
  author_url: http://sutes.co.uk/
  date: '2009-08-04 16:20:01 -0500'
  date_gmt: '2009-08-04 05:20:01 -0500'
  content: |
    <p>I agree with Alan. The problem isn’t clear. In your computer simulation, you rule out all cases where you don't pick at least one candy, but, given the wording, you could have had:</p>

    <pre><code>if (hand[0] != licorice)
                continue;
    </code></pre>

    <p>i.e. rule out all cases where the one that you put on the table isn’t a licorice candy, and that would give you the 1/3 probability.</p>
---
Recently, before boarding a flight up to Hamilton Island for a $WORK <del>junket</del> conference, I purchased a puzzle book. On the flight, I shared the puzzles amongst colleagues, and fun was had. One particularly tricky puzzle confounded us all, although I recognised it as a variant of the [Monty Hall problem](http://en.wikipedia.org/wiki/Monty_Hall_problem). Alarm bells should be going off at this point for those who have debated the subject in the past...

Anyway, one colleague didn't believe that the answer in the back of the book was correct, and he offered to bet that by running a computer simulation he could prove the book (and me) wrong. I'm not a betting person, but for some reason, possibly euphoria at the prospect of the upcoming <del>partying</del> seminars, I immediately accepted his bet, wagering $100.

What follows is my attempt to win that bet.

<a id="more"></a><a id="more-3890"></a>

So that there is no argument, I'll reproduce the exact wording of the problem as stated in the puzzle book:

> **90.** Four different pieces of candy are placed in a bag. One is chocolate, one is caramel, and two are licorice. Without looking in the bag, I draw two pieces of candy from it, and place one of them, which is licorice, on a table.
>
> What are the chances that the second piece of candy I have in my hand is the other piece of licorice candy?

My colleague said the answer is ⅓, simply because the candy in the hand can only be one of three other candies still unseen. Of course this is a classic Monty Hall conditional probability problem, and he is quite wrong.

The key insight to this puzzle is that when I (as the person stating the puzzle) am putting the piece of candy on the table I am *selecting* it. Just as Monty does when he picks the door with the goat. There's no element of randomness.

So the correct way to assess the probability is to think about the possible combinations of candies in your hand. There are six: the chocolate and caramel, caramel and either licorice, chocolate and either licorice, and the two licorice. Now we know that one of these combinations, the chocolate and caramel, is not possible. There are five remaining possibilities, and one of these is the one we want. Hence the odds are ⅕.

Anyway the agreed method of settling the bet was to write a computer simulation, so I did just that. Here is the output of a sample run:

    Out of 1000000 tries, two licorices were extracted 200432 times.
    Estimated probability = 0.200432

We have a winner. Thanks JT, cash will be fine.

Here is the C++ code:

{% raw %}

    #include <stdlib.h>
    #include <algorithm>
    #include <iostream>
    #include <tr1/array>

    const long iterations = 1000000;

    enum candy {
        chocolate,
        caramel,
        licorice
    };

    int main(int argc, char *argv[])
    {
        ::srand(::time(NULL));

        // Number of times we've pulled out two licorice from the bag
        long two_licorice = 0;

        for(long i = 0; i < iterations;)
        {
            // put the candies in the bag
            std::tr1::array<candy, 4> bag = {{ chocolate, caramel, licorice, licorice }};

            // shuffle them
            std::random_shuffle(bag.begin(), bag.end());

            // pull out two
            std::tr1::array<candy, 2> hand = {{ bag[0], bag[1] }};

            // At least one of the candies we pick out must be a licorice otherwise it doesn't count.
            if (hand[0] != licorice && hand[1] != licorice)
                continue;

            // Count if we've got both licorice
            if (hand[0] == licorice && hand[1] == licorice)
                ++two_licorice;

            ++i;
        }

        std::cout << "Out of " << iterations
                  << " tries, two licorices were extracted " << two_licorice << " times.\n"
                  << "Estimated probability = "
                  << static_cast<double>(two_licorice) / static_cast<double>(iterations)
                  << std::endl;

        return 0;
    }

{% endraw %}
