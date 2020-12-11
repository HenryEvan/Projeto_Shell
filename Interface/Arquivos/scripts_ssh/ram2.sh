#!/bin/bash

number=2
rm -Rf $number.log_ram.txt

free -h  >> $number.log_ram.txt 

scp $number.log_ram.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/ram_dir
