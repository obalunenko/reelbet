#!/usr/bin/env sh
set -e
echo "Building..."

BIN_OUT=./bin/reelbet

go build -o ${BIN_OUT} ./cmd/reelbet

echo "Binary compiled at ${BIN_OUT}"