#!/usr/bin/env bash

set -e

if [[ -f "$(go env GOPATH)/bin/gci" ]] || [[ -f "/usr/local/bin/hci" ]]; then
    gogroup -rewrite -order std,other,prefix=github.com/oleg-balunenko/  $(find . -type f -name "*.go" | grep -v "vendor/" |grep -v ".git" )
else
    printf "Cannot check gogroup, please run:
    go get -u -v github.com/Bubblyworld/gogroup/... \n"
    exit 1
fi

echo "Done."