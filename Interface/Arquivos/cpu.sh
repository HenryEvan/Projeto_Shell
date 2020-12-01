#/bin/bash

rm -Rf Arquivos/log/cpu_log.txt
for i in $(cat Arquivos/ipslista.txt) ; do
	for j in $(cat Arquivos/usuarios.txt) ; do
		cat Arquivos/scripts_ssh/cpu2.sh | ssh $j@$i
	done
done
sleep 20
cat Arquivos/log/cpu_log.txt
