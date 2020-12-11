#!/bin/bash

rm -Rf geral_log.txt

echo -e "RAM: \n\n"
free -h >> geral_log.txt
echo -e "\n\n"
echo -e "Espaço em disco: \n\n"
df -h >> geral_log.txt
echo -e "\n\n"
echo -e "CPU: \n"
echo "Legenda: \n"
echo "r: O número de processos executáveis.\nb: O número de processos em sono.\nus: tempo gasto executando código não kernel.\nsy: tempo gasto executando o código do kernel.\nid: tempo gasto inativo.\nwa: tempo gasto esperando por IO.\nst: tempo gasto roubado de uma máquina virtual." >> geral_log.txt
vmstat 2 10 | awk 'NR != 1{print $1"\t"$2"\t"$13"\t"$14"\t"15"\t"16"\t"17 }' >> geral_log.txt
echo -e "\n\n"
echo -e "Latencia: \n"
ping -c 10 192.168.1.1 | awk 'NR != 1 {print $7 , $8}' >> geral_log.txt
scp geral_log felipe@192.168.1.5:~Projeto_Shell/Interface/Arquivos/log
