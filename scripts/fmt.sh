#!/usr/bin/env bash
set -e

gofumpt -s -l $(find . -type f -name '*.go' | grep -v 'vendor' |grep -v '.git' )

echo "Done."
