#!/bin/bash

if [ "$#" != 2 ]; then
    echo "Usage: ./generate_data.sh #databases size_database"
    exit
fi

for (( i=1; i<=$1; i++ ))
do
    echo "Generate database: " tpcds_db_$i
    ./tpcds-setup.sh $2 /tmp/tpcds-generate/db_$i db_$i &
done
