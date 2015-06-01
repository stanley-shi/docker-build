FROM ubuntu

MAINTAINER Stanley Shi(deming.shi@gmail.com)

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install mysql-server wget openjdk-7-jdk


WORKDIR /opt
RUN wget http://mirrors.aliyun.com/apache/tomcat/tomcat-6/v6.0.44/bin/apache-tomcat-6.0.44.tar.gz && tar xf apache-tomcat-6.0.44.tar.gz && rm -f apache-tomcat-6.0.44.tar.gz
RUN wget http://mirrors.aliyun.com/apache/hadoop/common/hadoop-2.5.2/hadoop-2.5.2.tar.gz && tar xf hadoop-2.5.2.tar.gz && rm -f hadoop-2.5.2.tar.gz

ADD start.sh /start.sh
ADD setup.sh /tmp/setup.sh
RUN sh /tmp/setup.sh

EXPOSE 3306 8080

WORKDIR /
CMD /bin/bash /start.sh
