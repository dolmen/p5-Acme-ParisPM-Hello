use 5.010;
use strict;
use warnings;

package Acme::ParisPM::Hello;

use Getopt::Long 'GetOptionsFromArray';

sub run
{
    my $self = shift;

    my $lang = 'en';
    GetOptionsFromArray(\@_, "lang=s", \$lang) or die;
    my $who = $_[0] // 'Paris.pm';
    say "Hello, $who!" if $lang eq 'en';
    say "Coucou, $who\N{U+A0}!" if $lang eq 'fr';
}

1;
