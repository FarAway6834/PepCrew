package pcrew::MyIO

use strict;
use warnings;
use Exporter 'import';

our @EXPORT = qw(io);

sub io {
    if (scalar @_) {
        print $_[0];
        return "";
    } else {
        return scalar <STDIN>;
    }
}

1;