#!/bin/bash


rm -Rf log_ram.txt

for i in $(cat ipslista.txt) ; do
	for j in $(cat usuarios.txt) ; do
		cat ram2.sh | ssh $j@$i
	done
done
sleep 10
cat log_ram.txt
