#! /bin/sh
echo "### start ###"
sudo chmod 644 ../001_database/conf.d/my.cnf

echo "-- #1: create lorenzonet network --"
sudo docker network create lorenzonet


echo "-- #2: docker-compose up -d --"
sudo docker-compose up -d

echo "### end ###"
