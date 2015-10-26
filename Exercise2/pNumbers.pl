#!/usr/bin/perl

my @result;
my $number;
my $counter;

print "Introduce a number between 2 and 1000000\n",
$number= <>;
for (my $varA =  $number; $varA >0; $varA--){
	$counter=0;
	for (my $varB = $varA; $varB >0; $varB--){	
		if(($varA % $varB)==0){
			$counter++;
		}	
	}
	if($counter == 2){
		push @result, $varA;
	}
}
print "The numbers are: @result\n",
	
__END__
