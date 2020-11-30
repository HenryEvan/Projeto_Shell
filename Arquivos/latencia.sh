#!/bin/bash

for i in $(cat ipslista.txt) ; do 
	for j in $(cat usuarios.txt) ; do
		cat latencia2.sh | ssh $j@$i
	done
done
sleep 5
cat latencia_log.txt
	
