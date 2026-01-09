package pcrew::Compiler;

use strict;
use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(pcrewc);

use pcrew::Runtime;

my $pcrewc = pepcrew(qr/□/, "□"); # `pcrewc = s/□/□/gm`

1;