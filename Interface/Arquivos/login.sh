# !/bin/bash

# Variaveis:

tam_log=$(wc -l ./Arquivos/logins.txt | cut -d ' ' -f1)

# Contadores:

c_login=0
aut_user=0
aut_senha=0

# Login:

while [ $aut_user != 1 ] ; do
	echo -e "Por favor, insira seu login abaixo: \n"
	read -p "Usuário: " ent_user

	for ((i=1; i<=$tam_log; i++)) do
		s1=$(cat ./Arquivos/logins.txt | cut -d ' ' -f2)
		loop_user=$(echo $s1 | cut -d ' ' -f$i)
		if [ "$loop_user" = "$ent_user" ]; then
			aut_user=1
			./Arquivos/space.sh
		fi
	done
	if [ $aut_user != 1 ]; then
		./Arquivos/space.sh
		echo -e "Usuário não encontrado, tente novamente ou use CTRL+C pra sair.\n"
	fi
done

# Senha:

while [ $aut_senha != 1 ] ; do
	echo -e "Por favor, insira sua senha abaixo: \n"
	echo -e "Usuário: $ent_user"
	read -p "Senha: " ent_senha
	for ((i=1; i<=$tam_log; i++)) do
		s2=$(cat ./Arquivos/logins.txt | cut -d ' ' -f3)
		loop_senha=$(echo $s2 | cut -d ' ' -f$i)
		if [ "$loop_senha" = "$ent_senha" ]; then
			aut_senha=1
			c_login=1
			./Arquivos/space.sh
		fi
	done
	if [ $aut_senha != 1 ]; then
		./Arquivos/space.sh
		echo -e "Senha incorreta, tente novamente ou use CTRL+C pra sair.\n"
	fi
done

# Opcoes:

while [ $c_login = 1 ]; do

	echo -e "Logado no Servidor de Monitoramento - $(date +"%T")\n"
	echo -e "Usuário: $ent_user - IP Servidor: 0.0.0.0\n"
	echo -e "Opções:\n\n1 - Verificar RAM. \n2 - Verificar CPU. \n3 - Verificar Latência. \n4 - Verificar uso de disco. \n5 - Exibir Gráficos. \n6 - Sair\n"
	read -p "> " choice

	case $choice in

		1)
			./Arquivos/space.sh
			echo -e "\n\nCarregando...\n"
			./Arquivos/ram.sh;;
		2)
			./Arquivos/space.sh
			echo -e "\n\nCarregando...\n"
			./Arquivos/cpu.sh;;
		3)
			./Arquivos/space.sh
			echo -e "\n\nCarregando...\n"
			./Arquivos/latencia.sh;;
		4)
			./Arquivos/space.sh
			echo -e "\n\nCarregando...\n"
			./Arquivos/disco.sh;;
		5)
			./Arquivos/space.sh
			echo -e "\n\nNão tenho gráficos para mostrar agora.. :( \n";;
		6)
			./Arquivos/space.sh
			echo -e "\n\nDeslogando do sistema...\n"
			c_login=0;;
		*)
			./Arquivos/space.sh
			echo -e "\n\nEntrada incorreta, tente novamente.\n";;

	esac
done

