#!/bin/bash

echo 'Digite o ip da máquina: ' ; read IPHOST

cat ram2.sh | ssh shell@$IPHOST
