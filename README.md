# Name

Dist::Zilla::Plugin::RelStatusFromVer - Derive the release status from the distributions version

# Synopsis

    ; In dist.ini
    [RelStatusFromVer]

# Description

Extracts the subversion from the distributions version and, if it exceeds the
threshold attribute, sets the release status to `testing`

# Configuration and Environment

Defines the following attributes;

- `threshold`

    An integer that defaults to 1

# Subroutines/Methods

## `provide_release_status`

Uses the distributions subversion number to determine the release status

# Diagnostics

None

# Dependencies

- [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla)
- [Moose](https://metacpan.org/pod/Moose)
- [Perl::Version](https://metacpan.org/pod/Perl::Version)

# Incompatibilities

There are no known incompatibilities in this module

# Bugs and Limitations

There are no known bugs in this module. Please report problems to
http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dist-Zilla-Plugin-RelStatusFromVer.
Patches are welcome

# Acknowledgements

Larry Wall - For the Perl programming language

# Author

Peter Flanigan, `<pjfl@cpan.org>`

# License and Copyright

Copyright (c) 2015 Peter Flanigan. All rights reserved

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself. See [perlartistic](https://metacpan.org/pod/perlartistic)

This program is distributed in the hope that it will be useful,
but WITHOUT WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE
