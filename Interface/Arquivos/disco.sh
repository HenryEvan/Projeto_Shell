#!/bin/bash


rm -Rf Arquivos/log/disco_log.txt

for i in $(cat ipslista.txt) ; do
	for j in $(cat usuarios.txt) ; do
		cat scripts_ssh/disco2.sh | ssh $j@$i
	done
done
sleep 10
cat log/disco_log.txt
