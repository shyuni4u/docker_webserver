#! /bin/sh
echo "### start ###"
sudo chmod 644 /rtmc/001_database/conf.d/my.cnf

echo "-- #1: create cubic-net network --"
docker network create cubic-net


echo "-- #2: docker-compose up -d --"
docker-compose up -d

echo "### end ###"
