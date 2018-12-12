$Id: README.txt,v 1.1 2004/12/14 11:20:13 g137997 Exp $

General
=======

ID3 (or mp3info as it is called on Sourceforge) is a collection of classes 
useful for reading ID3-tags (and in some respects even ID3v2-tags) as well as 
technical information on the file like bitrates and playing times. It also 
includes an API to write ID3 (V1 and since 1.6.0d4 V2 also ) tags to an mp3 
file.

ID3 and all its associated classes (ie. all belonging to the packages 
de.ueberdosis.mp3info and below) are free under the limitations described in 
the Lesser GNU General Public License (LGPL). Classes that do not belong 
directly to that tree (for example the helper classes in de.ueberdosis.util) 
are otherwisely licensed (I have to find some nice license to that as well) 
but may be distributed freely with the package. That means I keep every right 
on them but you may use them in the context of this package
Any part of the code or the documentation stating the package was GPL 
(not LGPL) is wrong and a legacy. 
The license has been changed to LGPL as of version 1.6.0d3.


Installation
============

There is no such :-). 
You could change your CLASSPATH to include the jar or place the it into your 
$(JRE_HOME)/lib/ext directory. But I just guess that calling the package from
the command line is the least common use.


Usage
=====

Have a look at Usage.txt, ID3V2.txt as well as the example code in examples/
