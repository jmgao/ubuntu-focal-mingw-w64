#!/bin/bash

set -euxp pipefail

VERSION=$(date +%Y%m%d)

docker build -t jmgao/ubuntu-cosmic-mingw-w64:latest base
docker tag jmgao/ubuntu-cosmic-mingw-w64:latest jmgao/ubuntu-cosmic-mingw-w64:$VERSION

docker build -t jmgao/ubuntu-cosmic-mingw-w64-rust:latest rust
docker tag jmgao/ubuntu-cosmic-mingw-w64-rust:latest jmgao/ubuntu-cosmic-mingw-w64-rust:$VERSION
