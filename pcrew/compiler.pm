package pcrew::Compiler;

use strict;
use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(pcrewc);

use pcrew::Runtime;

=begin comment
# pcrewc

actually, pcrewc on pepcrew write by pepcrew

```pcrew
pcrewc = s/□/□/gm
```

this code is pcrew code s.t. pcrewc

it compiles to the perl source that using pepcrew function

=end comment
=cut
my $pcrewc = pepcrew(qr/□/, "□");

1;