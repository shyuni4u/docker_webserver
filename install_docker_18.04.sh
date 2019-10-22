#!/bin/sh
if [ -z "$1" ] || [ -z "$2" ]
then
  echo "Please Insert arguments ( ./install_docker_18.04.sh [APPLICATION_NAME] [USER_GROUP_NAME] )"
  echo "ex:) ./install_docker_18.sh basic_webserver loenzo"
  exit 1
fi

APPLICATION_NAME=$1
GROUP_NAME=$2

#CREATE DIRECTORY
echo "#######################"
echo "## INSTALL IS EXECUTING"

echo "## CREATE DIRECTORY"
echo "# 1. ./000_application/$APPLICATION_NAME"
echo "# 2. ./001_database/data"
echo "# 2. ./001_database/backup"

mkdir -p ./000_application/$APPLICATION_NAME
mkdir -p ./001_database/data
mkdir -p ./001_database/backup

chmod -R 755 ./000_application  # 접근권한
chown -R $GROUP_NAME ./000_application  #사용자설정
chgrp -R $GROUP_NAME ./000_application  #사용자그룹설정
chmod 644 ./001_database/conf.d/my.cnf #CONFIG 권한

#echo "## setting mariadb default time zone (1: delete default_time_zone)"
#sed -i '/default_time_zone/d' ./001_database/conf.d/my.cnf
#
#echo "## setting docker"
#cd ./004_docker
#
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#apt update -y
#apt autoremove -y
#apt update -y
#apt upgrade -y
#
#sudo apt update
#sudo apt install apt-transport-https ca-certificates curl software-properties-common
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
#sudo apt update
#apt-cache policy docker-ce
#
#apt install docker-ce
#
#sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
#./startup.sh
#./stop.sh
#
#echo "## setting mariadb default time zone (2: add default_time_zone)"
#echo 'default_time_zone	= Asia/Seoul' >> ./001_database/conf.d/my.cnf
#./startup.sh
#
#echo "## Connect Mariadb"
#echo '###############################################################################################'
#echo '#STEP 1. mysql -uroot -p < /etc/mysql/backup/[file name].sql'
#echo '#STEP 2. exit'
#echo '###############################################################################################'
#./conn_mariadb.sh
#
#echo "## INSTALL HAS DONE"
#echo "#######################"
