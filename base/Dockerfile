FROM ubuntu:cosmic
MAINTAINER Josh Gao

RUN echo 'APT::Install-Recommends "false";' >> /etc/apt/apt.conf.d/99recommends
RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf.d/99assumeyes
RUN sed -i "s/# deb-src/deb-src/" /etc/apt/sources.list
RUN dpkg --add-architecture i386 && apt-get update
RUN apt-get install apt-utils
RUN apt-get install ca-certificates curl git ssh && apt-get clean
RUN apt-get install build-essential && apt-get clean
RUN apt-get install wine wine32 wine64 && apt-get clean

RUN apt-get install python3 python3-pip python3-setuptools && apt-get clean
RUN pip3 install meson

RUN apt-get install mingw-w64 && apt-get clean

# Run wine first-run initialization.
RUN wine net.exe /HELP
