rm -Rf latencia_log.txt

ping -c 10 192.168.1.1 | awk 'NR != 1{print $7 , $8}' >> latencia_log.txt

scp latencia_log.txt felipe@192.168.1.5:~/Projeto_Shell/Interface/Arquivos/log
