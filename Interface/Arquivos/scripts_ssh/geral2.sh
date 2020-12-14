#!/bin/bash

rm -rf 1.geral_log.txt
rm -rf 2.geral_log.txt
rm -rf 3.geal_log.txt
rm -rf 4.geral_log.txt

free -h >> 1.geral_log.txt
df -h >> 2.geral_log.txt
vmstat 2 10 | awk 'NR != 1{print $1"\t"$2"\t"$13"\t"$14"\t"15"\t"16"\t"17 }' >> 3.geral_log.txt
ping -c 10 192.168.1.1 | awk 'NR != 1 {print $7 , $8}' >> 4.geral_log.txt
scp 1.geral_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log
scp 2.geral_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log
scp 3.geral_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log
scp 4.geral_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log

