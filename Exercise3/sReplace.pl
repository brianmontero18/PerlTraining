#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);
use 5.010;

my @aux;
my $text;
my @text;
my %hash;
my $replace;
my @replace;
my @changes;

print "Please, enter 1 line of text:";
$text = <STDIN>;
chomp($text);
@text = split(/\s+/, $text);
print "Please, enter space separated strings to match and replace (one pair per line).\n";
print "Empty line will interrupt input and start execution:\n";
while(<>){
	if($_ eq "\n"){
		last;
	}
	$replace= $_;
	chomp($replace);
	@aux = split(/\s+/, $replace);
	push @replace, @aux;
}
%hash = @replace;
@changes = keys %hash;
foreach my $i (0 .. $#text){
	for my $change (@changes){
		if($text[$i] eq $change){
			$text[$i] = $hash{$change};
		}
	}
}
say Dumper\@text;

__END__
