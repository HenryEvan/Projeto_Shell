#!/bin/bash


rm -Rf Arquivos/log/ram_dir/*.txt
counter=0
var1=" "
var2=" "

while IFS= read -r linha || [[ -n "$linha" ]]; do
	counter=$(($counter+1))
	var1="$(head -$counter Arquivos/ipslista.txt | tail -1 | cut -d' ' -f1)"
	var2="$(head -$counter Arquivos/ipslista.txt | tail -1 | cut -d' ' -f2)"
	sed -i "3s/[[:digit:]]/$counter/" Arquivos/scripts_ssh/ram2.sh 
	cat Arquivos/scripts_ssh/ram2.sh | ssh $var1@$var2 &> /dev/null
done < Arquivos/ipslista.txt
sleep 10
./Arquivos/script_leitura.sh 2
