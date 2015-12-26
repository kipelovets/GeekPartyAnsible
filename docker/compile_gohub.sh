#!/usr/bin/env bash

set -e

git clone https://github.com/kipelovets/gohub.git gohub_src
docker run --rm -v "$PWD/gohub_src":/usr/src/gohub -w /usr/src/gohub golang go build -v
cp gohub_src/gohub gohub/gohub
rm -rf gohub_src