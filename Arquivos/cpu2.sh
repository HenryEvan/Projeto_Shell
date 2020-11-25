#!/bin/bash

CONTADOR=0

while [ $CONTADOR -lt 10 ] ; do
	lscpu -b -e >> cpu_log.txt
	CONTADOR=$(($CONTADOR+1))
done	
       	
