---
layout: post
status: publish
published: true
title: No Patentisation without Implementation
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Pardon me for butchering James Otis' [famous quotation](http://en.wikipedia.org/wiki/No_taxation_without_representation), but it is an attempt to coin a slogan for an idea that has been nagging at me for some time.

  Patent reform is a subject close to my heart. A little too close, in fact. I don't wont to make any <acronym title="Career Limiting Moves">CLMs</acronym> here, so let me just allude to the fact that I have some experience with the current patent system and some opinions on what is wrong with it. What follows started off as an attempt to explain some of these opinions and ideas, and then before I knew it, it had turned into a mega-post. Good luck wading through it all. Of course IANALessig, but hopefully it passes the giggle test. Here goes.



wordpress_id: 126
wordpress_url: http://girtby.net/2008/09/23/no-patentisation-without-implementation
date: 2005-08-22 23:25:37.000000000 -05:00
categories:
- Verisimilitude
- Me Use Brain
tags: []
comments: []
---
Pardon me for butchering James Otis' [famous quotation](http://en.wikipedia.org/wiki/No_taxation_without_representation), but it is an attempt to coin a slogan for an idea that has been nagging at me for some time.

Patent reform is a subject close to my heart. A little too close, in fact. I don't wont to make any <acronym title="Career Limiting Moves">CLMs</acronym> here, so let me just allude to the fact that I have some experience with the current patent system and some opinions on what is wrong with it. What follows started off as an attempt to explain some of these opinions and ideas, and then before I knew it, it had turned into a mega-post. Good luck wading through it all. Of course IANALessig, but hopefully it passes the giggle test. Here goes.



<a id="more"></a><a id="more-126"></a>


Basically the idea is to **increase the requirements for patentability to include an implementation that demonstrates the claimed benefits of the invention**.

In other words, you have the existing criteria of patentability (ie novelty, non-obviousness, usefulness, etc), but in addition to these you have the burden of proving that the invention is in fact capable of being built, and also solves the problem it claims to solve. So there are actually two new criteria here, but let me set the scene before taking each of these one by one.

#### What? It Isn't *Already* A Pre-requisite?

You may be, as I was, surprised to find out that a working implementation isn't already a prerequisite for a patent. Patents come with a 20-year monopoly, so you might think that it would need to be more than just the result of an idle moment during the morning shower. It seems obvious to me that ideas that haven't been rendered into stone/plastic/software/silly-putty don't yet count as inventions. But maybe it's my software engineering background speaking.

I suspect that the requirement for a working implementation was excluded from the original patent criteria simply because the patent period itself was intended as the time in which the idea would be implemented, and marketed for commercial advantage. In theory it creates a separation of the intellectual pursuit of generating ideas from the more pragmatic world of making them tangible. This allows John Q. Inventor to toil away in his basement, come up with a brilliant idea, then sell it to Megacorp for big bucks, and everyone wins. The patent gives protection to John as he shops around with his idea for someone to put it into production, effectively creating a secondary market in inventions.

#### The Patent Defense Industry

