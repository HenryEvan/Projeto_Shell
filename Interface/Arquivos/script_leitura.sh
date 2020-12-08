#!/bin/bash

opc=$1
dir=' '
arq=' '
contador=1


case $opc in
	1)
		dir="Arquivos/log/cpu_dir"
		arq="Arquivos/log/cpu_dir/resultado_cpu.txt"
		;;
	2)
		dir="Arquivos/log/ram_dir"
		arq="Arquivos/log/ram_dir/resultado_ram.txt"
		;;
	3)
		dir="Arquivos/log/disco_dir"
		arq="Arquivos/log/disco_dir/resultado_disco.txt"
		;;
	4)
		dir="Arquivos/log/latencia_dir"
		arq="Arquivos/log/latencia_dir/resultado_latencia.txt"
		;;
esac

echo ' ' > $arq

contagem=$( ls -c $dir | wc -l  )

while [ $contador -lt $contagem ] ; do
	ler=$(ls -c $dir | grep ^"$contador")
	IP=$(head -$contador Arquivos/ipslista.txt | tail -1 | cut -d' ' -f2)
	echo "$IP: " >> $arq
	echo -e "\n" >> $arq
	cat $dir/$ler >> $arq
	echo -e "\n" >> $arq

	contador=$(($contador+1))
done

cat $arq
