FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y gcc gdb make git binutils libc6-dev

# man available
RUN sed -i 's@path-exclude=/usr/share/man/*@#path-exclude=/usr/share/man/*@' /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get install -y vim man manpages-dev manpages-posix

RUN apt-get install -y apt-utils strace

WORKDIR /mnt
