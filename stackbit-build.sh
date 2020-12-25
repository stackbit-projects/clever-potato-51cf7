#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fe51cf7e0e1e96aae6eb1cc

echo "stackbit-build.sh: finished build"
