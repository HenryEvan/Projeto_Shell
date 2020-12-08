#!/bin/bash

number=1
rm -Rf disco_log.txt

df -h >> disco_log.txt

scp $number.disco_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log/latencia_dir