It may have worked this way some time in the past, but not any more. At least, the separation of invention into ideas and implementation has spawned a burgeoning industry in "portfolio management". In general terms this means developing strategies for deciding which of your patents to put into production, and what to do with the remainder. One common strategy is to develop a stock of patents, some or all of which are to be maintained for purely "defensive" purposes. (It's a confusing term, because "defending a patent" means something completely different).

Defensive patents are patents that are not implemented by the inventor, but more significantly are *never intended* to be implemented by the inventor. Instead these patents are bargaining chips for companies when they find they inadvertently tread on patents from other companies. Defensive patents are like insurance policies in that they are used to mitigate risk &mdash; the risk of inadvertent patent infringement. And, like insurance, the art of patent portfolio management is becoming quite [big business](http://www.patentharvest.com/services.htm).

Companies are not always pleased about being put in the situation of needing defensive patents. Red Hat openly admits to being [forced into creating a defensive patent portfolio](http://business.newsforge.com/article.pl?sid=02/05/29/1434235&tid=110&tid=53&tid=3&tid=31), for when the competition's lawyers inevitably comes calling. Cisco is [in the same boat](http://patentlaw.typepad.com/KSR%20MicrosoftCisco_Amicus.pdf):

> In order to neutralize the effect of these obvious
> patents, Cisco has obtained hundreds of patents for defensive
> purposes in technology areas in which it develops products.

Even [Microsoft is forced to play along](http://blogs.msdn.com/Chris_Pratley/archive/2004/05/01/124586.aspx):

> At Microsoft, we used to pay little attention to patents - we would just make new things, and that would be it. Then we started getting worried - other big competitors (much bigger than we were at the time) had been patenting their inventions for some years, and it made us vulnerable. One of these big companies could dig through their patent portfolio, find something close to what we had done, then sue us, and we would have to go through an elaborate defense and possibly lose.

Lastly, source developers have proposed creating ["Open" patents](http://slashdot.org/article.pl?sid=00/01/22/1843258&mode=thread) for defensive purposes. It's quite a good idea in my opinion and certainly reflective of the reality of the patent industry.

It's like the nuclear arms race. If you have a stockpile of patents, then I need to also accumulate a stockpile of patents. Even if none of them are deployed, it is our Mutually Assured Patent Violation that will achieve stability. OK I may be stretching the analogy a bit too far, but you get the picture.

The sheer number of defensive patents is, in my humble opinion, a major problem with the patent system as it is practised today. However great the portfolio management industry might be for the lawyers, defensive patents don't seem to actually contribute anything to society as a whole. In my opinion this patent swapping does absolutely nothing to justify the benefits that a patent brings.

#### "Mr Dent, the plans were on display..."

Patents are a contract. They concede a limited monopoly in exchange for full public disclosure of the idea. In theory the idea is disclosed in the patent office submission, but in reality the idea is disclosed when a product is produced that makes use of that idea. This is acknowledged by the fact that if you are an inventor, you are required to search for prior art in the industry, and *not* in the mountains of granted or pending patents.

In fact, due to the highly-specialised nature of patent searches, you may be explicitly advised *against* searching the database of filed patents by your patent lawyer. The penalties for knowing patent infringement are much higher than for unknowing patent infringement. It's best to don the Patent Infringement Sensitive Sunglasses&trade; (patent pending), lest you see anything that might alarm you, or your company's patent lawyers.

It follows that if a given idea isn't brought to market, it isn't disclosed to the public in any meaningful way. This leaves the door open for someone else to have the same Eureka moment on the same idea. (And it will happen, but that's a topic for another time.)

Which the second inventor then brings the idea to market, they get stomped on by the first inventor's (i.e. the patent-holder's) lawyers. There may be opportunity for the second inventor to negotiate with the first, but it is from a position of weakness. After all, the second inventor has *already* brought the idea to market and hence has already incurred the costs of doing so.

This scenario illustrates how patents can act as a force *against* innovation. The second inventor has legitimately innovated, but their ability to deliver this to the market is impaired, perhaps fatally. This isn't idle speculation either, it happens all the time. Unisys' patent on the [LZW compression algorithm](http://en.wikipedia.org/wiki/GIF#Unisys_and_LZW_patent_enforcement) is but one famous example.

In short, defensive patents do not live up to the bargain of monopoly-for-disclosure. If there is no disclosure, surely there should be no monopoly either?

In some ways it is a flaw in the original vision for patents. Maybe no-one considered the possibility that inventors would never bring their inventions to market. Or maybe they thought that the patent submissions were not going to be so overwhelmingly numerous, or as impenetrably written, as to be a public disclosure of an idea in some meaningful way. For whatever reason, it hasn't worked out that way. Defensive patents are, in a way, an acknowledgement of the limitations of patents as public disclosures of an idea: if there were a 100% foolproof method of validating that a given company's products would not violate any existing patents, there would presumably be no need for defensive patents.

#### Defensiveness Is In The Eye Of The Beholder

Of course there are instances where inventors have tried and failed to put a patented invention into production, making a genuine attempt to follow in the footsteps of John Q. Inventor, whose story is posited above. Let's call these the "lone inventor" patents. It is unfortunate that some such patents are not eventually implemented, but from an ethical point of view, this is an entirely different story to the purely defensive patent. As with most ethical matters, the crucial difference lies in the *intent* of the inventor.

[Aside: this is actually a simplification. All patents are subject to the fertile imaginations of the patent lawyers that draft them, and they tend to expand the scope of the inventions beyond the original concept. Sometimes way beyond. The effect is that most patents have "alternative embodiments" which are intended to be used defensively. This can happen whether or not the patent is viewed as defensive by the inventor. So dividing the patents of the world into defensive and non-defensive is probably simplistic. However, I'm going to ignore this problem for now, as my idea doesn't really address it. Suggestions appreciated!]

The difference in the intent of the inventor is relevant because the solution I am proposing will adversely affect both lone-inventor patents and defensive patents. So we need to consider the collateral damage that would be inflicted on the John Q. Inventors of the world.

#### Minimal Collateral Damage ... Hopefully

It is my contention that defensive patents outnumber the "lone inventor" patents by a significant margin. Because the difference between the two lies in the intent of the inventor, it is ultimately impossible to prove or deny this statement. Nevertheless, I believe it to be true based on the observation that patenting ideas is an expensive business, and that this ultimately favours large organisations.

I am not saying that large organisations are more well-intentioned than small ones (or vice versa, for that matter). But in order to protect an existing product line, the large organisations have far more motivation for producing defensive patents than smaller organisations do.

The expense of producing a patent requires businesses to make an investment decision. Is the business benefit of the patent worth the initial investment? The benefit may be realised by bringing the idea to market, or by using the patent defensively. If the idea is to be brought to market, it can be incorporated into the company's product line, or they can make a genuine attempt to find another buyer (as John Q. Inventor would). So the fate of a given patent can go three ways, and of these I would argue that only the defensive patent is objectionable.

The important question is: of patents that remain unincorporated into a product, what proportion of these are defensive, and what proportion are being actively solicited for buyers?

Like I said, the true difference lies in the unknowable intent of the patent holder, so we need to look at secondary indicators. If we assume there is a large number of patents being actively solicited for buyers to turn them into products, we might expect a market to be formed. The absence of such a market tends to indicate that the patents being granted are either being developed into products by their inventors or being held for
defensive use. In addition there are companies like Red Hat (cited above) claiming that their entire patent portfolio is for defensive use. These two facts lead me to believe that lone inventor patents are not anywhere as numerous as defensive patents.

#### Why Implement?

So how would it help to require working implementations with all patent submissions?

Basically, I'm hoping that it will ensure that there is some significant expenditure of R&D for each patent generated by a company. This in turn increases the cost of the patent and changes the business case for patents that do not form part of the company's product line. (I'm assuming that the products themselves are sufficient for satisfying the implementation requirement for patents that are realised by the company).

The key point is that the implementation requirement would raise the cost of defensive patents, but not change the cost of patents on ideas implemented in a product line.

We are in effect giving up the secondary market in patents, in exchange for breaking (or at least impeding) the defensive patent arms race. In my opinion this is a worthwhile exchange, as the benefits of the latter outweighs the costs of the former.

#### Demonstrated Benefits

Just as an idea is not validated without an implementation, an implementation is not validated until it is put to its intended use. This is where the other half of my proposed new patentability criteria comes into play: it must be demonstrable that the invention has the benefits it claims to have. US Patent law already has a prerequisite of usefulness &mdash; meaning that there are identifiable benefits of the invention &mdash; and all we are doing here is requiring that these benefits be demonstrated. And it doesn't need to take the form of a fully-market-ready product, but it does need to be something that could stand up to the scrutiny of, say, a peer-reviewed journal.

Frankly I don't know exactly how this would work. All I know is, without this additional constraint, each patent will be accompanied with the most half-arsed duct-taped prototypes, and we'll be back to the defensive patent arms race. Look, the [Mythbusters](http://dsc.discovery.com/fansites/mythbusters/mythbusters.html) routinely whip up their inventions in under half an hour (after editing). With enough hand-waving, and without a burden of proof of usefulness, the implementation requirement would be essentially ceremonial.

The requirement for demonstrated benefit should not be an undue burden on legitimate inventors. If they are serious about the invention, the benefits should be demonstrable anyway, in order to justify investment in it in the first place. Drug companies, for example, have rigourous standards of proof for the demonstrated benefits of their products (or at least the patented ones). And frankly, the world has enough products that survive entirely based on the merits of their marketing campaigns.

As far as I can tell the only downside to this is no more jokes about patented [perpetual motion machines](http://www.phact.org/e/dennis4.html).

#### Something Must Be Done, And This Is Something

Maybe the problem of the patent arms race can be solved in other ways, such as raising the bar of patentability to a height that an [idiot](http://www.infoworld.com/article/05/04/07/HNpatentpolicy_1.html) can no longer easily jump over it. There are other ways of making the US patent law more strict, and maybe they are better than mine. I am admittedly a dilettante in this area, so let's just hope that someone who knows what they are doing has some contribution to the recent moves towards patent law reform.
