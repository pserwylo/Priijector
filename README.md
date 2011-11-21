Priijector
==========

About
-----

For the 2011 Open Source Developer Conference in Canberra, Australia, I gave a
presentation about Wii Homebrew (http://osdc.com.au/schedule/#wiihomebrewrunnin)
I thought it would be fun to demonstrate the concept first hand by giving the
presentation using a piece of Wii Homebrew I wrote for the conference.

You can see some screenshots of the type of presentation to expect at:
 http://peter.serwylo.com


Creating Presentations
----------------------

### Markup

I started with a few different pieces of syntax and then added a couple more as
I required more. This section will list the different ways to markup a pres.

* New slide: Start line with '*'
* Don't transition to slide: Follow '*' with '+'
* New block (transition) on current slide: Start line with '!'
* Heading text: Start line with '='
* Subheading text: Start line with '-'
* Regular text: Just don't start with anything special
* Left align regular text: Start regular text line with '^'
* Empty block: Leave the line empty
* Image: Start line with 'img:' then continue with the path (e.g. 'img:sd:/apps/priijector/pres.assets/...')

### Saving Presentation

Currently, the program will only read the file in sd:/apps/priijector/pres.txt
Later on, there may be a menu system which scans for available presentation 
files and gives the user the option to choose one.


Playing Presentations
---------------------

When you open priijector on the Wii, the controls are pretty basic (essentially 
what I needed to give the presentation).

* A / Right - Next slide, or next block on the current slide
* B / Left - Previous slide/block
* Home - Bookmark current location then exit to loader (e.g. Homebrew Channel)
* A + B - Bookmark current location then restart wii (I used this so I could demo a softmodded Wii)
