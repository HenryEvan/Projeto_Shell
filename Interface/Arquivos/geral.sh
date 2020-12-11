#!/bin/bash

# A função desse script é apresentar todos os dados de um Host.

echo 'IPs cadastrados '

cut -d' ' -f2 ipslista.txt

echo 'Digite o IP do host desejado: ' 
read -p 'IP: ' IP

usuario=$(cat ipslista.txt | grep "IP"$ | cut -d' ' -f1)
ip_host=$(cat ipslista.txt | grep "IP"$ | cut -d' ' -f2)

cat Arquivos/scripts_ssh/geral2.sh | ssh $usuario@$ip_host &> dev/null
