#!/bin/bash

### setup mysql root remote access
sed -i  's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
service mysql start
mysqladmin password 'dangerous'
mysql -u root --password=dangerous -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'dangerous' WITH GRANT OPTION;"


### setup tomcat gui password
cat > /opt/apache-tomcat-6.0.44/conf/tomcat-users.xml <<EOF

<tomcat-users>
  <role rolename="tomcat"/>
  <role rolename="admin-gui"/>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="tomcat" roles="tomcat,admin-gui,manager-gui"/>
</tomcat-users>


EOF

cat > /opt/apache-tomcat-6.0.44/bin/setenv.sh <<EOF

CLASSPATH=`/opt/hadoop-2.5.2/bin/hadoop classpath`

EOF
