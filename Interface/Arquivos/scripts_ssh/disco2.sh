#!/bin/bash

rm -Rf disco_log.txt

df -h >> disco_log.txt

scp disco_log.txt felipe@192.168.1.2:~/Projeto_Shell/Interface/Arquivos/log
