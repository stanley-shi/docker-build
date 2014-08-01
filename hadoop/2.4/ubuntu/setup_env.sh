# install openssh server
apt-get install which coreutils python openssh-server wget ntp gzip tar openssh-clients

# change root password
echo 'root:changeme' |chpasswd

# install gcc and java
apt-get install gcc gcc-c++ cmake zlib-devel perl java-1.7.0-openjdk java-1.7.0-openjdk-devel

mkdir -p /opt

# install maven
cd /tmp
wget -q http://www.us.apache.org/dist/maven/maven-3/3.2.1/binaries/apache-maven-3.2.1-bin.tar.gz
tar xf apache-maven-3.2.1-bin.tar.gz
mv apache-maven-3.2.1 /opt

# install findbugs
wget -q http://downloads.sourceforge.net/project/findbugs/findbugs/2.0.3/findbugs-2.0.3.tar.gz
tar xf findbugs-2.0.3.tar.gz
mv findbugs-2.0.3 /opt

# install forrest 0.9
wget -q http://www.us.apache.org/dist//forrest/apache-forrest-0.9-dependencies.tar.gz
wget -q http://www.us.apache.org/dist//forrest/apache-forrest-0.9-sources.tar.gz
tar xf apache-forrest-0.9-dependencies.tar.gz
tar xf apache-forrest-0.9-sources.tar.gz
mv apache-forrest-0.9 /opt

# install snappy 1.1.0
wget -q https://snappy.googlecode.com/files/snappy-1.1.1.tar.gz
tar xf snappy-1.1.1.tar.gz
cd snappy-1.1.1 && ./configure && make && make install

cd /tmp
# install protocol buffer 2.5.0
wget -q https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz
tar xf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0 && ./configure && make && make install


# install xerces-c 2.8.0
cd /tmp
wget -q http://www.us.apache.org/dist/xerces/c/2/binaries/xerces-c_2_8_0-x86_64-linux-gcc_3_4.tar.gz
tar xf xerces-c_2_8_0-x86_64-linux-gcc_3_4.tar.gz
mv xerces-c_2_8_0-x86_64-linux-gcc_3_4 /opt

# cleanup downloaded files
rm -rf /tmp/*
