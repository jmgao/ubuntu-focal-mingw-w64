#!/bin/bash

set -euxp pipefail

VERSION=$(date +%Y%m%d)

docker build --no-cache -t jmgao/ubuntu-focal-mingw-w64:latest base
docker tag jmgao/ubuntu-focal-mingw-w64:latest jmgao/ubuntu-focal-mingw-w64:$VERSION

docker build --no-cache -t jmgao/ubuntu-focal-mingw-w64-rust:latest rust
docker tag jmgao/ubuntu-focal-mingw-w64-rust:latest jmgao/ubuntu-focal-mingw-w64-rust:$VERSION
