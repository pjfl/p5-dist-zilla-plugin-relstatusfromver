package Dist::Zilla::Plugin::RelStatusFromVer;

use 5.008;
use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 2 $ =~ /\d+/gmx );

use Moose;
use Perl::Version;

with 'Dist::Zilla::Role::ReleaseStatusProvider';

has 'threshold' => is => 'ro', isa => 'Int', default => 1;

sub provide_release_status {
   my $self = shift;

   my ($subversion) = Perl::Version->new( $self->zilla->version )->subversion;

   return $subversion && $subversion > $self->threshold ? 'testing' : 'stable';
}

__PACKAGE__->meta->make_immutable;

no Moose;

1;

__END__

=pod

=encoding utf-8

=head1 Name

Dist::Zilla::Plugin::RelStatusFromVer - Derive the release status from the distributions version

=head1 Synopsis

   ; In dist.ini
   [RelStatusFromVer]

=head1 Description

Extracts the subversion from the distributions version and, if it exceeds the
threshold attribute, sets the release status to C<testing>

=head1 Configuration and Environment

Defines the following attributes;

=over 3

=item C<threshold>

An integer that defaults to 1

=back

=head1 Subroutines/Methods

=head2 C<provide_release_status>

Uses the distributions subversion number to determine the release status

=head1 Diagnostics

None

=head1 Dependencies

=over 3

=item L<Dist::Zilla>

=item L<Moose>

=item L<Perl::Version>

=back

=head1 Incompatibilities

There are no known incompatibilities in this module

=head1 Bugs and Limitations

There are no known bugs in this module. Please report problems to
http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dist-Zilla-Plugin-RelStatusFromVer.
Patches are welcome

=head1 Acknowledgements

Larry Wall - For the Perl programming language

=head1 Author

Peter Flanigan, C<< <pjfl@cpan.org> >>

=head1 License and Copyright

Copyright (c) 2015 Peter Flanigan. All rights reserved

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself. See L<perlartistic>

This program is distributed in the hope that it will be useful,
but WITHOUT WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE

=cut

# Local Variables:
# mode: perl
# tab-width: 3
# End:
# vim: expandtab shiftwidth=3:
