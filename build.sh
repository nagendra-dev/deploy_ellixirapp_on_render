#!/usr/bin/env bash
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
MIX_ENV=prod mix assets.build

# Digest and deploy assets
MIX_ENV=prod mix assets.deploy

# Build release
MIX_ENV=prod mix release --overwrite
