#!/bin/bash
touch statusy.csv
echo "Nazwa serwera,status" >> statusy.csv
for Serwer1 in $(cat lista.txt)
do
	ping -c 1 $Serwer1
	if (( $? == 0));then
	echo "$Serwer1,odpowiada" >> statusy.csv
else
	echo "$Serwer1,nie odpowiada" >> statusy.csv
fi
done