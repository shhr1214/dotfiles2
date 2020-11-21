FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y gcc gdb make git binutils libc6-dev

# man available
RUN sed -i 's@path-exclude=/usr/share/man/*@#path-exclude=/usr/share/man/*@' /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get install -y vim man manpages-dev manpages-posix
RUN apt-get install -y apt-utils strace sysstat
RUN sed -i -e "9s/false/true/g" /etc/default/sysstat
RUN sed -i -e "6s/5-55\/10/*/g" /etc/cron.d/sysstat

RUN apt-get install -y python3

WORKDIR /mnt
