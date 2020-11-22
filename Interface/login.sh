# !/bin/bash

# Variaveis:

tam_log=$(wc -l ./logins.txt | cut -d ' ' -f1)

# Contadores:

c_login=0
aut_user=0
aut_senha=0

# Login:

while [ $aut_user != 1 ] ; do
	read -p "User: " ent_user

	for ((i=1; i<=$tam_log; i++)) do
		s1=$(cat logins.txt | cut -d ' ' -f2)
		loop_user=$(echo $s1 | cut -d ' ' -f$i)
		if [ "$loop_user" = "$ent_user" ]; then
			aut_user=1
			./space.sh
		fi
	done
	if [ $aut_user != 1 ]; then
		./space.sh
		echo -e "Usuario nao encontrado, tente novamente.\n"
	fi
done

# Senha:

while [ $aut_senha != 1 ] ; do
	echo -e "User: $ent_user\n"
	read -p "Senha: " ent_senha
	for ((i=1; i<=$tam_log; i++)) do
		s2=$(cat logins.txt | cut -d ' ' -f3)
		loop_senha=$(echo $s2 | cut -d ' ' -f$i)
		if [ "$loop_senha" = "$ent_senha" ]; then
			aut_senha=1
			c_login=1
		fi
	done
	if [ $aut_senha != 1 ]; then
		./space.sh
		echo -e "Senha incorreta, tente novamente.\n"
	fi
done

