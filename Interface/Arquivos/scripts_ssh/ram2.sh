#!/bin/bash


rm -Rf log_ram.txt

#CONTADOR=0
#while [ $CONTADOR -lt 10 ] ; do
free -h  >> log_ram.txt
#	CONTADOR=$(($CONTADOR+1))
#done
scp log_ram.txt felipe@192.168.1.2:~/Projeto_Shell/Arquivos/log
