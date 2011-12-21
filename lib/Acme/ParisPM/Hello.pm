use 5.010;
use strict;
use warnings;

package Acme::ParisPM::Hello;

use Term::Encoding ();
use Encode::Argv   ();
use Getopt::Long;

sub run
{
    Encode::Argv->import;

    my $lang = 'en';
    GetOptions("lang=s", \$lang) or die;
    my $who = $ARGV[0] // 'Paris.pm';
    say "Hello, $who!" if $lang eq 'en';
    say "Coucou, $who\N{U+A0}!" if $lang eq 'fr';
}

1;
