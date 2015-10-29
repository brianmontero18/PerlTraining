#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

package Polygon;
use Data::Dumper;

	sub new{
		my $class = shift;
		my %args = @_;
		my $self = bless{}, $class;
		$self->
		$self->
		$self->

		return $self;
	}

	sub add_vertex{
		my $self = shift;
		my $vertex = shift;
		push $self->{vertices}, $point;
	}


1;

package Circle;our @ISA = qw(Polygon);

	sub new{
		my $class = shift;
		my %args = @_;
		my $self = $class->SUPER::new(polygon_type=>"circle", color=>"yellow");
		$self->{radio}=$args{radio}||0;
		$self->{center}=$args{center}||"0,0";
		return $self;
	}

	sub set_radio{
		my $self = shift;
		$self->{radio} = shift;	
	}

	sub get_radio{
		my $self = shift;
		return $self->{radio};
	}

	sub set_center{
		my $self = shift;
		$self->{center} = shift;
	}

	sub get_center{
		my $self = shift;
		return $self->{center};
	}

1;

package Rectangle;our @ISA = qw(Polygon);

	sub new{
		my $class = shift;
		my %args = @_;
		my $self = $class->SUPER::new(polygon_type=>"circle", color=>"yellow");
		$self->{radio}=$args{radio}||0;
		$self->{center}=$args{center}||"0,0";
		return $self;
	}


1;
