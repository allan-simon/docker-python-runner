FROM debian:jessie
MAINTAINER allan.simon@supinfo.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 9E3E53F19C7DE460 && \
    echo "deb http://repo.aptly.info/ squeeze main" > /etc/apt/sources.list.d/aptly.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y rsyslog curl && \
    apt-get install -y \
        python \
        python3 \
        python3-pip \
        python-pip && \
    apt-get install -y \
        aptitude \
        git-core \
        libyaml-dev \
        python-dev \
        python3-dev \
        libffi-dev \
        libssl-dev && \
    pip install --upgrade setuptools ansible && \
    pip install tox && \
    apt-get install -y \
        ruby-dev \
        rubygems \
        build-essential && \
    gem install fpm && \
    apt-get install -y aptly
