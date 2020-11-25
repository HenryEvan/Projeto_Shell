#/bin/bash

for i in $(cat ipslista.txt) ; do
	for j in $(cat usuarios.txt) ; do
		cat cpu2.sh | ssh $j@$i
	done
done
