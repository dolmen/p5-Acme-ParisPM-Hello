use strict;
use warnings;
use Test::More tests => 1;

my $check = system $^X, qw(-c script/hello.pl);
is $?, 0, 'syntax OK';
