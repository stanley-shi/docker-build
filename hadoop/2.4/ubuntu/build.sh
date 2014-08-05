#!/bin/sh
# use this script to build the docker image
if [ $# -ne 1 ]; then
	echo "This script requires exact 1 param"
	exit 1
fi


ROOTDIR=$(dirname $0)
#myname=$(whoami)
myname=stanley
#myid=$(id -u $myname)
myid=1000
echo "useradd -u $myid $myname" >adduser.sh
echo "echo '$myname:changeme' |chpasswd" >>adduser.sh

docker build --rm -t $1 --force-rm --no-cache $ROOTDIR

