use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'SMS::OVH',
    AUTHOR           => q{Paco Esteban <paco@onna.be>},
    VERSION_FROM     => 'lib/SMS/OVH.pm',
    ABSTRACT_FROM    => 'lib/SMS/OVH.pm',
    LICENSE          => 'bsd',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'OvhApi' => 0,
        'Moose' => 0,
        'namespace::clean' => 0
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'SMS-OVH-*' },
);
