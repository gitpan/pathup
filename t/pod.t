#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More;

eval {
	require Pod::Checker;
	my $checker = Pod::Checker->new();
	$checker->parse_from_file('pathup', \*STDOUT);
	plan tests => 2;
	is( $checker->num_errors(), 0,        'validate POD'    );
	is( $checker->name(),       'pathup', 'verify POD name' );
};

plan skip_all => "Couldn't test POD docs (this is not a problem)"
	if $@;

