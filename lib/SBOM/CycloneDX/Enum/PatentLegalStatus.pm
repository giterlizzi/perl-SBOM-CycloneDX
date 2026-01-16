package SBOM::CycloneDX::Enum::PatentLegalStatus;

use 5.010001;
use strict;
use warnings;
use utf8;

use Exporter 'import';
our (@EXPORT_OK, %EXPORT_TAGS, %ENUM);

BEGIN {

    %ENUM = (
        PENDING     => 'pending',
        GRANTED     => 'granted',
        REVOKED     => 'revoked',
        EXPIRED     => 'expired',
        LAPSED      => 'lapsed',
        WITHDRAWN   => 'withdrawn',
        ABANDONED   => 'abandoned',
        SUSPENDED   => 'suspended',
        REINSTATED  => 'reinstated',
        OPPOSED     => 'opposed',
        TERMINATED  => 'terminated',
        INVALIDATED => 'invalidated',
        IN_FORCE    => 'in-force',
    );

    require constant;
    constant->import(\%ENUM);

    @EXPORT_OK   = sort keys %ENUM;
    %EXPORT_TAGS = (all => \@EXPORT_OK);

}

sub values { sort values %ENUM }


1;

=encoding utf-8

=head1 NAME

SBOM::CycloneDX::Enum::PatentLegalStatus - Assertion Type

=head1 SYNOPSIS

    use SBOM::CycloneDX::Enum qw(PATENT_LEGAL_STATUS);

    say PATENT_LEGAL_STATUS->GRANTED;


    use SBOM::CycloneDX::Enum::PatentLegalStatus;

    say SBOM::CycloneDX::Enum::PatentLegalStatus->REVOKED;


    use SBOM::CycloneDX::Enum::PatentLegalStatus qw(:all);

    say INVALIDATED;


=head1 DESCRIPTION

L<SBOM::CycloneDX::Enum::PatentLegalStatus> is ENUM package used by L<SBOM::CycloneDX::Patent>.

Indicates the current legal status of the patent or patent application,
based on the WIPO ST.27 standard. This status reflects administrative,
procedural, or legal events. Values include both active and inactive states
and are useful for determining enforceability, procedural history, and
maintenance status.


=head1 CONSTANTS

=over

=item * L<PENDING>, The patent application has been filed but not yet
examined or granted.

=item * L<GRANTED>, The patent application has been examined and a patent
has been issued.

=item * L<REVOKED>, The patent has been declared invalid through a legal or
administrative process.

=item * L<EXPIRED>, The patent has reached the end of its enforceable term.

=item * L<LAPSED>, The patent is no longer in force due to non-payment of
maintenance fees or other requirements.

=item * L<WITHDRAWN>, The patent application was voluntarily withdrawn by
the applicant.

=item * L<ABANDONED>, The patent application was abandoned, often due to
lack of action or response.

=item * L<SUSPENDED>, Processing of the patent application has been
temporarily halted.

=item * L<REINSTATED>, A previously abandoned or lapsed patent has been
reinstated.

=item * L<OPPOSED>, The patent application or granted patent is under
formal opposition proceedings.

=item * L<TERMINATED>, The patent or application has been officially
terminated.

=item * L<INVALIDATED>, The patent has been invalidated, either in part or
in full.

=item * L<IN_FORCE>, The granted patent is active and enforceable.

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

This software is copyright (c) 2025-2026 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
