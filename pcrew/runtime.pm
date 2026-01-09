package pcrew::Runtime;

use strict;
use warnings;
use Exporter 'import';

use pcrew::MyIO;

our @EXPORT = qw(io pepcrew);

=begin comment

# pepcrew

pepcrew-runtime function generate closer

```perl
pepcrew(pr/[pettern]/, "[repl]")(input)
```

=end comment
=cut
sub pepcrew {
    my ($pettern, $repl) = @_;
    return sub {
        $_[0] =~ s/$pettern/$repl/gm;
        return $_[0];
    }
}

1;