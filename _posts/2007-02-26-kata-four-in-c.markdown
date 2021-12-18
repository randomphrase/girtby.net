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

```c++

template <class T>
void analyze_file(const char * dat, T & an)
{
  fstream fs(dat);
  unsigned processed = 0;

  while(true) {
    string line;
    getline(fs, line);
    if (!fs.good())
      break;
    if (an(line))
      processed++;
  }
  cout << processed << " lines processed" << endl;
  if (processed) {
    cout << an << endl;
  }
}
```

Then it's a simple matter of defining a functor for each type of analysis. For the weather data, it looks like this:

```c++

class WeatherAnalyzer {
public:
  WeatherAnalyzer() : minday(0), minspread(numeric_limits<unsigned>::max()) {}
  bool operator() (const string & line);
  unsigned minday, minspread;
};

ostream & operator << (ostream & os, WeatherAnalyzer & w)
{
  return os << "Min spread = " << w.minspread << " (day " << w.minday << ")";
}

bool WeatherAnalyzer::operator() (const string & line)
{
  istringstream ls(line);
  unsigned d, maxt, mint;
  ls >> d >> maxt >> mint;
  if (!ls.good() || (maxt < mint))
    // ignore unparseable lines:
    return false;

  unsigned spread = maxt - mint;
  if (spread < minspread) {
    minday = d;
    minspread = spread;
  }
  return true;
}
```

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
