#!/bin/bash

number=0

rm -Rf latencia_log.txt

ping -c 10 192.168.1.1 | awk 'NR != 1{print $7 , $8}' >> latencia_log.txt

scp $number.latencia_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/latencia_dir
