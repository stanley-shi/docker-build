#!/bin/bash

### setup mysql root remote access
sed -i  's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
service mysql start
mysqladmin password 'dangerous'
mysql -u root --password=dangerous -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;"
