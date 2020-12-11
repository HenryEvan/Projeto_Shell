#!/bin/bash

number=2
rm -Rf $number.disco_log.txt

df -h >> $number.disco_log.txt

scp $number.disco_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/disco_dir
