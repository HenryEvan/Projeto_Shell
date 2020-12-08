#!/bin/bash

number=0
rm -Rf cpu_log.txt
vmstat 2 20 | awk 'NR != 1{print $1"\t"$2"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17 }'  >> cpu_log.txt
	#vmstat 2 20 | awk 'NR == 1{print $1"\t"$2"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17 }'  >> cpu_log.txt

scp $number.cpu_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/cpu_dir
       	
