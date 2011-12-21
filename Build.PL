#!/usr/bin/env perl
use utf8;   # vim:set ts=4 sw=4 sts=4:
use strict;
use warnings;
use Module::Build;

Module::Build->new(
	module_name          => 'Acme::ParisPM::Hello',
	dist_author          => 'Olivier Mengué <dolmen@cpan.org>',
    dist_abstract        => 'Hello World pour Paris.pm',
	license              => 'perl',
	meta_add             => {
		resources => {
			homepage => 'https://github.com/dolmen/p5-Acme-ParisPM-Hello',
			repository => 'https://github.com/dolmen/p5-Acme-ParisPM-Hello.git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-ParisPM-Hello',
		},
	},
	requires => {
		'perl' => '5.010',
		'Encode::Argv' => 0,
		'Term::Encoding' => 0,
		'Getopt::Long' => 0,
	},
	configure_requires => {
		'Module::Build' => '0.36',
	},
	build_requires => {
		'Test::More' => '0.98',
	},
)->create_build_script;

