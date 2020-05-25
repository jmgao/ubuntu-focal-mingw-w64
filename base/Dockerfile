FROM ubuntu:focal
MAINTAINER Josh Gao

RUN echo 'APT::Install-Recommends "false";' >> /etc/apt/apt.conf.d/99recommends
RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf.d/99assumeyes
RUN sed -i "s/# deb-src/deb-src/" /etc/apt/sources.list
RUN dpkg --add-architecture i386 && apt-get update
RUN apt-get install apt-utils ca-certificates
RUN apt-get upgrade

# Workaround for https://bugs.launchpad.net/ubuntu/+source/ubiquity/+bug/1871268
RUN apt-get install --reinstall libc6-i386

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install curl git ssh \
                    build-essential ninja-build meson \
                    pkg-config libssl-dev \
                    python3-minimal python3-pip python3-setuptools \
                    mingw-w64 wine wine32 wine64 && apt-get clean

# Run wine first-run initialization.
RUN wine net.exe /HELP
