package SBOM::CycloneDX::Enum;

use 5.010001;
use strict;
use warnings;
use utf8;

use constant COMPONENT_TYPES => (qw[
    application
    framework
    library
    container
    platform
    operating-system
    device
    device-driver
    firmware
    file
    machine-learning-model
    data
    cryptographic-asset
]);

use constant EXTERNAL_REFERENCE_TYPES => (qw[
    vcs
    issue-tracker
    website
    advisories
    bom
    mailing-list
    social
    chat
    documentation
    support
    source-distribution
    distribution
    distribution-intake
    license
    build-meta
    build-system
    release-notes
    security-contact
    model-card
    log
    configuration
    evidence
    formulation
    attestation
    threat-model
    adversary-model
    risk-assessment
    vulnerability-assertion
    exploitability-statement
    pentest-report
    static-analysis-report
    dynamic-analysis-report
    runtime-analysis-report
    component-analysis-report
    maturity-report
    certification-report
    codified-infrastructure
    quality-metrics
    poam
    electronic-signature
    digital-signature
    rfc-9116
    other
]);

use constant HASH_ALGORITHMS => (qw[
    MD5
    SHA-1
    SHA-256
    SHA-384
    SHA-512
    SHA3-256
    SHA3-384
    SHA3-512
    BLAKE2b-256
    BLAKE2b-384
    BLAKE2b-512
    BLAKE3
]);

use constant LIFECYCLE_PHASE => (qw[
    design
    pre-build
    build
    post-build
    operations
    discovery
    decommission
]);

use constant LICENSE_TYPES => (qw[
    academic
    appliance
    client-access
    concurrent-user
    core-points
    custom-metric
    device
    evaluation
    named-user
    node-locked
    oem
    perpetual
    processor-points
    subscription
    user
    other
]);

use constant CRYPTO_PRIMITIVES => (qw[
    drbg
    mac
    block-cipher
    stream-cipher
    signature
    hash
    pke
    xof
    kdf
    key-agree
    kem
    ae
    combiner
    other
    unknown
]);

use constant CRYPTO_IMPLEMENTATION_PLATFORMS => (qw[
    generic
    x86_32
    x86_64
    armv7-a
    armv7-m
    armv8-a
    armv8-m
    armv9-a
    armv9-m
    s390x
    ppc64
    ppc64le
    other
    unknown
]);

use constant CRYPTO_CERTIFICATION_LEVELS => (qw[
    none
    fips140-1-l1
    fips140-1-l2
    fips140-1-l3
    fips140-1-l4
    fips140-2-l1
    fips140-2-l2
    fips140-2-l3
    fips140-2-l4
    fips140-3-l1
    fips140-3-l2
    fips140-3-l3
    fips140-3-l4
    cc-eal1 cc-eal1+
    cc-eal2 cc-eal2+
    cc-eal3 cc-eal3+
    cc-eal4 cc-eal4+
    cc-eal5 cc-eal5+
    cc-eal6 cc-eal6+
    cc-eal7 cc-eal7+
    other
    unknown
]);

use constant CRYPTO_MODES => (qw[
    cbc
    ecb
    ccm
    gcm
    cfb
    ofb
    ctr
    other
    unknown
]);

use constant CRYPTO_PADDINGS => (qw[
    pkcs5
    pkcs7
    pkcs1v15
    oaep
    raw
    other
    unknown
]);

use constant CRYPTO_FUNCTIONS => (qw[
    generate
    keygen
    encrypt
    decrypt
    digest
    tag
    keyderive
    sign
    verify
    encapsulate
    decapsulate
    other
    unknown
]);

use constant RELATED_CRYPTO_MATERIAL_TYPES => (qw[
    private-key
    public-key
    secret-key
    key
    ciphertext
    signature
    digest
    initialization-vector
    nonce
    seed
    salt
    shared-secret
    tag
    additional-data
    password
    credential
    token
    other
    unknown
]);

use constant RELATED_CRYPTO_MATERIAL_STATES => (qw[
    pre-activation
    active
    suspended
    deactivated
    compromised
    destroyed
]);

