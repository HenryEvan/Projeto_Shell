#!/bin/bash
	
COUNTER=0

while [ $COUNTER -lt 1 ] do
	echo '1: Insirir Host.'
	echo '2: Deletar Host.'
	echo '5: sair.'
	read OPTION
	case $OPTION in
		1)
			echo "Digite o nome do usuario: " ; read USUARIO
			echo "Digite o IP: " ; read IP
			echo $USUARIO >> Arquivos/usuarios.txt
			echo $IP >> Arquivos/ipslista.txt;;
# no caso esse script ainda não ta concluido, vou concatenar o arquivo usuarios e ipslista depois
		2)
			echo "Digite o IP: " ; read IP
			sed "/$IP/d";;
		5)
			COUNTER=1
	esac
done
