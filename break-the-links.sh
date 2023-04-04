#!/bin/sh

set -e

# Go to the script's location.
cd "$(dirname -- "$0")"

mkdir -p tmp/book/
mdbook build -d tmp/book/

python -m http.server -d tmp 3000
