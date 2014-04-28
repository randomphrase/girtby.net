---
layout: post
status: publish
published: true
title: Developer Essentials
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "A long, long time ago in a corporate universe far, far away... I was admitted
  to an elite group. A group where the members each had a *manifesto*. Chris was a
  founding member of the group, and has since published his manifesto [on his blog](http://brainsnorkel.com/category/manifesto/).
  I don't quite know how I was deemed worthy for membership. My manifesto was unpublished,
  it was mostly unfinished, and it was unseen by all but me. Regardless, I was admitted.
  A fraud. Living a lie. For years I have lived with this shame.\r\n\r\nAt last all
  can be revealed, for here is my manifesto. Or as I originally called it, my List
  of Skills and Knowledge That All Developers Should Have. There are 9 items in no
  particular order, so I guess that makes it a set rather than a list for all you
  pedants in the audience (and I know you're there).\r\n\r\nThe idea is to document
  a set of skills that every developer should have. That's *everyone* who develops
  software professionally. Doesn't matter what type of position or company or industry;
  this is my stab at a body of knowledge that every serious developer should have.
  Essentials, essentially.\r\n\r\nIt's partly based on experience; specifically the
  experience of surprise I felt when a colleage, or random stranger on the internet,
  expressed ignorance at one of the items on this list. Other items on the list have
  come from an exacting process of posterior extraction. I'll leave it to you to guess
  which is which, and who is who. Or at least skim the headings. Read on.\r\n\r\n"
wordpress_id: 2921
wordpress_url: http://girtby.net/2008/05/15/developer-essentials
date: 2008-05-11 13:09:00.000000000 -05:00
categories:
- Nerd Factor X
tags:
- developer
- manifesto
comments:
- id: 1689
  author: Svarvsven
  author_email: ''
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    5. C

    Well, before you settle down with any one language you should go out and try plenty of different flavours. Then later you can get married to one and make a number of little softwares with it.

    At least, thats what I would consider be part of "skills that every developer should have".

    Of course, C is one of those languages one should take a really close look at. The similar ones like C++ and C# get at least some medium knowledge. Others like (Visual?)Basic, Pascal, F#, Lisp, Smalltalk, Ruby, Forth, Cobol there should be at least some curious interest in a few of those. And at least look in to one Assembly language (maybe even MSIL while you are at it).

    Single hardware platform without a C compiler? Heck, was probably about 20 years since I was writing software in Forth (in my spare time) but that community was really intersted in custom made Forth-native-CPUs. Google with "Forth CPU" and you find at least one. (yes, yes someone maybe did write some half attempt to C-compiler in Forth...does that really count?)
- id: 1690
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    Thanks for the comment Svarvsven, though I'm not sure anyone really needs to get married (either literally or metaphorically) to a programming language, at least not monogamously.

    It's certainly essential for developers to have experience and knowledge of other languages &mdash; the more the better &mdash; but C is the one you can't do without. I don't think any of the languages you mentioned are a decent substitute for C if you had to learn just one.

    Good point about the Forth machines, I had forgotten about those. Doesn't change the point though.
- id: 1691
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    “`0x2022`”‽ Only a philistine would write `U+2022` that way.

    And C is indeed *the* most portable language… for some values of “portable.” (Not that this takes away from the point you were making.)

    As for OO, I think it severely overrated. In fact, wanting to use OOD for *everything* is the sign of an enterprisey Java weenie. If we are going to be discussing paradigms, then I would rather propose functional programming as essential; at least, it is vastly underrated at this time. I consider ignorance of closures and how to use them effectively, at minimum, a serious disgrace for any skilled developer. Thankfully this part of the arcana seems to be hitching a ride back into the collective consciousness on Javascript’s back. (Yay for “Ajax”!)

    I would also argue that a working knowledge of assembler is equally as important. Joel has [argued identically, if at a slightly higher level](http://www.joelonsoftware.com/articles/fog0000000319.html "Joel Spolsky: Back to Basics"): you need to understand what the machine really does in order to understand which of the things you write are intrinsically expensive and why. Writing in a high-level language can make cheap things expensive, but it can never ever magically make expensive things cheap: in the end, it’s all machine code to the CPU. (High-level languages can make expensive things *seem* cheaper by imposing a tax; that too you need to understand. Note that this is not a slight against high-level languages: when the tax money is spent well, you stand to gain a lot from paying it.)

    > I don’t think any of the languages you mentioned are a decent substitute for C if you had to learn just one.

    Actually, if one were forced to learn only one language, I would argue that C would absolutely be the wrong one. Sure you can do everything with a Turing machine, but when you’re stuck in a place where everything is possible but nothing of interest is easy, you might regret the choice. Someone who is going to remain as limited as a single-language programmer necessarily must be (which holds true even if their language is C) will be far more productive by concentrating on whichever high-level language best fits their particular goals. An office grunt in a Windows shop would probably be 100× better served with VBA than C, f.ex. They’re never going to become a serious developer, but without knowing a second language, *you cannot be*.
- id: 1692
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    > “0x2022”‽ Only a philistine would write U+2022 that way.

    I'm going to claim typo, or possibly a thinko, on that. As demonstrated [previously][1], I am aware of the correct notation for code points.

    On C portability: it has to be said that in comparison to many other languages, C has a relatively poor standard library, so you often find yourself needing to use third-party libraries or specific system calls. Either way portability takes a hit. The same is true of all languages, but it is far more common in C.

    So the claim about C being the most portable of languages should perhaps be clarified thus: If you have a program written entirely in C using only the standard library, you'll be able to port it to a wider range of systems than for an equivalent program in any other language.

    I agree with all of your other points, although the line I drew for myself was more about practical experience than essential theoretical knowledge. And that's a somewhat blurry line obviously.

    I didn't mean to claim that it was acceptable to know only one language, just that C should be one of them.

    Jeff Atwood disclosed recently that he had [never learned C][2]. To me, this revelation is a profound hit to his credibility (and see a forthcoming blog article on that). It is like finding out that the chef who cooked your meal is a [robot with no sense of taste or smell][3].


      [1]: /archives/2007/3/9/c-1-unicode-0
      [2]: http://blog.stackoverflow.com/index.php/2008/04/podcast-2/
      [3]: http://en.wikipedia.org/wiki/The_30%25_Iron_Chef
- id: 1693
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    > If you have a program written entirely in C using only the standard library, you’ll be able to port it to a wider range of systems than for an equivalent program in any other language.

    Actually, that isn’t even entirely correct for the standard library; eg. for file I/O you probably need to respect the system’s path name conventions, and there are very, *very* weird platforms out there. If Unix is your reference point, f.ex., VMS is 5× as weird as Win32. And then there are the embedded devices that don’t even have anything resembling traditional file systems; how do you even make your I/O calls compile on that?

    So the set of truly portable C programs is surprisingly small and surprisingly uninteresting. If you couple C with a library like GLib, you actually reach a lot more systems despite – because GLib itself isn’t available everywhere that C is – nominally losing a bunch of platforms.

    So… it’s a very complex picture. You can probably summarise it like this: <i>C is extremely portable, it’s just that C programs are a lot less so…</i>
- id: 1694
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    Good stuff.

    I wanted to support elaborate on Aristotle's (and Joel's) point:
    > I would also argue that a working knowledge of assembler is equally as important.

    Learning assembler (and more than one instruction set architecture) certainly provides a far better understanding of machine architecture than C. I think that if you learn an assembler, don't stop at learning about how RAM and CPU work together. The underlying goal is to understand machine architecture. A few of the hardware components and low level interactions that can affect even the highest-level software.  I'd strive to understand interrupts; DMA; clocks and counters; interactive, network and block IO; and typical bus peripheral interaction in general.

    I'd lump debuggers into the sniffer class and head off on a tangent about how "sniffers" and debuggers often rely on knowledge of the, possibly non-obvious, underlying implementation.  e.g. you need to learn assembler to debug stack overruns in C/C++ and you often need to understand TCP, IP, routing and associated protocols to understand why you're not even getting a 404 error from your beautifully abstracted SOA stack.

    OO, I would argue is a must-have, even if you choose to *ignore* it.  Sure it's not essential for writing good code, and over-exuberant application is a pain in the ass, but it's a set of organising principles that's easier to learn through OO than to develop yourself from first principles.

    Other stuff I'd add which I think is essential, but I understand your need to not go all Unabomber on our asses:

      - The ability to write stuff down *and* explain it to another human being with sufficient lucidity that you don't end up maintaining every piece of code you touch forever or driving your co-workers to feign death to avoid being assigned to your projects (just had to get that off my chest)
      - Concurrency
      - Unit testing (which you mention)
      - Crypto basics

    But I like your list.  It reminds me that I need to find a cure for my fear of Unicode.
- id: 1695
  author: Gomp
  author_email: ''
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: Learning to build other's code, run it, trace it, read it, and understand
    it is an important skill I think. At least, for open-source stuff, and learning.
- id: 1696
  author: Doug
  author_email: dcb_76@yahoo.com
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    This is a very good list.  To some degree that's probably because it lines up well with my skill set.   :-)

    I found this list after seeing someone criticize it at Atwood's blog; clearly there is a cultural divide between many developers who have had to deal with re-engineering legacy systems and those who never learned C or makefiles (not that that makes them bad people or programmers).

    One thing I can say is that I am glad I learned the old school tools.  Today I have enormous advantages when someone's stuck due to some strange link error, or a memory overrun appears in some code that hasn't been touched in 6 (or 16) years, or two applications aren't talking, and aren't logging, because I've got the background to deal with it.  Knowing makefiles, C, and sniffers certainly comes in handy, and EVERY shop needs at least one person who can engage with the machine on that level.

    Also, every development team needs at least one person who understands basic system administration (including package management and tool administration i.e. Subversion).  I find that having a good development/admin on a project can save man-months of effort due to the fact that you can simply tell them, "I have problem X" and they immediately respond with "Oh, I know a tool for that--give me a day and I'll have it set up."

    The folks who work entirely within an IDE and an interpreted language may be fine coders and developers, but there is more to the discipline of engineering than knowing C#/Java and design patterns.

    Kudos.
- id: 1697
  author: Michael Rhodes
  author_email: mike.rhodes@gmail.com
  author_url: http://dx13.co.uk
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    With respect to C portability, I read Alastair's point as "the skill of programming C is one of the most portable" as opposed to "a given C program is portable". In the former reading, the point isn't nearly so debatable!

    I second the call for a much wider knowledge of basic crypto. The maxim "never invent your own crypto" seems to be ignored by too many developers. With an ever ever wider range of personal data being stored on internet-facing systems, basic knowledge of securing data effectively is an essential.
- id: 1698
  author: The_Assimilator
  author_email: the.assimilator@gmail.com
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    > C is the most portable language around.

    When a long is 32 bits on one platform and 64 bits on another, that's not portable. When you have to include different files on different platforms to get the same functionality, that's not portable. Any language where you have to write code to cater for multiple platforms is not portable!

    I could go on and on, but the point is that C is one of the **least** portable languages in existence.

    > You have to know C, end of story.

    No you don't, because high-level languages like C# and Java are the future of programming. I'm a programmer, I live to code, and C makes it difficult for me to do that, whereas the aforementioned languages make it easy. You may argue that this lowers the bar, and I won't argue with you; but it also raises the bar because programmers can write better code in less time, without having to worry about memory management and all that nonsense.

    The majority of Windows Vista was going to be written in C# - Microsoft eventually got cold feet (probably because they didn't have enough C# programmers), but the fact that this was a quasi-official Microsoft byline shows just how much faith they have in the language. As for Java, Sun already produces processors that provide hardware acceleration for the JVM.

    Eventually, C will be relegated to little more than "that language that compilers are written in". I, for one, cannot wait to see that day, because it will finally signify the end of the tight coupling between hardware and code that has been a dead weight to the software industry for far too long.
- id: 1699
  author: steve
  author_email: steve@adam.com.au
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    Ass-imilator; I worked at a University for a while, so I saw many students and fewer approaches. Of those groups of approaches, all of them were doing what was best for them. The mistake is wanting the rest of the world to change for your specific approach, even when it's a global de-optimisation for your local improvement. Much like western society, actually.

    Why can't your super-duper C# language be used for compilers? Why can't Microsoft write Vista in C#? The cold feet was because the stuff that had been written in C# was so slow and bloated that it just didn't meet performance criteria. That is the Occam's Razor that slices through every argument that you have. "Meets performance criteria".

    Unfortunately, since we live in a Universe that has the mandatory component of "time", coupled with our universal condition of "death and taxes", everything ultimately does have to meet our little Occam's Razor. Your little C# Nirvana of "memory management and all that nonsense" is precisely why you should know and program in C.

    Because, quite frankly, you sound like you're still one of the students when you say something like that. ONLY a dumb arse student failing courses could say something like that.

    To be able to write simple code, the computer has to take care of a lot of things in the background for you. Those lots of things take time and memory. The computer has no idea what you're going to do with that simple code, so it has to take care of a lot more things than it needed to. When it's slow and bloated, you have to take away things that it didn't need to do.

    And there-in lies the problem. You have two choices. You can reduce the lots of things that the computer is doing for you. That's C. Or you can be more specific about what you're doing so the computer can do less things for you. That's Java or C#.

    There are some situations where being increasingly specific is not the solution. Keeping it simple is the solution that applies to all solvable situations. Including meeting those performance criteria so that we don't die of old age while you're re-writing your beautiful C# code with increasingly ugly "optimised" C# code to work faster.

    Hell, if you're going to write ugly optimised code, the premise of the language doing it all for you is looking a little tattered. Why did you have to write that horrible bit there? Why did you have to use that more complicated approach? Wasn't it supposed to look nice or something? Damn, was it coz you had to tell the computer how to do it?

    So there's the rabbit hole for you to slither down... except that in Java or C#, the rabbit hole is blocked. By this plug of concrete called a VM. It sits there, slowly sucking the fast out of your presssscious creation. And it looks just like a real machine, except with some built in bits of crap for the very complicated specifications in the very complicated "promised to do that for you" language.

    And that's when it gets a bit tricky... BUT WAIT! We mentioned two options above. Time to reverse out of that little exponentially complex dead-end, and try the road more travelled! Yes, my friend, it is C. There's a damn fucking good reason why millions of programmers, including ones much much smarter than me (and definitely you), have worn out their tattered copies of K&R.

    Suck it up, bitch. Learn C.
- id: 1700
  author: Ted
  author_email: ''
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    The silliest thing that I have seen in this list of **essentials** is the requirement to know C. And why is it silly? Probably because one of the top (if not the top) computer science schools in the US does not have a single class that lists C as the language of choice. That school of course would be [MIT][1].

    So I guess that the smart people from MIT, who have brought so much to the computer industry, would be considered idiots for using Python for teaching their intro CS classes. Or that, up until within just the past few years, they primarily used Scheme/LISP for the majority of the classes that they taught.

    Perhaps the CS program at MIT is just worthless and they have just pulled the wool over the eyes of the world as to the quality of students that they graduate. Then that would mean that so many successful enterprises and other hardware/software manufacturers have not been so smart in hiring the very large number of graduates that MIT produces. As such, we should all probably throw away all of our computers, hardware, software, thumb drives, CD/DVD burners, etc as we may not know if they were built by an MIT graduate. Nah, I trust that my system will continue to work.

    It's interesting to note that you put down the VM used in Java or C#, yet MIT uses Java for teaching [Computer Language Engineering][2], where students learn to build compilers.

    The majority of people programming today and the systems that they're programming for do not require them to have to work at lower levels and they are just as well off programming using whatever language best suits them. Is it nice to know C, sure. For me, the more tools you know about and can use, the better able you will be to accomplish whatever task in a shorter time. But if your job is web programming, then you simply don't care about such low level programming (unless your trying to improve Apache or something).

    Of course, there is also the issue of who you are programming for. If you are an enterprise programmer working on low level projects, your tool set will be different then the micro ISV or small business developer that works with other businesses that don't have the resources to spend for you to write such low level code and just want something that they can use **now.**

    We all have different types of projects that we work on for different types of customers. We will each have different sets of tools and different areas that work best for us. What's best for you isn't best for me or best for the next person reading this.


      [1]: http://www.eecs.mit.edu/acad.html
      [2]: http://ocw.mit.edu/OcwWeb/Electrical-Engineering-and-Computer-Science/6-035Fall-2005/CourseHome/index.htm
- id: 1701
  author: Eran
  author_email: eran@octabox.com
  author_url: http://www.techfounder.net
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    > The silliest thing that I have seen in this list of essentials is the requirement to know C. And why is it silly? Probably because one of the top (if not the top) computer science schools in the US does not have a single class that lists C as the language of choice.

    Just furthers the point that academic institutes have very limited understanding of real-world practices and needs. I have yet to see a computer-sciences grad who was ready for any kind of practical development. Academic teaching are geared towards research and not implementation.

    Knowing at least basic C (syntax, control strucutres and **pointers**) is essential for most real-world development needs.

    I really liked Joel's article on interviewing candidates for software development - [Guerrilla Guide To Intreviewing][1]. He puts emphasis on the two major stumbling blocks for would-be programmers - pointers and recursion.


      [1]: http://www.joelonsoftware.com/articles/GuerrillaInterviewing3.html
- id: 1702
  author: Thomi
  author_email: thomir@gmail.com
  author_url: http://tech-foo.blogspot.com
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    > > The silliest thing that I have seen in
    > > this list of essentials is the
    > > requirement to know C. And why is it
    > > silly? Probably because one of the top
    > > (if not the top) computer science
    > > schools in the US does not have a
    > > single class that lists C as the
    > > language of choice.
    >
    > Just furthers the point that academic
    > institutes have very limited
    > understanding of real-world practices
    > and needs. I have yet to see a
    > computer-sciences grad who was ready
    > for any kind of practical development.
    > Academic teaching are geared towards
    > research and not implementation.

    I think you're missing the point here. Having worked as a lecturer in a computer science degree, and now as a professional programmer, I'm able to see both sides of this argument. Any CS degree worth it's salt won't try to churn out graduates who are able to program at a professional level straight away - that's not what getting a degree is all about.
    Getting a degree is about proving that you're able to complete a decent chunk of work, and that you're able to understand the basic concepts involved.

    Put yourself in the lecturers shoes: how are we supposed to know what to teach potential graduates? The skills they will need require on the job they'll end up in. Programming web services and programming embedded devices require a vastly different skill set - and that's an example with two programming jobs, what about all the non-programming jobs out there?

    So what's the solution? The solution is to teach in generalities. We use languages that make it easy to demonstrate key points (recursion and pointers, for example). We teach graduates the skills they'll need so that when they are faced with a new problem they know how to teach themselves the language / technology they need to solve that problem.

    Computer science is a hugely diverse field. **Any** article that claims to know the N skills required for all CS jobs needs to think a bit longer in the future before posting.

    *Having said that,* I think C is a good language for teaching several important concepts - primarily those closer to the hardware. It's *not* a good language for teaching OO. This is another right-tool-for-the-job scenario.

    With regards to employing graduates, employers must realise that graduates are **not** professional programmers - they stillneed to be trained for the specific tasks you do at your company (and every company is different).

    Cheers for an interesting post!
- id: 1703
  author: Dalton
  author_email: ''
  author_url: ''
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: I totally agree that C is important. Food is important too, very important.
    And for its due importance, it would be silly if anyone didn't study the depths
    of agriculture. Phytoplankton is very important too, you probably wouldn't be
    breathing right now without it. So, it must be very stupid to not study microbiology,
    isn't it?
- id: 1704
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-05-11 13:09:00 -0500'
  date_gmt: '2008-05-11 13:09:00 -0500'
  content: |-
    This is from a recent link to an old ACM essay by Randall Hyde: "[The Fallacy of Premature Optimization][1]."

    Randall Hyde us the author the "Write Great Code[...]" books.

    Just FYI.

    Begin copious quote block:

    > So what should a software engineer study if they want to learn how to write efficient code? Well, the first subject to master is machine organization (elementary computer architecture). Because all real programs execute on real machines, you need to understand how real machines operate if you want to write efficient code for those machines. Machine organization covers subjects such as data representation, memory access and organization, cache operation, composite data structure implementation, how computers perform arithmetic and logical operations, and how machines execute instructions. This is fundamental knowledge that impacts almost every aspect of the implementation of a software system.

    > The second subject to study is assembly language programming. Though few programmers use assembly language for application development, assembly language knowledge is critical if you want to make the connection between a high-level language and the low-level CPU. I'm not going to suggest that all programmers should become expert assembly language programmers in order to write great code, but high-level language programmers who have a firm understanding of the underlying machine code have written some of the best code in existence.

    > Note that for the purposes of understanding the costs associated with the execution of high-level language statements, it doesn't really matter which assembly language you learn nor does it matter which CPU's instruction set you study. What you really need to learn are the basic operational costs of computation. Whether you're moving data around on a PowerPC or an Intel x86, the costs are roughly comparable from a high-level language perspective. Using instruction timing knowledge at a finer level of granularity than this definitely falls into the "premature optimization" area that Hoare has warned everyone about.

    > The main reason programmers should learn assembly language is to be able to understand the costs associated with the statements they use in day-to-day programming. Learning assembly language is an important first step, but it is not sufficient. The third important subject a software engineer should study is basic compiler construction, to learn how compilers translate high-level language statements into machine code


      [1]: http://www.acm.org/ubiquity/views/v7i24_fallacy.html
- id: 2799
  author: Gray Fox
  author_email: ch-ching@hotmail.com
  author_url: ''
  date: '2009-03-07 13:31:24 -0600'
  date_gmt: '2009-03-07 02:31:24 -0600'
  content: |
    <p>I know C, and I feel no debt to it.  I learned Java first, then C, then VB.NET and PHP.  I know C is the father of many languages out there, but IT changes at an alarming rate, and thus why cling to the outmoded past.  Java was a great Introduction to programming.  C was onerous and cumbersome and not very sexy or exciting, but I still got As in those courses, so this is not a sour grapes post.  I am also an electrician, but I would not say that all new disciplines learn on the old Simpson 260 multimeter, or one of those old clunky Tektronics O-scopes.  Did the do the job?  Of course.  But have we not come a long way?  Have we not evolved?  Refined our techniques and approaches.  </p>

    <p>The idea that all new coders need to know C is as ludicrous as saying all new gamers need to know the Atari 2600.  And what would that prove?</p>
---
A long, long time ago in a corporate universe far, far away... I was admitted to an elite group. A group where the members each had a *manifesto*. Chris was a founding member of the group, and has since published his manifesto [on his blog](http://brainsnorkel.com/category/manifesto/). I don't quite know how I was deemed worthy for membership. My manifesto was unpublished, it was mostly unfinished, and it was unseen by all but me. Regardless, I was admitted. A fraud. Living a lie. For years I have lived with this shame.

At last all can be revealed, for here is my manifesto. Or as I originally called it, my List of Skills and Knowledge That All Developers Should Have. There are 9 items in no particular order, so I guess that makes it a set rather than a list for all you pedants in the audience (and I know you're there).

The idea is to document a set of skills that every developer should have. That's *everyone* who develops software professionally. Doesn't matter what type of position or company or industry; this is my stab at a body of knowledge that every serious developer should have. Essentials, essentially.

It's partly based on experience; specifically the experience of surprise I felt when a colleage, or random stranger on the internet, expressed ignorance at one of the items on this list. Other items on the list have come from an exacting process of posterior extraction. I'll leave it to you to guess which is which, and who is who. Or at least skim the headings. Read on.

<a id="more"></a><a id="more-2921"></a>

#### 1. Makefiles

Opening the list with a clearly endangered species, a bold step you might think. So maybe I'm just Old Skool but so much of software development falls to the task of managing dependencies between files. And although you may not have to explicitly set these dependencies, you almost certainly should know how these dependencies are created and used by your tools. The Youth of Today are lazy good-for-nothings who spend all day in their fancy IDEs and do a clean rebuild at the first sign of trouble.

By the way, Java developers who routinely, often unwittingly, introduce circular dependencies between source files and rely on the *compiler* to sort it all out may be feeling a bit smug at this point. Until they [reflect](http://fishbowl.pastiche.org/2007/12/20/maven_broken_by_design) on their own build tools, that is.

Java aside, the reality is that the principles of dependency-based build tools are core to software development in almost all languages. IDEs often encapsulate these principles. And even if you never physically write a Makefile yourself, the ability to diagnose a dependency problem is something that you will almost certainly have to do at some point.

Which is not to say that you should really be using the `make` tool itself for serious software development, at least not while there are [perfectly](http://en.wikipedia.org/wiki/Perforce_Jam)  [reasonable](http://www.cmake.org/HTML/index.html) [alternatives](http://www.scons.org/) [available](http://rake.rubyforge.org/). Or if you do insist on using make, at least be aware of its [limitations](http://miller.emu.id.au/pmiller/books/rmch/) and [syntactical gotchas](/archives/2005/11/27/making-trouble).

#### 2. Unicode

Even if you're an English speaker and you are writing for an English-speaking audience you'll quickly find that ASCII is très passé. But if you work outside that (increasingly) small set without Unicode, you're toast. You need more characters, and Unicode has 'em. So unless you are going to condemn yourself to writing software that never sees human-language text &mdash; and that is a very small niche indeed &mdash; my advice is to bite the bullet and start learning about Unicode. (Maybe start with BULLET POINT, U+2022).

Hey, if nothing else you'll be able to write snarky blog posts about how Unicode isn't properly supported in your [language](/archives/2007/3/9/c-1-unicode-0), [protocol](/archives/2007/5/20/1963-called-they-want-their-character-set-back), or [browser](/archives/2005/10/7/internet-explorer-makes-me) of choice.

Still not convinced? Maybe [Joel](http://www.joelonsoftware.com/printerFriendly/articles/Unicode.html) can be more persuasive than I. Or Google, who recently found that Unicode is now the [most common character set on the web](http://googleblog.blogspot.com/2008/05/moving-to-unicode-51.html).

#### 3. Sniffers

In between running an application 'blind' and a up-to-the-elbows session with a debugger, there are tools I will call 'sniffers', because the packet sniffer is one important example. But really I'm talking about the general class of tools that monitor running applications by what they do under the covers. What files they have open, what network traffic they generate, how much memory and CPU they use, and even what [system calls](/archives/2005/7/17/new-offering-ktrace-parser) they make. Sometimes you need to use these tools on other people's applications to find out why (for example) it crashes on startup. Sometimes it's easier to use `lsof` to see what files your application has open than try to work through it with the debugger. And sometimes it's just a learning experience to see at a high-level what your application is actually doing.

With the increasing importance of network communications in just about all software these days, packet sniffers are a particularly handy tool. If you know how to drive a packet sniffer like tcpdump or ethereal, including filtering the output for a specific exchange, you have a) sufficient IP networking knowledge to call yourself a developer, and b) some handy skills for debugging (even when it's [not your code](/archives/2005/2/27/netgear-bugs)).

#### 4. System Administration

In an enterprisey environment, the chances are that if you are developing something, someone else will be administering it on an ongoing basis in production. Of course your trusty systems engineer should document for you all of the unstated requirements that often accompany such deployments. But regardless there is no substitute for actually experiencing the pleasure and pain of installing, configuring, monitoring, backing up, and securing the software masterpiece you have just written. (Not to mention *using* it...)

This means learning about system administration. Finding out about how best to develop applications to best conform to local conventions, how to ensure that user data is clearly separated from the application itself and can be backed up, and getting your logs to be auto-rotated so they don't fill up the filesystem.

My advice is to get yourself a server and try to keep it functioning 24/7. When you [fail](/archives/2005/11/15/great-moments-in-systems-administration-part-xxxiv), think about the [lessons this implies](/archives/2005/8/3/scheduled-task-slippage-and-breakage) for the software you write. And years down the track, thank me for my sage advice.

#### 5. C

There's only one programming language in this list, and C is it. Not C++, or C#, but C.

C is the language which is the basis for all others, often quite literally. That fancy Java VM? Written in C. The Ruby interpreter? C code again. Fancy .NET CLR? Python reference implementation? Lisp runtime? All C. In fact, name me a general-purpose programming language which is not primarily implemented using compiled C code. I can't think of one.

Why is it so? Because C is *the* most portable language around. Can you name a single hardware platform produced in the last 30 years which did *not* have a C compiler? It's just unthinkable. From the most resource constrained to the most powerful computing systems in existence today, C is the lingua franca.

Not all programmers code to the bare metal, it's true. But even the most high-flying architecture astronaut would have to concede a knowledge of the fundamental architectural principles of modern computing equipment is prettymuch essential. And that's what experience with C gives you, an understanding of stacks and heaps and pointers and all of the other things that your high-level language tries to hide from you and, inevitably, [doesn't](/archives/2006/12/18/the-other-kind-of-reentrant).

If this list was ordered, C would be number 1. You have to know C, end of story. [**Update**: [Apparently not](/archives/2008/08/23/in-defence-of-c/)]

#### 6. HTML

Hey did you hear there's this amazing new thing called the Internet? Looks like it might catch on.

Instead of passing Microsoft Word documents around the place, the Netizens prefer to pass around text files containing a "markup language" called "HTML". It may look bizarre, with angle brackets and stuff everywhere, but the rules are really quite simple. There are only about a dozen tags that you have to know, so just learn them already. OK?

Oh, and in case you were wondering, [the web is not WYSIWYG](/archives/2005/6/13/this-is-what-you-see-this-is-what-you-get), and nor is it Sharepoint (and that is a rant for another day...).

#### 7. Source Control

Shipping vast directory trees about the place is [not source control](http://msdn.microsoft.com/ssafe/). In any serious team development situation, you must be able to branch and merge, which in turn means that you must know how to drive a source code control system that supports this. Or one that [comes close](http://subversion.tigris.org/).

I'm not entirely sure how to be more precise here, but I suppose you should have some knowledge of the theory of source control systems, some common usage patterns (eg integration branches, release branches, etc) and detailed working knowledge of at least one implementation.

Besides code reviews, choice of source code control systems is the most reliable source of religious wars between developers, so I'll leave it at that. Just pick one and learn to use it.

#### 8. Regular Expressions

Look, there's no doubt that they can be kinda tricky, the implementations are frustratingly divergent, and they are a bit ugly. But once you've got the hang of them, regular expressions will make your life as a developer *so* much easier. If nothing else, you'll at least be editing your source files a lot more effectively.

Like any tool though, you have to learn when *not* to use them. Otherwise, as the saying goes, you'll end up with [two problems](http://regex.info/blog/2006-09-15/247). Regexps should generally *not* be used to parse XML, for instance. They are great'n'all, but one day you will need a real parser.

#### 9. A Scripting Language

Perl, Python, Ruby, JavaScript, Emacs-Lisp, VBScript (erk), I don't care. Yes some of these are Real Languages also, and I don't mean to malign them with the "scripting" pejorative. But the reason why all developers need to know scripting languages is ... well to write scripts. Prototypes, build tools, test harnesses, packaging tools, etc etc, you need 'em. Scripting languages are the way to write 'em. And the rest of the team doesn't have time to sit around with you reading the Camel book.

#### Omissions, Deliberate and Otherwise

"What about &lt;insert pet skill/knowledge here&gt;? Surely you can't be considered a software developer without having some expertise with *that*!?"

Yes I acknowledge up-front &mdash; well, at the end really &mdash; that my list is incomplete.

Some things I have omitted deliberately, like any mention of Object-Oriented design for example. When considering this for inclusion, I imagined someone who might not have a lot of expertise with O-O design, but who is clearly a worthy developer. After coming up with an example, in this case Linus Torvalds &mdash; though apologies to Linus if he is an O-O expert unbeknownst to me &mdash; I rejected O-O as essential knowledge. It just is not applicable to many specialised domains of software development, and hence is not an "essential". Ditto XML - I can imagine Linus going through his entire career without knowing very much at all about that topic (except as required by HTML, see above).

At the other end of the scale, are the niche topics. How much assembly language does a software developer have to know these days? I'd argue not that much, really. You need to know basic systems architecture stuff like registers and addressing modes and such (see also C language above), but these days the need to drop to assembly is pretty uncommon. For this reason I tried to focus the above list on skills and knowledge that were of practical day-to-day benefit rather than topics that are learned in university and then forgotten.

Other items seemed too vague or overly-broad to warrant inclusion in this list. It's true that every developer should master their text editor of choice - but it's hard to define exactly what that means. Likewise algorithms; which are essential? And every developer should know, through practice, about testing; what types are available and applicable, how to assess results, etc. But how to nail it down further than that?

So there you have it, my manifesto, or what passes for such. Next time I'll be more wary about accepting admission to groups that would have me as a member.
