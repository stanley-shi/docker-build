#!/bin/sh
service mysql start

export CATALINA_HOME=/opt/apache-tomcat-6.0.44
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
export HADOOP_PREFIX=/opt/hadoop-2.5.2

$CATALINA_HOME/bin/catalina.sh run


