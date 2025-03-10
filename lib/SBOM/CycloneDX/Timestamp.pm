package SBOM::CycloneDX::Timestamp;

use 5.010001;
use strict;
use warnings;
use utf8;

use Carp;
use Time::Piece;

use Moo;

around BUILDARGS => sub {

    my ($orig, $class, @args) = @_;

    return {value => $args[0]} if @args == 1;
    return $class->$orig(@args);

};

has value => (is => 'rw', default => sub { Time::Piece->new }, coerce => sub { _parse($_[0]) });

my @PATTERNS = (
    ['%Y-%m-%dT%H:%M:%S', qr/(\d{4}-\d{2}-\d{2}[T]\d{2}:\d{2}:\d{2})\.\d+Z/],
    ['%Y-%m-%dT%H:%M:%S', qr/(\d{4}-\d{2}-\d{2}[T]\d{2}:\d{2}:\d{2})/],
    ['%Y-%m-%d %H:%M:%S', qr/(\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2})/],
    ['%Y-%m-%d',          qr/(\d{4}-\d{2}-\d{2})/],
);

sub _parse {

    my $datetime = shift;

    return $datetime if (ref $datetime eq 'Time::Piece');

    return $datetime->value if ($datetime->isa('SBOM::CycloneDX::Timestamp'));

    return Time::Piece->new unless $datetime;

    return Time::Piece->new($datetime) if ($datetime =~ /^([0-9]+)$/);
    return Time::Piece->new            if ($datetime eq 'now');

    foreach my $pattern (@PATTERNS) {
        my ($format, $regexp) = @{$pattern};
        return Time::Piece->strptime($1, $format) if ($datetime =~ /$regexp/);
    }

    Carp::carp 'Malformed timestamp';

    return Time::Piece->new;

}

sub TO_JSON { shift->value->datetime . '.000Z' }

1;
