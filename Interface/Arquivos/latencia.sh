#!/bin/bash


rm -Rf Arquivos/log/latencia_log.txt
for i in $(cat Arquivos/ipslista.txt) ; do 
	for j in $(cat Arquivos/usuarios.txt) ; do
		cat Arquivos/scripts_ssh/latencia2.sh | ssh $j@$i
	done
done
sleep 5
cat Arquivos/log/latencia_log.txt
	
