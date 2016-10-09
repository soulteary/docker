FROM ubuntu:16.04

MAINTAINER soulteary <soulteary@gmail.com>

ENV HHVM_VERSION 3.15.1~xenial

RUN sed -i -e "s/archive\.ubuntu\.com/mirrors\.aliyun\.com/" /etc/apt/sources.list \
    && apt-get update && apt-get upgrade -y \
    && apt-get -y install software-properties-common wget supervisor \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449 \
    && add-apt-repository "deb http://dl.hhvm.com/ubuntu $(grep -oP 'UBUNTU_CODENAME=\K.*' /etc/os-release) main" \
    && apt-get update && apt-get -y install hhvm=${HHVM_VERSION} \
    && apt-get clean && apt-get autoremove -y

EXPOSE 9000