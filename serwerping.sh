#!/bin/bash
touch status.csv
echo "Nazwa serwera,status" >> status.csv
for Serwer1 in $(cat list.txt)
do
	ping -c 1 $Serwer1
	if (( $? == 0));then
	echo "$Serwer1,works fine" >> statusy.csv
else
	echo "$Serwer1,doesn't work :(" >> statusy.csv
fi
done
