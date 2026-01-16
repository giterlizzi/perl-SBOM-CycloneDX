#!perl

use strict;
use warnings;
use v5.10;

use FindBin '$RealBin';
use lib "$RealBin/lib";

use Test::More;
use Test::CycloneDX qw(bom_1_2 bom_test_data);

use SBOM::CycloneDX::Component;


my $bom_test_data = bom_test_data(__FILE__);

my $bom = bom_1_2();

$bom->components->add(SBOM::CycloneDX::Component->new(type => 'library', name => 'acme-library', version => '1.0.0'));

diag 'CycloneDX 1.2 - Valid Minimal Viable', "\n", "$bom";

isnt "$bom", '';

is $bom->spec_version, 1.2;

my @errors = $bom->validate;

diag $_ for @errors;

is scalar @errors, 0;

is_deeply $bom->to_hash, $bom_test_data;

done_testing();
