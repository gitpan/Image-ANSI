use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'Image::ANSI',
	VERSION_FROM => 'lib/Image/ANSI.pm',
	PREREQ_PM    => {
		'Test::More'               => 0,
		'Class::Accessor'          => 0
	},
);
