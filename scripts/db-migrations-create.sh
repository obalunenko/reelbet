#!/usr/bin/env bash

set -e

read -p "Enter name of changes (no whitespace): " changes_name

migrate create -ext sql -dir internal/db/migrations -seq ${changes_name}
