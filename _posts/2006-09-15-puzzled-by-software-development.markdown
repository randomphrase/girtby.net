---
layout: post
status: publish
published: true
title: Puzzled by Software Development
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 211
wordpress_url: http://girtby.net/2007/02/26/puzzled-by-software-development
date: 2006-09-15 08:40:55.000000000 -05:00
categories:
- Nerd Factor X
- Me Use Brain
tags: []
comments: []
---
A [recent post on OddThinking](http://www.somethinkodd.com/oddthinking/2006/09/13/ethics-of-puzzle-solving-techniques/) got me thinking oddly about puzzles, particularly their relevance to software engineering. Julian uses the example of some thinking which enabled him to solve a puzzle but which would not be appropriate for solving software engineering problems.

[This topic came up on slashdot recently](http://ask.slashdot.org/article.pl?sid=06/09/13/1559207). The consensus seemed to be that the IT industry was moving more towards the use of puzzle solving as a recruitment technique, and that it was a good thing. As a commenter put it:

> I think the ability to solve puzzles is tightly correlated with the skill set desired by IT. Because it takes an inquisitive and unrelenting mind to hit the hardest puzzles. If they like to do this for fun, surely they can do it well for a living.

I am in qualified agreement with this. Despite not being the world's best puzzle solver I can see how the use of logic and imagination can be invaluable to software engineering. Not sure if I would generalise this beyond software engineering to "IT" though.

Solving puzzles is certainly a useful &mdash; and technology-neutral &mdash; screening technique for recruitment purposes. But it only goes so far.

#### Backtracking

There's a technique which is available when solving puzzles that simply isn't practical for most software development situations. I'm talking about [backtracking](http://www.somethinkodd.com/oddthinking/2005/05/21/puzzling-over-puzzles/). This is of course a technique where you make an informed choice amongst many options, and work through the consequences of this choice to either the solution of the problem/puzzle, or you encounter a conflict and you backtrack to the original decision point, having now established that your original choice was incorrect. Sudoku addicts are almost certainly masters of backtracking.

Backtracking is fine when solving puzzles, but it is rarely useful in solving software engineering problems. In all but the smallest of problems, you often can't commit the resources if your choice turns out to be incorrect. The exception to this rule is the  prototype, but these have fallen out of favour. Instead, projects are managed for constant, incremental, improvements; this fundamentally conflicts with the technique of backtracking.

#### Metagaming

There are other techniques for solving puzzles where you step outside the stated rules of the puzzle. Or more specifically you look for constraints on the solution which are imposed by context or other factors. [Julian's clever optimisation of the Hitori puzzle](http://www.somethinkodd.com/oddthinking/2006/09/14/meta-gaming-and-hitori/) is a good example. This may or may not be called metagaming, depending on which definition you subscribe to.

In software development such techniques are often useless. For any normal puzzle, the stated rules are 100% complete, but for software, forget it. There are *always* other rules and constraints and other gotchas. Even if you come up with an elegant software solution to a given problem, you can often find it rejected for reasons that were not stated up-front. It doesn't match the aesthetics of your team lead. It uses a technology that is politically unsound within the organisation. It uses too much RAM. It uses multiple inheritance. It's too advanced for the other developers. Sound familiar?

There are almost certainly many other significant qualitative differences between recreational puzzles and real life software development problems. What are they? Answers below please. No backtracking.
