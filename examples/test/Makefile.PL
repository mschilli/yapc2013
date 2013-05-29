use 5.012003;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Foo',
    VERSION_FROM      => 'lib/Foo.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Foo.pm', # retrieve abstract from module
       AUTHOR         => 'Mike Schilli <m@perlmeister.com>') : ()),
);

sub MY::postamble {
    "livetest:\n" .
    "\tvagrant up; " .
    "vagrant ssh -c 'cd /vagrant; perl Makefile.PL; LIVE=1 make test'";
}
