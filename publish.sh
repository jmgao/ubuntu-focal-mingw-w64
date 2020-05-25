#!/bin/bash

set -euxp pipefail

VERSION=$(date +%Y%m%d)

git tag -a -m "$VERSION" v$VERSION
docker push jmgao/ubuntu-focal-mingw-w64:latest
docker push jmgao/ubuntu-focal-mingw-w64:$VERSION

docker push jmgao/ubuntu-focal-mingw-w64-rust:latest
docker push jmgao/ubuntu-focal-mingw-w64-rust:$VERSION
