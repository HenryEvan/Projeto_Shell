#!/bin/bash

#conf é uma variável que vai confirmar o login correto
conf=0
conf2=0

while [ $conf -lt 1 ] ; do
	./Arquivos/space.sh
	echo -e "Por favor, insira seu nome de usuário abaixo: \n"
	read -p "Usuário: " var_user

	# conf_user confirma o nome do usuario

	cut -d' ' -f2 Arquivos/logins.txt | grep ^"$var_user" &> /dev/null && conf_user=1 || conf_user=0
	if [ $conf_user -eq 1 ] ; then

		# conf_senha confirma a senha do usuário

		while [ $conf2 -lt 1 ] ; do
			./Arquivos/space.sh
			echo -e "Por favor, insira sua senha. \n"
			echo -e "Usuário: $var_user \n"
			read -sp "Senha: " var_senha
			cut -d' ' -f3 Arquivos/logins.txt | grep ^"$var_senha" &> /dev/null && conf_senha=1 || conf_senha=0
			if [ $conf_senha -eq 1 ] ; then
				conf=1
				conf2=1
			else
				./Arquivos/space.sh
				echo 'Senha incorreta'

			fi
		done

	else
		echo 'Nome de usuário incorreto'
	fi

done
./Arquivos/space.sh
echo -e "Login concluído. \n"
sair=0
while [ $sair -lt 1 ] ;  do
	echo -e "Escolha uma das opções:\n"
	echo -e "1 - Exibir RAM.\n2 - Exibir Disco.\n3 - Exibir Latencia.\n4 - Exibir Processamento.\n5 - Adicionar Hosts.\n6 - Visualizar dados de um único host.\n7 - MEMORIA RAM DO PC TESTE.\n10 - Sair.\n"

	read -p "> " opc

	case $opc in
		1)
			./Arquivos/space.sh
			echo -e "Carregando... \n\n"
			./Arquivos/ram.sh
			;;
		2)
			./Arquivos/space.sh
			echo -e "Carregando... \n\n"
			./Arquivos/disco.sh
			;;
		3)
			./Arquivos/space.sh
			echo -e "Carregando... \n\n"
			./Arquivos/latencia.sh
			;;
		4)
			./Arquivos/space.sh
			echo -e "Carregando... \n\n"
			./Arquivos/cpu.sh
			;;
		5)
			./Arquivos/space.sh
			./Arquivos/configuration.sh
			;;

		6)
			./Arquivos/space.sh
			./Arquivos/geral.sh
			;;
		7)
			./Arquivos/space.sh
			echo -e "\nResultados:"
			./Arquivos/graphic.sh
			echo -e "\n"
			;;
		10)
			./Arquivos/space.sh
			echo -e "Programa encerrado.\n"
			sair=1
			;;
		*)
			echo "Opção incorreta."
	esac
done

