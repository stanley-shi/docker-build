FROM     centos:latest
MAINTAINER Stanley Shi(deming.shi@gmail.com)

# make sure the package repository is up to date

VOLUME /src
VOLUME /root/.m2

ADD setup_env.sh /tmp/setup_env.sh
RUN sh /tmp/setup_env.sh

ENV ENV_FORREST_HOME /opt/apache-forrest-0.9
ENV MAVEN_HOME /opt/apache-maven-3.2.1
ENV XERCESC_HOME /opt/xerces-c_2_8_0-x86_64-linux-gcc_3_4
ENV FINDBUGS_HOME /opt/findbugs-2.0.3 
ENV JAVA_HOME /etc/alternatives/java_sdk_openjdk 
ENV PATH \$MAVEN_HOME/bin/:\$FINDBUGS_HOME/bin/:\$PATH 

WORKDIR /src
EXPOSE 22
CMD service sshd start  && /bin/bash
