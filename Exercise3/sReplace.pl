#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);
use 5.010;

my $matching;
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
say Dumper\@text;
print "Please, enter space separated strings to match and replace (one pair per line).\n";
print "Empty line will interrupt input and start execution:\n";
while(<>){
	#$aux= <>;
	if($_ eq "\n"){
		last;
	}
	$replace= $_;
	chomp($replace);
	@aux = split(/\s+/, $replace);
	#print "$aux";
	#INVESTIGAAAAAAAAAAAAAAAARRR push @{$replace}, @aux;
}
say Dumper\@replace;
%hash = @replace;
say Dumper\%hash;
@changes = keys %hash;
foreach my $i (0 .. $#text){
	for my $change (@changes){
		if($text[$i] eq $change){
			#print "$text[$i]";
			#print "$replace[$j+1]";
			#my $temp = $replace[$j+1];
			$text[$i] = $hash{$change};
			print "$text[$i]";
		}
	}
}
say Dumper\@text;

__END__
