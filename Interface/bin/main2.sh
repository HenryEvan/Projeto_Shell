#!/bin/bash






echo '1: Gerenciamento de memória: '
echo 'Digite: ' ; read OPCAO

case $OPCAO in
	1)
		echo 'Digite o  ip da máquina' ; read IPHOST
		echo 'Digite o usuário do host: ' ; read $USERHOST	
				cat /bin/script_mem.sh | ssh $USERHOST@$IPHOST
		;;
	*)
		clear;;
esac



