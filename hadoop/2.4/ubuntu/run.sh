#!/bin/sh
#use this script to start the container from the image;
#expected param: the name of the image that we just created

IMAGE_NAME=$1

#user_name=$(whoami)
user_name=stanley

docker run -it -v /home/$user_name/.m2:/home/$user_name/.m2 -v /home/$user_name:/home/$user_name -u $user_name $IMAGE_NAME

