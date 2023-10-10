#!/bin/bash

# set folder for docker volume
path_folder="$HOME/.jenkins_home"
mkdir -p $path_folder
chown -R 1000:1000 $path_folder

# install jenkins and expose 8088 port
docker run -p 8088:8088 -p 50000:50000 -v $path_folder:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock:ro -v /usr/bin/docker:/usr/bin/docker -d --name jenkins-node jenkins/jenkins:lts

# show endpoint
echo 'Jenkins installed'
echo "You should now be able to access jenkins at: http://$(curl -s ifconfig.co):8080"

#show initial password
jenkins_pass=$(docker exec -it jenkins-node cat /var/jenkins_home/secrets/initialAdminPassword)
echo "Your Initial Admin Password is: $jenkins_pass"
