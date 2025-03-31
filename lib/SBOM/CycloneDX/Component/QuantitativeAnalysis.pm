package SBOM::CycloneDX::Component::QuantitativeAnalysis;

use 5.010001;
use strict;
use warnings;
use utf8;

use SBOM::CycloneDX::List;

use Types::Standard qw(InstanceOf);
use Types::TypeTiny qw(ArrayLike);

use Moo;
use namespace::autoclean;

extends 'SBOM::CycloneDX::Base';

has performance_metrics => (
    is      => 'rw',
    isa     => ArrayLike [InstanceOf ['SBOM::CycloneDX::Component::PerformanceMetric']],
    default => sub { SBOM::CycloneDX::List->new }
);

has graphics => (is => 'rw', isa => InstanceOf ['SBOM::CycloneDX::Component::GraphicsCollection']);


sub TO_JSON {

    my $self = shift;

    my $json = {};

    $json->{performanceMetrics} = $self->performance_metrics if @{$self->performance_metrics};
    $json->{graphics}           = $self->graphics            if %{$self->graphics->TO_JSON};

    return $json;

}

1;

=encoding utf-8

=head1 NAME

SBOM::CycloneDX::Component::QuantitativeAnalysis - Quantitative Analysis

=head1 SYNOPSIS

    SBOM::CycloneDX::Component::QuantitativeAnalysis->new();


=head1 DESCRIPTION

L<SBOM::CycloneDX::Component::QuantitativeAnalysis> provides a quantitative
analysis of the model.

=head2 METHODS

L<SBOM::CycloneDX::Component::QuantitativeAnalysis> inherits all methods from L<SBOM::CycloneDX::Base>
and implements the following new ones.

=over

=item SBOM::CycloneDX::Component::QuantitativeAnalysis->new( %PARAMS )

Properties:

=over

=item C<performance_metrics>, The model performance metrics being reported.
Examples may include accuracy, F1 score, precision, top-3 error rates, MSC,
etc.

=item C<graphics>, A collection of graphics that represent various measurements.

=back

=item $quantitative_analysis->performance_metrics

=item $quantitative_analysis->graphics

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
