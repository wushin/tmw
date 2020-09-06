#!/bin/bash
maxcounter=60
 
counter=1
while ! mysql --protocol TCP -u root --password=password -e "show databases;" > /dev/null 2>&1; do
    sleep 1
    counter=`expr $counter + 1`
    if [ $counter -gt $maxcounter ]; then
        >&2 echo "We have been waiting for MySQL too long already; failing."
        exit 1
    fi;
done

mysql < /server/game-data/tools/sql-files/init.sql
mysql manaserv < /server/game-data/tools/sql-files/createTables.sql
