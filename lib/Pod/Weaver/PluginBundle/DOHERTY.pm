use strict;
use warnings;

package Pod::Weaver::PluginBundle::DOHERTY;
BEGIN {
  $Pod::Weaver::PluginBundle::DOHERTY::VERSION = '0.002';
}
# ABSTRACT: Pod::Weaver configuration the way DOHERTY does it

# Dependencies
use Pod::Weaver::Plugin::Encoding                       qw();
use Pod::Weaver::Section::Availability 1.102570         qw();
use Pod::Weaver::Section::SourceGitHub 0.53             qw();
use Pod::Weaver::Section::BugsAndLimitations 1.102670   qw(); # To read the bugtracker properly

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@DOHERTY/CorePrep',              _exp('@CorePrep'),          {} ],
        [ '@DOHERTY/Encoding',              _exp('-Encoding'),          {} ],
        [ '@DOHERTY/Name',                  _exp('Name'),               {} ],
        [ '@DOHERTY/Version',               _exp('Version'),            {} ],

        [ 'SYNOPSIS',                       _exp('Generic'),            {} ],
        [ 'DESCRIPTION',                    _exp('Generic'),            {} ],
        [ 'OVERVIEW',                       _exp('Generic'),            {} ],
        [ 'OPTIONS',                        _exp('Generic'),            {} ],

        [ 'METHODS',                        _exp('Generic'),            {} ],
        [ 'FUNCTIONS',                      _exp('Generic'),            {} ],

        [ '@DOHERTY/Leftovers',             _exp('Leftovers'),          {} ],

        [ '@DOHERTY/Availability',          _exp('Availability'),       {} ],
        [ '@DOHERTY/SourceGitHub',          _exp('SourceGitHub'),       {} ],
        [ '@DOHERTY/BugsAndLimitations',    _exp('BugsAndLimitations'), {} ],
        [ 'CREDITS',                        _exp('Generic'),            {} ],
        [ '@DOHERTY/Authors',               _exp('Authors'),            {} ],
        [ '@DOHERTY/Legal',                 _exp('Legal'),              {} ],
    );
}

1;



=pod

=encoding utf-8

=head1 NAME

Pod::Weaver::PluginBundle::DOHERTY - Pod::Weaver configuration the way DOHERTY does it

=head1 VERSION

version 0.002

=for Pod::Coverage mvp_bundle_config

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Pod-Weaver-PluginBundle-DOHERTY/>.

The development version lives at L<http://github.com/doherty/Pod-Weaver-PluginBundle-DOHERTY.git>
and may be cloned from L<git://github.com/doherty/Pod-Weaver-PluginBundle-DOHERTY.git>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://github.com/doherty/Pod-Weaver-PluginBundle-DOHERTY/issues>.

=head1 AUTHOR

Mike Doherty <doherty@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by Mike Doherty.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007

=cut


__END__

