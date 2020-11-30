#/bin/bash

rm -Rf cpu_log.txt
for i in $(cat ipslista.txt) ; do
	for j in $(cat usuarios.txt) ; do
		cat cpu2.sh | ssh $j@$i
	done
done
sleep 20
cat cpu_log.txt
