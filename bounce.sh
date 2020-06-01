#!/bin/sh
docker-compose down
docker-compose up -d
#docker ps
#echo `docker ps | grep -i confluentinc/cp-enterprise-kafka:5.3.1| cut -b 1-12`
#sleep 60
#docker exec -it `docker ps | grep -i confluentinc/cp-enterprise-kafka:5.3.1| cut -b 1-12` /bin/sh docker-entrypoint-initdb.d/init.sh
#echo `pwd`
#cd ./slave
#echo `pwd`
#docker-compose down
#docker-compose build
#docker-compose up -d
