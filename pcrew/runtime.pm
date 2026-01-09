package pcrew::Runtime;

use strict;
use warnings;
use Exporter 'import';

use pcrew::MyIO;

our @EXPORT = qw(io pepcrew);

sub pepcrew {
    my ($pettern, $repl) = @_;
    return sub {
        $_[0] =~ s/$pettern/$repl/gm;
        return $_[0];
    }
}

1;