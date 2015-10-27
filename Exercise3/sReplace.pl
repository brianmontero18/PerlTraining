#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

my $matching;
my $aux;

print "Please, enter 1 line of text:";
my $text = <STDIN>;
chomp($text);
print "$text\n";
print "Please, enter space separated strings to match and replace (one pair per line).\n";
print "Empty line will interrupt input and start execution:\n";
do{
	$aux = <STDIN>;	
	push @matching, $aux;
	say Dumper \@matching;
} until ($matching eq ("\n"));
print "ESCRIBI $matching";

__END__
