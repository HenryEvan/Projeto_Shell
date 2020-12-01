#!/bin/bash


rm -Rf Arquivos/log/log_ram.txt

for i in $(cat Arquivos/ipslista.txt) ; do
	for j in $(cat Arquivos/usuarios.txt) ; do
		cat Arquivos/scripts_ssh/ram2.sh | ssh $j@$i
	done
done
sleep 10
cat Arquivos/log/log_ram.txt
