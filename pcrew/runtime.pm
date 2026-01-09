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

pepcrew edit input var as regex, then return it.

actually, input var is changed, but I think that's not matter.

because it isn't weird. perl-language is formal language. "weird" is undefined.

it's normal semmentics on perl.

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