FROM ubuntu

MAINTAINER Stanley Shi(deming.shi@gmail.com)

RUN sed -e "s/\/archive.ubuntu.com/\/cn.archive.ubuntu.com/g" --in-place /etc/apt/sources.list

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install wget unzip python

WORKDIR /opt
RUN wget https://github.com/couchbase/couchbase-cli/archive/3.0.zip && unzip 3.0.zip
ENTRYPOINT ["/opt/couchbase-cli-3.0/cbbackup"]
