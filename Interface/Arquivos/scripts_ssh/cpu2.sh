#!/bin/bash

number=2
rm -Rf $number.cpu_log.txt
vmstat 2 10 | awk 'NR != 1{print $1"\t"$2"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17 }'  >> $number.cpu_log.txt

scp $number.cpu_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/cpu_dir
       	
