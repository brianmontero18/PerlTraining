#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);
use 5.010;

my @aux;
my @lineInput;
my @englishNumbers;
my %translator;
my @aux2;
my @numbers = qw(one 1 two 2 three 3 four 4 five 5 six 6 seven 7 eight 8 nine 9 ten 10 eleven 11 twelve 12 thirteen 13 fourteen 14 sixteen 16 seventeen 17 eighteen 18 nineteen 19 twenty 2 thirty 3 forty 4 fifty 5 sixty 6 seventy 7 eighty 8 ninety 9 hundred *100+ thousand *1000+ million *1000000+);

my %integers = @numbers;

print STDOUT "Please, enter the numbers in English: \n";
while(<>){
	if($_ eq "\n"|| $_ eq ""){
		last;
	}
	my $englishNumbers=$_;
	chomp($englishNumbers);
	#@aux = split(/\s+/, $englishNumbers);
	push @englishNumbers, $englishNumbers;
}
say Dumper\@englishNumbers;

my @keyNumbers = keys %integers;
#say Dumper\@keyNumbers;
foreach my $i (0 .. $#englishNumbers){	
	my @aux = split(/\s+/, $englishNumbers[$i]);
	print Dumper\@aux;
	@aux2 = ();
	foreach my $j (0 .. $#aux){
		foreach my $k (@keyNumbers){
			print Dumper\$aux[$j];
			print Dumper\$k;
			if($aux[$j] eq $k){
				print Dumper\$integers{$k};
				push @aux2, $integers{$k}; 
				print Dumper\@aux2;
				last;
			}
		}
		my $number = join("", @aux2);
		$translator{$englishNumbers[$i]}=$number;
		print Dumper\%translator;
	}
	my $value = eval $translator{$englishNumbers[$i]};
	my $valueAux = $value;	
	if((chop $valueAux) eq "+"){
		chop $value;
		$translator{$englishNumbers[$i]}=$value;
	}
	$translator{$englishNumbers[$i]}=$value;
}

say Dumper\%translator;
foreach my $key (sort {$translator{$a} <=> $translator{$b}} keys %translator){
	print "$key: $translator{$key}\n"
}


__END__
