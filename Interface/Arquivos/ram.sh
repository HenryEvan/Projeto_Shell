#!/bin/bash


rm -Rf Arquivos/log/log_ram.txt
counter=0
var1=" "
var2=" "

while IFS= read -r linha || [[ -n "$linha" ]]; do
	counter=$(($counter+1))
	var1="$(head -$counter Arquivos/ipslista.txt | tail -1 | cut -d' ' -f1)"
	var2="$(head -$counter Arquivos/ipslista.txt | tail -1 | cut -d' ' -f2)"
	cat Arquivos/scripts_ssh/ram2.sh | ssh $var1@$var2
done < Arquivos/ipslista.txt
sleep 10
cat Arquivos/log/log_ram.txt
