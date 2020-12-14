# !/bin/bash
# Interface Inicial do Projeto

# Counters:
Contador_Menu=0

# Menu:

./Arquivos/space.sh

while [ $Contador_Menu != 1 ] ; do
	echo -e "Interface de Acesso ao Monitoramento - $(date +"%T")"
	echo -e "\n1 - Logar no Servidor\n5 - Sair\n"
	read -p "> " Entrada_Menu
	case $Entrada_Menu in
		1)
			./Arquivos/space.sh
			./Arquivos/login.sh;;
		5)
			./Arquivos/space.sh
			echo -e "\n\nFinalizando Programa...\n"
			Contador_Menu=1;;
		*)
			./Arquivos/space.sh
			echo -e "\n\nOpção não identificada, tente novamente.\n"
	esac
done

