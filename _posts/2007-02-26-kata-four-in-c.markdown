---
layout: post
status: publish
published: true
title: Kata Four in C++
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  On a whim, I attempted Dave Thomas' [Kata Four](http://codekata.pragprog.com/2007/01/kata_four_data_.html) in C++. Yes that's right, C++.

  Here's what I ended up with, feel free to throw peanuts.


wordpress_id: 1473
wordpress_url: http://girtby.net/2007/10/09/kata-four-in-c
date: 2007-02-26 12:37:00.000000000 -06:00
categories:
- Nerd Factor X
tags:
- c++
- coding
comments:
- id: 1555
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-02-26 12:37:00 -0600'
  date_gmt: '2007-02-26 12:37:00 -0600'
  content: 'I forgot to point out the size of the executable: 29K, including symbols.
    Having experienced C++ code bloat on many occasions this was a pleasant surprise
    and a testament to the compiler (gcc 4.0).'
---
On a whim, I attempted Dave Thomas' [Kata Four](http://codekata.pragprog.com/2007/01/kata_four_data_.html) in C++. Yes that's right, C++.

Here's what I ended up with, feel free to throw peanuts.


<a id="more"></a><a id="more-1473"></a>

I did the parts in order, without looking ahead. When it came to part three of the exercise, it became apparent that I needed to separate the analysis of the file from the mechanics of reading it. I used the common [Functor](http://en.wikipedia.org/wiki/Function_object) idiom, calling it with each line of input:

<pre class="htmlize">
<span class="keyword">template</span> &lt;<span class="keyword">class</span> <span class="type">T</span>&gt;
<span class="type">void</span> <span class="function-name">analyze_file</span>(<span class="keyword">const</span> <span class="type">char</span> * <span class="variable-name">dat</span>, <span class="type">T</span> &amp; <span class="variable-name">an</span>)
{
  <span class="type">fstream</span> <span class="variable-name">fs</span>(dat);
  <span class="type">unsigned</span> <span class="variable-name">processed</span> = 0;

  <span class="keyword">while</span>(<span class="constant">true</span>) {
    <span class="type">string</span> <span class="variable-name">line</span>;
    getline(fs, line);
    <span class="keyword">if</span> (<span class="negation-char">!</span>fs.good())
      <span class="keyword">break</span>;
    <span class="keyword">if</span> (an(line))
      processed++;
  }
  cout &lt;&lt; processed &lt;&lt; <span class="string">" lines processed"</span> &lt;&lt; endl;
  <span class="keyword">if</span> (processed) {
    cout &lt;&lt; an &lt;&lt; endl;
  }
}
</pre>

Then it's a simple matter of defining a functor for each type of analysis. For the weather data, it looks like this:

<pre class="htmlize">
<span class="keyword">class</span> <span class="type">WeatherAnalyzer</span> {
<span class="keyword">public</span>:
  <span class="function-name">WeatherAnalyzer</span>() : minday(0), minspread(<span class="constant">numeric_limits</span>&lt;<span class="type">unsigned</span>&gt;::max()) {}
  <span class="type">bool</span> <span class="keyword">operator</span><span class="function-name">()</span> (<span class="keyword">const</span> <span class="type">string</span> &amp; <span class="variable-name">line</span>);
  <span class="type">unsigned</span> <span class="variable-name">minday</span>, <span class="variable-name">minspread</span>;
};

<span class="type">ostream</span> &amp; <span class="keyword">operator</span> <span class="function-name">&lt;&lt;</span> (<span class="type">ostream</span> &amp; <span class="variable-name">os</span>, <span class="type">WeatherAnalyzer</span> &amp; <span class="variable-name">w</span>)
{
  <span class="keyword">return</span> os &lt;&lt; <span class="string">"Min spread = "</span> &lt;&lt; w.minspread &lt;&lt; <span class="string">" (day "</span> &lt;&lt; w.minday &lt;&lt; <span class="string">")"</span>;
}

<span class="type">bool</span> <span class="constant">WeatherAnalyzer</span>::<span class="keyword">operator</span><span class="function-name">()</span> (<span class="keyword">const</span> <span class="type">string</span> &amp; <span class="variable-name">line</span>)
{
  <span class="type">istringstream</span> <span class="variable-name">ls</span>(line);
  <span class="type">unsigned</span> <span class="variable-name">d</span>, <span class="variable-name">maxt</span>, <span class="variable-name">mint</span>;
  ls &gt;&gt; d &gt;&gt; maxt &gt;&gt; mint;
  <span class="keyword">if</span> (<span class="negation-char">!</span>ls.good() || (maxt &lt; mint))
    <span class="comment-delimiter">// </span><span class="comment">ignore unparseable lines:
</span>    <span class="keyword">return</span> <span class="constant">false</span>;

  <span class="type">unsigned</span> <span class="variable-name">spread</span> = maxt - mint;
  <span class="keyword">if</span> (spread &lt; minspread) {
    minday = d;
    minspread = spread;
  }
  <span class="keyword">return</span> <span class="constant">true</span>;
}</pre>


Add some `#include`s, a `main()`, and we're all set. It all came together pretty quickly thanks mainly to the power of the C++ iostreams library.

All in all I think it came out pretty well, although it is by no means perfect. If it was going into production here's what I'd be looking at:

 * Defining a proper stream insertion operator that can handle wide chars.
 * Better error reporting, particularly when the input file cannot be opened.
 * Logging of "unexpected" unparseable lines.
 * Getter methods, rather than public member variables, for accessing the accumulated values of the functor.

In answer to the Kata questions:

 * I made some early design decisions which were not validated when writing subsequent programs. Specifically I decided that each line should be parsed strictly once the start of data was detected. In other words, I had a `skip_to_data` function in my original part 1 solution. This was overturned when I went to part two because I observed that it was better to simply skip lines that could not be parsed, particularly when there was spurious data in the middle of the dataset. However making this change was fairly simple.
 * The second program was a copy and paste of the first, with the relevant changes in fairly obvious parts. (This is usually very poor practice, but is justified in this case because I wasn't actually shipping anything)
 * I don't believe that factoring out common code is always a good thing. For example, it would have been a fairly easy change to use an abstract `Analyzer` base class instead of a functor object. This might contain some common functionality such as the code to accumulate the minimum value and associated identifier. However I deliberately didn't do this because it would have required a complicated interface between the base class and subclasses, for very little reuse benefit. As for readability and maintainability of the refactoring, I'd say it was a definite win.
