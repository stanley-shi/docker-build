FROM ubuntu

MAINTAINER Stanley Shi(deming.shi@gmail.com)

#Remove this line if not in China
RUN sed -e "s/\/archive.ubuntu.com/\/cn.archive.ubuntu.com/g" --in-place /etc/apt/sources.list

RUN apt-get update && apt-get -y upgrade && apt-get -y install wget unzip python python-pip python-dev 

WORKDIR /tmp
RUN wget  http://packages.couchbase.com/ubuntu/couchbase.key && apt-key add couchbase.key

RUN echo "deb http://packages.couchbase.com/ubuntu trusty trusty/main" >/etc/apt/sources.list.d/cb.list

RUN apt-get update && apt-get -y install libcouchbase2-core libcouchbase-dev

RUN pip install objectpath couchbase
