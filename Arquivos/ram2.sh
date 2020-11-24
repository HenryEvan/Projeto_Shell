#!/bin/bash

CONTADOR=0
while [ $CONTADOR -lt 10 ] ; do
	free >> log_ram.txt
	CONTADOR=$(($CONTADOR+1))
done
