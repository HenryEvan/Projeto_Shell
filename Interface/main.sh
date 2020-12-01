# !/bin/bash

# Interface Inicial do Projeto
# Counters:
Contador_Menu=0

# Menu:

./Arquivos/space.sh
echo -e "Interface de Acesso ao Monitoramento - $(date +"%T")"
./Arquivos/login.sh


#while [ $Contador_Menu != 1 ] ; do
#	./Arquivos/space.sh
#	echo -e "Interface de Acesso ao Monitoramento - $(date +"%T")"
#	echo -e "\n1 - Logar no Servidor\n5 - Sair\n"
#	read -p "> " Entrada_Menu
#	case $Entrada_Menu in
#		1)
#	#		./Arquivos/space.sh
#			COUNTER=0
#			while [ $COUNTER -ne 1 ] ; do
#				echo "Escolha uma opção: "
#				echo "1: Verificar RAM."
#				echo "2: Verificar CPU."
#				echo "3: Verificar Latência."
#				echo "10: Apenas sair."
#				read OPTION
#				case $OPTION in
#					1)
#						./Arquivos/ram.sh;;
#					2)
#						./Arquivos/cpu.sh;;
#					3)
#						./Arquivos/latencia;;
#					10)
##						COUNTER=$(($COUNTER+1));;
#				esac
#			done
#		5)
#			Contador_Menu=1
#			clear;;
#	esac
#done


# Etc:
COUNTER=0
while [ $COUNTER -ne 1 ] ; do
	echo "Escolha uma opção: "
	echo "1: Verificar RAM."
	echo "2: Verificar CPU."
	echo "3: Verificar Latência."
	echo "4: Adicionar Host."
	echo "10: Apenas sair."
	read OPTION
	case $OPTION in
		1)
			./Arquivos/ram.sh;;
		2)
			./Arquivos/cpu.sh;;
		3)
			./Arquivos/latencia.sh;;
		4)
			./Arquivos/adicionar.sh;;
		10)
			COUNTER=$((COUNTER+1));;
	esac
done
