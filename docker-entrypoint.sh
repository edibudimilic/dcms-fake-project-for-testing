#!/bin/sh
set -e
echo "entrypoint: starting with args: $*"
exec "$@"
