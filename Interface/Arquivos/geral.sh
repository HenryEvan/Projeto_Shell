#!/bin/bash

# A função desse script é apresentar todos os dados de um Host.

echo 'IPs cadastrados '

cut -d' ' -f2 ipslista.txt

echo 'Digite o IP do host desejado: ' 
read -p 'IP: ' IP

usuario=$(cat ipslista.txt | grep "IP"$ | cut -d' ' -f1)
ip_host=$(cat ipslista.txt | grep "IP"$ | cut -d' ' -f2)

cat Arquivos/scripts_ssh/geral2.sh | ssh $usuario@$ip_host &> dev/null

echo -e "RAM: \n"
cat Arquivos/log/1.geral_log.txt
echo -e "\nEspaço em Disco: \n"
cat Arquivos/log/2.geral_log.txt
echo -e "\nCPU: \n"
echo -e "Legenda: \n"
echo -e "r: O número de processos executáveis.\nb: O número de processos em sono.\nus: tempo gasto executando código não kernel.\nsy: Tempo gasto executando o código do kernel.\nid: Tempo gasto inativo.\nwa: Tempo gasto esperando por IO.\nst: Tempo gasto roubado de uma máquina virtual.\n"
cat Arquivos/log/3.geral_log.txt
echo -e "\nLatência: \n"
cat Arquivos/log/4.geral_log.txt


