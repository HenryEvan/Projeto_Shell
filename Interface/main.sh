# !/bin/bash
# Interface Inicial do Projeto
# Counters:

Contador_Menu=0

# Menu:

./bin/space.sh
echo -e "Interface de Acesso ao Monitoramento - $(date +"%T")"
./bin/login.sh

# Desativado:

#while [ $Contador_Menu != 1 ] ; do
#	./bin/space.sh
#	echo -e "Interface de Acesso ao Monitoramento - $(date +"%T")"
#	echo -e "\n1 - Logar no Servidor\n5 - Sair\n"
#	read -p "> " Entrada_Menu
#	case $Entrada_Menu in
#		1)
#			./bin/space.sh
#			./bin/login.sh;;
#		5)
#			Contador_Menu=1
#			clear;;
#	esac
#done
