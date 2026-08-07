#!/bin/sh
mkdir -p dist
sed 's/SOURCE/BUILT OK/' src/index.html > dist/index.html
