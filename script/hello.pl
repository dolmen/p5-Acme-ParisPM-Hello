#!/usr/bin/env perl

use Term::Encoding;
use Encode::Argv;

use Acme::ParisPM::Hello;
Acme::ParisPM::Hello->run(@ARGV);
