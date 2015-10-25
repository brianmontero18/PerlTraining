#!/usr/bin/perl

my $a=0;
my $b=0;
my $c=0;

($a, $b, $c)=@ARGV;

do{
	my $flag=0;
	if((($b**2) - (4*$a*$c)) >= 0){
		my $root1= (-$b+sqrt(($b**2)-(4*$a*$c)))/2*$a;
		my $root2= (-$b-sqrt(($b**2)-(4*$a*$c)))/2*$a;
		print STDOUT "x1 = $root1\n";
		print STDOUT "x2 = $root2\n";
	}else{
		print STDOUT "ERROR: The result is imaginary\nTry again!\n";
		$flag=1;
	}
}while($flag);

__END__
