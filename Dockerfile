FROM yoanndelattre/base:base-debian
LABEL MAINTAINER='Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"'
RUN apt-get update && apt-get upgrade -y && \
      apt-get install ruby-full -y && \
      apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*
CMD ruby -v && /bin/bash
