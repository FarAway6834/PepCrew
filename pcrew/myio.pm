package pcrew::MyIO

use strict;
use warnings;
use Exporter 'import';

our @EXPORT = qw(io);

=begin comment

# io

io is I/O function

## I : input

`io()` is actually `input()` on python

I think that it's better than python

fun fact : I'm actually python programmer

## O : output

`io(some_string)` is actually `print(some_string)` on python

only one argument is allowed

I think that this I/O interface is better simple and pretty good than python or perl

=end commment
=cut
sub io {
    if (scalar @_) {
        print $_[0];
        return "";
    } else {
        return scalar <STDIN>;
    }
}

1;