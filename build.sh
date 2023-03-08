#!/bin/sh
DENO_VERSION="v1.27.1"
DENOFLARE_VERSION="v0.5.11"
curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL=./deno-v1.28.2 sh -s v1.28.2
NO_COLOR=1 DENO_VERSION=v1.28.2 DENOFLARE_VERSION=${DENOFLARE_VERSION} \
    ./deno-v1.28.2/bin/deno run --unstable --allow-all \
    https://raw.githubusercontent.com/skymethod/denoflare/v0.5.11/cli/cli.ts \
    site generate . ./output --verbose