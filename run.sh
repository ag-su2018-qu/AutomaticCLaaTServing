#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	if [ ${#CLAAT_AUTH_CODE} = 0 ]
	then
		echo "Using system CLAAT_AUTH_CODE"
		claat export "$line"
	else
		echo "Using user defined CLAAT_AUTH_CODE"
		claat export -auth $CLAAT_AUTH_CODE "$line"
	fi
    echo "Exported: $line"
done < "$1"
rm -rf logs
mkdir logs
claat 
nohup claat serve > logs/claat.log&
echo "Serving on port 9090"
