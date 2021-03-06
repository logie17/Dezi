use strict;
use warnings;
use inc::Module::Install;
use 5.008003;

name 'Dezi';
all_from 'lib/Dezi.pm';
requires 'Test::More'                       => 0;
requires 'Search::Query::Dialect::Lucy'     => 0.04;
requires 'Lucy'                             => 0.001000;
requires 'SWISH::Prog'                      => 0.54;
requires 'Search::OpenSearch::Engine::Lucy' => 0.05;
requires 'Search::OpenSearch::Server'       => 0.09;
requires 'Search::OpenSearch'               => 0.15;
requires 'Plack'                            => 0;
requires 'Module::Load'                     => 0.22;

perl_version '5.8.3';
license 'http://dev.perl.org/licenses/';
homepage 'https://github.com/karpet/Dezi';
bugtracker 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dezi';
repository 'git://github.com/karpet/Dezi.git';
install_script 'bin/dezi';

WriteMakefile(
    PL_FILES => {},
    dist     => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dezi-* dezi.index' },
);
