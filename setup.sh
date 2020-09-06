#!/bin/bash

sudo docker-compose up -d --build

sudo docker exec mysql /var/lib/install-db.sh
