#!/bin/bash

if [ ! -f ./server/sqlite3/mana.db ]
then
  cp ./server/sqlite3/mana.db.base server/sqlite3/mana.db
fi

sudo docker-compose up -d --build --remove-orphans

echo "" > hosts
echo -e "Finding hosts"
network_name=`sudo docker network ls --format "{{.Name}}" | grep web-network`

for x in `sudo docker ps --format "{{.Names}}" | grep -v client`
do
  service_ip=`sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $x`
  echo -en "waiting for $x to have an IP"
  while [ -z "$service_ip" ]
  do
    echo -en "."
    sleep 3
    service_ip=`sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $x`
  done
  echo "$service_ip $x" >> hosts
  echo -e "[ \e[32m$x IP Found $service_ip\e[0m ]"
done
echo ""
echo -e "\e[31m You will need to add these to your hosts file\e[0m "
cat ./hosts
