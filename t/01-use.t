use Test::More tests => 5;

use strict;
use warnings;

BEGIN {
	use_ok( 'Image::ANSI' );
	use_ok( 'Image::ANSI::Parser' );
	use_ok( 'Image::ANSI::Pixel' );
	use_ok( 'Image::ANSI::Font' );
	use_ok( 'Image::ANSI::Palette' );
}

