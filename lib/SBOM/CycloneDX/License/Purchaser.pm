package SBOM::CycloneDX::License::Purchaser;

use 5.010001;
use strict;
use warnings;
use utf8;

use SBOM::CycloneDX::OrganizationalEntity;
use SBOM::CycloneDX::OrganizationalContact;

use Types::Standard qw(InstanceOf);

use Moo;
extends 'SBOM::CycloneDX::License::Licensee';

1;

=encoding utf-8

=head1 NAME

SBOM::CycloneDX::License::Purchaser - Purchaser

=head1 SYNOPSIS

    SBOM::CycloneDX::License::Purchaser->new();


=head1 DESCRIPTION

L<SBOM::CycloneDX::License::Purchaser> provides the individual or organization that
purchased the license

=head2 METHODS

L<SBOM::CycloneDX::License::Purchaser> inherits all methods from L<SBOM::CycloneDX::Base>
and implements the following new ones.

=over

=item SBOM::CycloneDX::License::Purchaser->new( %PARAMS )

Properties:

=over

=item C<individual>, The individual, not associated with an organization,
that purchased the license

=item C<organization>, The organization that purchased the license

=back

=item $purchaser->individual

=item $purchaser->organization

=back


=head1 SUPPORT

=head2 Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at L<https://github.com/giterlizzi/perl-SBOM-CycloneDX/issues>.
You will be notified automatically of any progress on your issue.

=head2 Source Code

This is open source software.  The code repository is available for
public review and contribution under the terms of the license.

L<https://github.com/giterlizzi/perl-SBOM-CycloneDX>

    git clone https://github.com/giterlizzi/perl-SBOM-CycloneDX.git


=head1 AUTHOR

=over 4

=item * Giuseppe Di Terlizzi <gdt@cpan.org>

=back


=head1 LICENSE AND COPYRIGHT

This software is copyright (c) 2025 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
