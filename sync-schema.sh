#!/bin/bash

cd $(dirname $0) ; CWD=$(pwd)

SPDX_LICENSES_SCHEMA_URL=https://raw.githubusercontent.com/CycloneDX/specification/refs/heads/master/schema/spdx.schema.json

curl -o $CWD/lib/SBOM/CycloneDX/schema/spdx.schema.json $SPDX_LICENSES_SCHEMA_URL
