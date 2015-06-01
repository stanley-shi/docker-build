#!/bin/sh
service mysql start

export CATALINA_HOME=/opt/apache-tomcat-6.0.44

$CATALINA_HOME/bin/catalina.sh run


