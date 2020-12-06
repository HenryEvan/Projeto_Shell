#!/bin/bash
	
COUNTER=0

while [ $COUNTER -lt 1 ] ; do
	echo '1: Insirir Host.'
	echo '2: Deletar Host.'
	echo '5: sair.'
	read OPTION
	case $OPTION in
		1)
			echo "Digite o nome do usuario: " ; read USUARIO
			echo "Digite o IP: " ; read IP
			echo "$USUARIO $IP" >> Arquivos/ipslista.txt;;
		2)
			echo "Digite o IP: " ; read IP
			sed -i "/$IP/d" Arquivos/ipslista.txt  ;;
		5)
			COUNTER=1
	esac
done
