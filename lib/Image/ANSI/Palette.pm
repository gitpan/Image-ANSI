package Image::ANSI::Palette;

=head1 NAME

Image::ANSI::Palette - The default palette

=head1 SYNOPSIS

	$pal = Image::ANSI::Palette->new;

=cut

use strict;
use warnings;

our $VERSION = '0.01';

my $palette = [

	[ 0,   0,   0   ], # black
	[ 42,  0,   0   ], # red
	[ 0,   42,  0   ], # green
	[ 42,  21,  0   ], # yellow
	[ 0,   0,   42  ], # blue
	[ 42,  0,   42  ], # magenta
	[ 0,   42,  42  ], # cya
	[ 42,  42,  42  ], # white
	                   # bright
	[ 21,  21,  21  ], # black
	[ 63,  21,  21  ], # red
	[ 21,  63,  21  ], # green
	[ 63,  63,  21  ], # yellow
	[ 21,  21,  63  ], # blue
	[ 63,  21,  63  ], # magenta
	[ 21,  63,  63  ], # cyan
	[ 63,  63,  63  ]  # white

];

=head1 METHODS

=head2 new( )

Creates a new Image::ANSI::Palette object.

=cut

sub new {
	my $class = shift;
	my $self  = {};

	bless $self, $class;

	for( 0..@$palette ) {
		$self->set( $_, $palette->[ $_ ] );
	}

	return $self;
}

=head2 get( $index )

Get the rgb triple at index $index

=cut

sub get {
	my $self  = shift;
	my $index = shift;

	return $self->{ data }->[ $index ]; 
}

=head2 set( $index, $rgb )

Write an rgb triple at index $index

=cut

sub set {
	my $self = shift;
	my ( $index, $rgb ) = @_;

	$self->{ data }->[ $index ] = $rgb; 
}

=head2 clear( )

Clears any in-memory data.

=cut

sub clear {
	my $self = shift;

	$self->{ data } = [];
}

=head1 AUTHOR

=over 4 

=item * Brian Cassidy E<lt>bricas@cpan.orgE<gt>

=back

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Brian Cassidy

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

1;