#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);
use 5.010;

my $matching;
my $aux;
my $text;
my @text;
my %hash;
my $replace;
my @replace;

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
	@replace = split(/\s+/, $replace);
	#%hash = $aux;
}
say Dumper\@replace;
foreach my $i (0 .. $#text){
	foreach my $j (0 .. $#replace){
		if($text[$i] eq $replace[$j]){
			#print "$text[$i]";
			#print "$replace[$j+1]";
			my $temp = $replace[$j+1];
			$text[$i] = $temp;
			print "$text[$i]";
		}
	}
}
say Dumper\@text;

__END__
