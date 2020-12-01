# !/bin/bash

# Variaveis:

tam_log=$(wc -l ./Arquivos/logins.txt | cut -d ' ' -f1)

# Contadores:

c_login=0
aut_user=0
aut_senha=0

# Login:

while [ $aut_user != 1 ] ; do
	read -p "User: " ent_user

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
		echo -e "Usuario nao encontrado, tente novamente ou use CTRL+C pra sair.\n"
	fi
done

# Senha:

while [ $aut_senha != 1 ] ; do
	echo -e "User: $ent_user"
	read -p "Senha: " ent_senha
	for ((i=1; i<=$tam_log; i++)) do
		s2=$(cat ./Arquivos/logins.txt | cut -d ' ' -f3)
		loop_senha=$(echo $s2 | cut -d ' ' -f$i)
		if [ "$loop_senha" = "$ent_senha" ]; then
			aut_senha=1
			c_login=1
			echo oi
		fi
	done
	if [ $aut_senha != 1 ]; then
		./Arquivos/space.sh
		echo -e "Senha incorreta, tente novamente ou use CTRL+C pra sair.\n"
	fi
done

while [ $c_login = 1 ]; do

	./Arquivos/space.sh
	echo -e "Logado no Servidor de Monitoramento - $(date +"%T")\n"
	echo -e "Usuario: $ent_user - IP Servidor: ?\n"
#	echo -e "Opcoes:\n\n1 - Monitorar um Servidor \n2 - Configurar um novo Servidor\n3 - Alterar Configuracoes\n4 - Exibir Graficos\n5 - Sair\n"
	echo -e "Opções:\n\n1 - Verificar RAM. \n - Verificar CPU. \n3 - Verificar Latência. \n4 - Exibir Gráficos. \n5 - Sair\n"
	read -p "> " choice

	case $choice in

		1)
			./Arquivos/ram.sh;;
		2)
			./Arquivos/cpu.sh;;
		3)
			./Arquivos/latencia.sh;;
		4)
			echo "Falta Implementar"
		5)
			c_login=0
	esac
done
