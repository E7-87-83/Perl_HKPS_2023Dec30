# Your Impression towards Perl?

* Perl vs PHP

* Perl vs Python

* Perl vs Bash Shell script

# Today's Flow
* History
* Perl Modules (CPAN Modules)
* Perl Syntax
* Live Coding

# "Easy things should be easy, and hard things should be possible."
### History
1987 - Perl
1995 - CPAN
1994 - Perl 5
2000-2019 - Perl 6 (change name to Raku) 
2023 - Perl 5.38

# cpan - The Comprehensive Perl Archive Network

https://www.metacpan.org

# Install perl modules 

* cpan

* cpanm Dist::Module

* manually install through make and make install

### Location of installed modules

~/perl5/lib/perl5

perldoc -l Dist::Module

### Uninstall modules OR Reinstall 

cpanm --uninstall Dist::Module
cpan > force install Dist::Module

# metacpan.org
* check availability of perl modules

* read manual

# Tips: XS module(s)
``` perl
use Math::Vector::Real; # Math::Vector::Real::XS
```

Example: cosine_similarity.pl

# running Perl

### one-liner
perl -E 'say "hello"'
perl -e 'print $$'

https://learnbyexample.github.io/learn_perl_oneliners/

### chmod +x perlscript.pl

### perl perlscript.pl

# Sigils - Scalar, Array, Hash, Subroutine
* $scalar
* @array
* %hash

* perldoc perlcheat


# different ways of express False
* 0
* ''
* undef

``` perl
while (@ARGV) {
    say shift @ARGV;
}
```

# different ways of applying delimiters
$ cat paths.txt

#### leaning toothpick syndrome
$ perl -ne 'print if /\/home\/ram\//' paths.txt

#### using a different delimiter makes it more readable here
$ perl -ne 'print if m{/home/ram/}' paths.txt

$ perl -ne 'print if !m#/home/ram/#' paths.txt

---
taken from https://learnbyexample.github.io/learn_perl_oneliners/line-processing.html

# two ways of commenting
* hash sign #

* 
```perl
=pod 
This is a comment.
=cut
```

# "Context"
``` perl
my @arr = (1, 3, 2);
my $scalar = @arr;
my @n_arr = @arr;
say $scalar;
say join ",", @n_arr;
```
# syntactic sugar

Definition: An alternative way of writing something more easily; a shortcut.

Perl's favorite default variable $_

_Regular Expression

# Larry Wall
(1954 - )

* Father of Perl

* Studied Linguistics

"Wall was trained as a linguist, and the design of Perl is very much informed by linguistic principles. Examples include Huffman coding (common constructions should be short), good end-weighting (the important information should come first), and a large collection of language primitives. Perl favors language constructs that are concise and natural for humans to write, even where they complicate the Perl interpreter." - wikipedia

"Speakers of a natural language are allowed to have differing skill levels, to speak different subsets of the language, to learn as they go, and, generally, to put the language to good use before they know the whole language. You don’t know all of Perl yet, just as you don’t know all of English. But that’s Officially Okay in Perl culture. You can work with Perl usefully, even though we haven’t even told you how to write your own subroutines yet." - Programming Perl

# 3 Virtues of Perl Programmers
* Laziness!!!

* Impatience

* Hubris

# Websites Recommended

https://perldoc.perl.org/

https://metacpan.org/

https://learnbyexample.github.io/learn_perl_oneliners/

https://www.perlmonks.org

Read also:

https://raku-advent.blog/2022/12/20/sigils/

# Live Coding

# END

"The problem with being consistent is that there are lots of ways to be consistent, and they're all inconsistent with each other." -- Larry Wall

Thank you!!!