use constant PROTOCOL_PROPERTIES_TYPES => (qw[
    tls
    ssh
    ipsec
    ike
    sstp
    wpa
    other
    unknown
]);


# Taken from spdx.schema.json
# TODO load from JSON at runtime
use constant SPDX_LICENSES => (
    '0BSD',                              '3D-Slicer-1.0',
    'AAL',                               'Abstyles',
    'AdaCore-doc',                       'Adobe-2006',
    'Adobe-Display-PostScript',          'Adobe-Glyph',
    'Adobe-Utopia',                      'ADSL',
    'AFL-1.1',                           'AFL-1.2',
    'AFL-2.0',                           'AFL-2.1',
    'AFL-3.0',                           'Afmparse',
    'AGPL-1.0',                          'AGPL-1.0-only',
    'AGPL-1.0-or-later',                 'AGPL-3.0',
    'AGPL-3.0-only',                     'AGPL-3.0-or-later',
    'Aladdin',                           'AMD-newlib',
    'AMDPLPA',                           'AML',
    'AML-glslang',                       'AMPAS',
    'ANTLR-PD',                          'ANTLR-PD-fallback',
    'any-OSI',                           'Apache-1.0',
    'Apache-1.1',                        'Apache-2.0',
    'APAFML',                            'APL-1.0',
    'App-s2p',                           'APSL-1.0',
    'APSL-1.1',                          'APSL-1.2',
    'APSL-2.0',                          'Arphic-1999',
    'Artistic-1.0',                      'Artistic-1.0-cl8',
    'Artistic-1.0-Perl',                 'Artistic-2.0',
    'ASWF-Digital-Assets-1.0',           'ASWF-Digital-Assets-1.1',
    'Baekmuk',                           'Bahyph',
    'Barr',                              'bcrypt-Solar-Designer',
    'Beerware',                          'Bitstream-Charter',
    'Bitstream-Vera',                    'BitTorrent-1.0',
    'BitTorrent-1.1',                    'blessing',
    'BlueOak-1.0.0',                     'Boehm-GC',
    'Borceux',                           'Brian-Gladman-2-Clause',
    'Brian-Gladman-3-Clause',            'BSD-1-Clause',
    'BSD-2-Clause',                      'BSD-2-Clause-Darwin',
    'BSD-2-Clause-first-lines',          'BSD-2-Clause-FreeBSD',
    'BSD-2-Clause-NetBSD',               'BSD-2-Clause-Patent',
    'BSD-2-Clause-Views',                'BSD-3-Clause',
    'BSD-3-Clause-acpica',               'BSD-3-Clause-Attribution',
    'BSD-3-Clause-Clear',                'BSD-3-Clause-flex',
    'BSD-3-Clause-HP',                   'BSD-3-Clause-LBNL',
    'BSD-3-Clause-Modification',         'BSD-3-Clause-No-Military-License',
    'BSD-3-Clause-No-Nuclear-License',   'BSD-3-Clause-No-Nuclear-License-2014',
    'BSD-3-Clause-No-Nuclear-Warranty',  'BSD-3-Clause-Open-MPI',
    'BSD-3-Clause-Sun',                  'BSD-4-Clause',
    'BSD-4-Clause-Shortened',            'BSD-4-Clause-UC',
    'BSD-4.3RENO',                       'BSD-4.3TAHOE',
    'BSD-Advertising-Acknowledgement',   'BSD-Attribution-HPND-disclaimer',
    'BSD-Inferno-Nettverk',              'BSD-Protection',
    'BSD-Source-beginning-file',         'BSD-Source-Code',
    'BSD-Systemics',                     'BSD-Systemics-W3Works',
    'BSL-1.0',                           'BUSL-1.1',
    'bzip2-1.0.5',                       'bzip2-1.0.6',
    'C-UDA-1.0',                         'CAL-1.0',
    'CAL-1.0-Combined-Work-Exception',   'Caldera',
    'Caldera-no-preamble',               'Catharon',
    'CATOSL-1.1',                        'CC-BY-1.0',
    'CC-BY-2.0',                         'CC-BY-2.5',
    'CC-BY-2.5-AU',                      'CC-BY-3.0',
    'CC-BY-3.0-AT',                      'CC-BY-3.0-AU',
    'CC-BY-3.0-DE',                      'CC-BY-3.0-IGO',
    'CC-BY-3.0-NL',                      'CC-BY-3.0-US',
    'CC-BY-4.0',                         'CC-BY-NC-1.0',
    'CC-BY-NC-2.0',                      'CC-BY-NC-2.5',
    'CC-BY-NC-3.0',                      'CC-BY-NC-3.0-DE',
    'CC-BY-NC-4.0',                      'CC-BY-NC-ND-1.0',
    'CC-BY-NC-ND-2.0',                   'CC-BY-NC-ND-2.5',
    'CC-BY-NC-ND-3.0',                   'CC-BY-NC-ND-3.0-DE',
    'CC-BY-NC-ND-3.0-IGO',               'CC-BY-NC-ND-4.0',
    'CC-BY-NC-SA-1.0',                   'CC-BY-NC-SA-2.0',
    'CC-BY-NC-SA-2.0-DE',                'CC-BY-NC-SA-2.0-FR',
    'CC-BY-NC-SA-2.0-UK',                'CC-BY-NC-SA-2.5',
    'CC-BY-NC-SA-3.0',                   'CC-BY-NC-SA-3.0-DE',
    'CC-BY-NC-SA-3.0-IGO',               'CC-BY-NC-SA-4.0',
    'CC-BY-ND-1.0',                      'CC-BY-ND-2.0',
    'CC-BY-ND-2.5',                      'CC-BY-ND-3.0',
    'CC-BY-ND-3.0-DE',                   'CC-BY-ND-4.0',
    'CC-BY-SA-1.0',                      'CC-BY-SA-2.0',
    'CC-BY-SA-2.0-UK',                   'CC-BY-SA-2.1-JP',
    'CC-BY-SA-2.5',                      'CC-BY-SA-3.0',
    'CC-BY-SA-3.0-AT',                   'CC-BY-SA-3.0-DE',
    'CC-BY-SA-3.0-IGO',                  'CC-BY-SA-4.0',
    'CC-PDDC',                           'CC0-1.0',
    'CDDL-1.0',                          'CDDL-1.1',
    'CDL-1.0',                           'CDLA-Permissive-1.0',
    'CDLA-Permissive-2.0',               'CDLA-Sharing-1.0',
    'CECILL-1.0',                        'CECILL-1.1',
    'CECILL-2.0',                        'CECILL-2.1',
    'CECILL-B',                          'CECILL-C',
    'CERN-OHL-1.1',                      'CERN-OHL-1.2',
    'CERN-OHL-P-2.0',                    'CERN-OHL-S-2.0',
    'CERN-OHL-W-2.0',                    'CFITSIO',
    'check-cvs',                         'checkmk',
    'ClArtistic',                        'Clips',
    'CMU-Mach',                          'CMU-Mach-nodoc',
    'CNRI-Jython',                       'CNRI-Python',
    'CNRI-Python-GPL-Compatible',        'COIL-1.0',
    'Community-Spec-1.0',                'Condor-1.1',
    'copyleft-next-0.3.0',               'copyleft-next-0.3.1',
    'Cornell-Lossless-JPEG',             'CPAL-1.0',
    'CPL-1.0',                           'CPOL-1.02',
    'Cronyx',                            'Crossword',
    'CrystalStacker',                    'CUA-OPL-1.0',
    'Cube',                              'curl',
    'cve-tou',                           'D-FSL-1.0',
    'DEC-3-Clause',                      'diffmark',
    'DL-DE-BY-2.0',                      'DL-DE-ZERO-2.0',
    'DOC',                               'Dotseqn',
    'DRL-1.0',                           'DRL-1.1',
    'DSDP',                              'dtoa',
    'dvipdfm',                           'ECL-1.0',
    'ECL-2.0',                           'eCos-2.0',
    'EFL-1.0',                           'EFL-2.0',
    'eGenix',                            'Elastic-2.0',
    'Entessa',                           'EPICS',
    'EPL-1.0',                           'EPL-2.0',
    'ErlPL-1.1',                         'etalab-2.0',
    'EUDatagrid',                        'EUPL-1.0',
    'EUPL-1.1',                          'EUPL-1.2',
    'Eurosym',                           'Fair',
    'FBM',                               'FDK-AAC',
    'Ferguson-Twofish',                  'Frameworx-1.0',
    'FreeBSD-DOC',                       'FreeImage',
    'FSFAP',                             'FSFAP-no-warranty-disclaimer',
    'FSFUL',                             'FSFULLR',
    'FSFULLRWD',                         'FTL',
    'Furuseth',                          'fwlw',
    'GCR-docs',                          'GD',
    'GFDL-1.1',                          'GFDL-1.1-invariants-only',
    'GFDL-1.1-invariants-or-later',      'GFDL-1.1-no-invariants-only',
    'GFDL-1.1-no-invariants-or-later',   'GFDL-1.1-only',
    'GFDL-1.1-or-later',                 'GFDL-1.2',
    'GFDL-1.2-invariants-only',          'GFDL-1.2-invariants-or-later',
    'GFDL-1.2-no-invariants-only',       'GFDL-1.2-no-invariants-or-later',
    'GFDL-1.2-only',                     'GFDL-1.2-or-later',
    'GFDL-1.3',                          'GFDL-1.3-invariants-only',
    'GFDL-1.3-invariants-or-later',      'GFDL-1.3-no-invariants-only',
    'GFDL-1.3-no-invariants-or-later',   'GFDL-1.3-only',
    'GFDL-1.3-or-later',                 'Giftware',
    'GL2PS',                             'Glide',
    'Glulxe',                            'GLWTPL',
    'gnuplot',                           'GPL-1.0',
    'GPL-1.0+',                          'GPL-1.0-only',
    'GPL-1.0-or-later',                  'GPL-2.0',
    'GPL-2.0+',                          'GPL-2.0-only',
    'GPL-2.0-or-later',                  'GPL-2.0-with-autoconf-exception',
    'GPL-2.0-with-bison-exception',      'GPL-2.0-with-classpath-exception',
    'GPL-2.0-with-font-exception',       'GPL-2.0-with-GCC-exception',
    'GPL-3.0',                           'GPL-3.0+',
    'GPL-3.0-only',                      'GPL-3.0-or-later',
    'GPL-3.0-with-autoconf-exception',   'GPL-3.0-with-GCC-exception',
    'Graphics-Gems',                     'gSOAP-1.3b',
    'gtkbook',                           'Gutmann',
    'HaskellReport',                     'hdparm',
    'Hippocratic-2.1',                   'HP-1986',
    'HP-1989',                           'HPND',
    'HPND-DEC',                          'HPND-doc',
    'HPND-doc-sell',                     'HPND-export-US',
    'HPND-export-US-acknowledgement',    'HPND-export-US-modify',
    'HPND-export2-US',                   'HPND-Fenneberg-Livingston',
    'HPND-INRIA-IMAG',                   'HPND-Intel',
    'HPND-Kevlin-Henney',                'HPND-Markus-Kuhn',
    'HPND-merchantability-variant',      'HPND-MIT-disclaimer',
    'HPND-Pbmplus',                      'HPND-sell-MIT-disclaimer-xserver',
    'HPND-sell-regexpr',                 'HPND-sell-variant',
    'HPND-sell-variant-MIT-disclaimer',  'HPND-sell-variant-MIT-disclaimer-rev',
    'HPND-UC',                           'HPND-UC-export-US',
    'HTMLTIDY',                          'IBM-pibs',
    'ICU',                               'IEC-Code-Components-EULA',
    'IJG',                               'IJG-short',
    'ImageMagick',                       'iMatix',
    'Imlib2',                            'Info-ZIP',
    'Inner-Net-2.0',                     'Intel',
    'Intel-ACPI',                        'Interbase-1.0',
    'IPA',                               'IPL-1.0',
    'ISC',                               'ISC-Veillard',
    'Jam',                               'JasPer-2.0',
    'JPL-image',                         'JPNIC',
    'JSON',                              'Kastrup',
    'Kazlib',                            'Knuth-CTAN',
    'LAL-1.2',                           'LAL-1.3',
    'Latex2e',                           'Latex2e-translated-notice',
    'Leptonica',                         'LGPL-2.0',
    'LGPL-2.0+',                         'LGPL-2.0-only',
    'LGPL-2.0-or-later',                 'LGPL-2.1',
    'LGPL-2.1+',                         'LGPL-2.1-only',
    'LGPL-2.1-or-later',                 'LGPL-3.0',
    'LGPL-3.0+',                         'LGPL-3.0-only',
    'LGPL-3.0-or-later',                 'LGPLLR',
    'Libpng',                            'libpng-2.0',
    'libselinux-1.0',                    'libtiff',
    'libutil-David-Nugent',              'LiLiQ-P-1.1',
    'LiLiQ-R-1.1',                       'LiLiQ-Rplus-1.1',
    'Linux-man-pages-1-para',            'Linux-man-pages-copyleft',
    'Linux-man-pages-copyleft-2-para',   'Linux-man-pages-copyleft-var',
    'Linux-OpenIB',                      'LOOP',
    'LPD-document',                      'LPL-1.0',
    'LPL-1.02',                          'LPPL-1.0',
    'LPPL-1.1',                          'LPPL-1.2',
    'LPPL-1.3a',                         'LPPL-1.3c',
    'lsof',                              'Lucida-Bitmap-Fonts',
    'LZMA-SDK-9.11-to-9.20',             'LZMA-SDK-9.22',
    'Mackerras-3-Clause',                'Mackerras-3-Clause-acknowledgment',
    'magaz',                             'mailprio',
    'MakeIndex',                         'Martin-Birgmeier',
    'McPhee-slideshow',                  'metamail',
    'Minpack',                           'MirOS',
    'MIT',                               'MIT-0',
    'MIT-advertising',                   'MIT-CMU',
    'MIT-enna',                          'MIT-feh',
    'MIT-Festival',                      'MIT-Khronos-old',
    'MIT-Modern-Variant',                'MIT-open-group',
    'MIT-testregex',                     'MIT-Wu',
    'MITNFA',                            'MMIXware',
    'Motosoto',                          'MPEG-SSG',
    'mpi-permissive',                    'mpich2',
    'MPL-1.0',                           'MPL-1.1',
    'MPL-2.0',                           'MPL-2.0-no-copyleft-exception',
    'mplus',                             'MS-LPL',
    'MS-PL',                             'MS-RL',
    'MTLL',                              'MulanPSL-1.0',
    'MulanPSL-2.0',                      'Multics',
    'Mup',                               'NAIST-2003',
    'NASA-1.3',                          'Naumen',
    'NBPL-1.0',                          'NCBI-PD',
    'NCGL-UK-2.0',                       'NCL',
    'NCSA',                              'Net-SNMP',
    'NetCDF',                            'Newsletr',
    'NGPL',                              'NICTA-1.0',
    'NIST-PD',                           'NIST-PD-fallback',
    'NIST-Software',                     'NLOD-1.0',
    'NLOD-2.0',                          'NLPL',
    'Nokia',                             'NOSL',
    'Noweb',                             'NPL-1.0',
    'NPL-1.1',                           'NPOSL-3.0',
    'NRL',                               'NTP',
    'NTP-0',                             'Nunit',
    'O-UDA-1.0',                         'OAR',
    'OCCT-PL',                           'OCLC-2.0',
    'ODbL-1.0',                          'ODC-By-1.0',
    'OFFIS',                             'OFL-1.0',
    'OFL-1.0-no-RFN',                    'OFL-1.0-RFN',
    'OFL-1.1',                           'OFL-1.1-no-RFN',
    'OFL-1.1-RFN',                       'OGC-1.0',
    'OGDL-Taiwan-1.0',                   'OGL-Canada-2.0',
    'OGL-UK-1.0',                        'OGL-UK-2.0',
    'OGL-UK-3.0',                        'OGTSL',
    'OLDAP-1.1',                         'OLDAP-1.2',
    'OLDAP-1.3',                         'OLDAP-1.4',
    'OLDAP-2.0',                         'OLDAP-2.0.1',
    'OLDAP-2.1',                         'OLDAP-2.2',
    'OLDAP-2.2.1',                       'OLDAP-2.2.2',
    'OLDAP-2.3',                         'OLDAP-2.4',
    'OLDAP-2.5',                         'OLDAP-2.6',
    'OLDAP-2.7',                         'OLDAP-2.8',
    'OLFL-1.3',                          'OML',
    'OpenPBS-2.3',                       'OpenSSL',
    'OpenSSL-standalone',                'OpenVision',
    'OPL-1.0',                           'OPL-UK-3.0',
    'OPUBL-1.0',                         'OSET-PL-2.1',
    'OSL-1.0',                           'OSL-1.1',
    'OSL-2.0',                           'OSL-2.1',
    'OSL-3.0',                           'PADL',
    'Parity-6.0.0',                      'Parity-7.0.0',
    'PDDL-1.0',                          'PHP-3.0',
    'PHP-3.01',                          'Pixar',
    'pkgconf',                           'Plexus',
    'pnmstitch',                         'PolyForm-Noncommercial-1.0.0',
    'PolyForm-Small-Business-1.0.0',     'PostgreSQL',
    'PPL',                               'PSF-2.0',
    'psfrag',                            'psutils',
    'Python-2.0',                        'Python-2.0.1',
    'python-ldap',                       'Qhull',
    'QPL-1.0',                           'QPL-1.0-INRIA-2004',
    'radvd',                             'Rdisc',
    'RHeCos-1.1',                        'RPL-1.1',
    'RPL-1.5',                           'RPSL-1.0',
    'RSA-MD',                            'RSCPL',
    'Ruby',                              'SAX-PD',
    'SAX-PD-2.0',                        'Saxpath',
    'SCEA',                              'SchemeReport',
    'Sendmail',                          'Sendmail-8.23',
    'SGI-B-1.0',                         'SGI-B-1.1',
    'SGI-B-2.0',                         'SGI-OpenGL',
    'SGP4',                              'SHL-0.5',
    'SHL-0.51',                          'SimPL-2.0',
    'SISSL',                             'SISSL-1.2',
    'SL',                                'Sleepycat',
    'SMLNJ',                             'SMPPL',
    'SNIA',                              'snprintf',
    'softSurfer',                        'Soundex',
    'Spencer-86',                        'Spencer-94',
    'Spencer-99',                        'SPL-1.0',
    'ssh-keyscan',                       'SSH-OpenSSH',
    'SSH-short',                         'SSLeay-standalone',
    'SSPL-1.0',                          'StandardML-NJ',
    'SugarCRM-1.1.3',                    'Sun-PPP',
    'Sun-PPP-2000',                      'SunPro',
    'SWL',                               'swrule',
    'Symlinks',                          'TAPR-OHL-1.0',
    'TCL',                               'TCP-wrappers',
    'TermReadKey',                       'TGPPL-1.0',
    'threeparttable',                    'TMate',
    'TORQUE-1.1',                        'TOSL',
    'TPDL',                              'TPL-1.0',
    'TTWL',                              'TTYP0',
    'TU-Berlin-1.0',                     'TU-Berlin-2.0',
    'UCAR',                              'UCL-1.0',
    'ulem',                              'UMich-Merit',
    'Unicode-3.0',                       'Unicode-DFS-2015',
    'Unicode-DFS-2016',                  'Unicode-TOU',
    'UnixCrypt',                         'Unlicense',
    'UPL-1.0',                           'URT-RLE',
    'Vim',                               'VOSTROM',
    'VSL-1.0',                           'W3C',
    'W3C-19980720',                      'W3C-20150513',
    'w3m',                               'Watcom-1.0',
    'Widget-Workshop',                   'Wsuipa',
    'WTFPL',                             'wxWindows',
    'X11',                               'X11-distribute-modifications-variant',
    'Xdebug-1.03',                       'Xerox',
    'Xfig',                              'XFree86-1.1',
    'xinetd',                            'xkeyboard-config-Zinoviev',
    'xlock',                             'Xnet',
    'xpp',                               'XSkat',
    'xzoom',                             'YPL-1.0',
    'YPL-1.1',                           'Zed',
    'Zeeff',                             'Zend-2.0',
    'Zimbra-1.3',                        'Zimbra-1.4',
    'Zlib',                              'zlib-acknowledgement',
    'ZPL-1.1',                           'ZPL-2.0',
    'ZPL-2.1',                           '389-exception',
    'Asterisk-exception',                'Asterisk-linking-protocols-exception',
    'Autoconf-exception-2.0',            'Autoconf-exception-3.0',
    'Autoconf-exception-generic',        'Autoconf-exception-generic-3.0',
    'Autoconf-exception-macro',          'Bison-exception-1.24',
    'Bison-exception-2.2',               'Bootloader-exception',
    'Classpath-exception-2.0',           'CLISP-exception-2.0',
    'cryptsetup-OpenSSL-exception',      'DigiRule-FOSS-exception',
    'eCos-exception-2.0',                'Fawkes-Runtime-exception',
    'FLTK-exception',                    'fmt-exception',
    'Font-exception-2.0',                'freertos-exception-2.0',
    'GCC-exception-2.0',                 'GCC-exception-2.0-note',
    'GCC-exception-3.1',                 'Gmsh-exception',
    'GNAT-exception',                    'GNOME-examples-exception',
    'GNU-compiler-exception',            'gnu-javamail-exception',
    'GPL-3.0-interface-exception',       'GPL-3.0-linking-exception',
    'GPL-3.0-linking-source-exception',  'GPL-CC-1.0',
    'GStreamer-exception-2005',          'GStreamer-exception-2008',
    'i2p-gpl-java-exception',            'KiCad-libraries-exception',
    'LGPL-3.0-linking-exception',        'libpri-OpenH323-exception',
    'Libtool-exception',                 'Linux-syscall-note',
    'LLGPL',                             'LLVM-exception',
    'LZMA-exception',                    'mif-exception',
    'Nokia-Qt-exception-1.1',            'OCaml-LGPL-linking-exception',
    'OCCT-exception-1.0',                'OpenJDK-assembly-exception-1.0',
    'openvpn-openssl-exception',         'PCRE2-exception',
    'PS-or-PDF-font-exception-20170817', 'QPL-1.0-INRIA-2004-exception',
    'Qt-GPL-exception-1.0',              'Qt-LGPL-exception-1.1',
    'Qwt-exception-1.0',                 'RRDtool-FLOSS-exception-2.0',
    'SANE-exception',                    'SHL-2.0',
    'SHL-2.1',                           'stunnel-exception',
    'SWI-exception',                     'Swift-exception',
    'Texinfo-exception',                 'u-boot-exception-2.0',
    'UBDL-exception',                    'Universal-FOSS-exception-1.0',
    'vsftpd-openssl-exception',          'WxWindows-exception-3.1',
    'x11vnc-openssl-exception'
);

1;


__END__

=encoding utf-8

=head1 NAME

SBOM::CycloneDX::Enum - Enumeration

=head1 SYNOPSIS

    foreach (@{SBOM::CycloneDX::ENUM->LICENSES}) {
        say $_;
    }


=head1 DESCRIPTION

L<SBOM::CycloneDX::Enum> is internal class used by L<SBOM::CycloneDX>.


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
