
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Business::CardInfo',
                       'DISTNAME' => 'Business-CardInfo',
                       'AUTHOR' => 'Simon Elliott <cpan@papercreatures.com>',
                       'ABSTRACT' => 'Get/Validate data from credit & debit cards',
                       'EXE_FILES' => [],
                       'VERSION' => '0.05',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Test::Role' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Moose' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



