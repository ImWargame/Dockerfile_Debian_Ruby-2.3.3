FROM debian
MAINTAINER Yoann Delattre <yoanndelattre21@gmail.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git apt-utils automake cron curl dpkg make man-db nano tar unzip vim software-properties-common wget zip -y
ENV TZ Europe/Paris
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN git config --global user.email "yoanndelattre21@gmail.com"
RUN git config --global user.name "ImWargame"
RUN apt-get install build-essential libffi-dev libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev -y
RUN apt-get install ruby-full -y
RUN gem install rails
RUN gem install bundler
RUN gem install nokogiri
RUN gem install rack
RUN gem install rspec
VOLUME ["/mnt"]
EXPOSE 80 443
WORKDIR  /mnt
ENTRYPOINT apt-get update && apt-get upgrade -y && /bin/bash
