#!/bin/bash

sudo docker-compose up -d --build

echo -en "Installing the database"
sudo docker exec mysql /var/lib/install-db.sh
echo -e "[ \e[32mDBs OK\e[0m ]"
