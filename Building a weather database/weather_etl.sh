#!/bin/bash

cd /home/alfredokinyi68/weather

if [ ! -f weather.csv ]; then
	exit 0
fi

mysql --defaults-file=~/.my.cnf <load_weather.sql> load_weather.log

if [ ! -s load_weather.log ]; then
	mysql --defaults-file=~/.my.cnf <copy_weather.sql> copy_weather.log
fi

mv weather.csv weather.csv.$(date +%Y%m%d%H%M%S)


