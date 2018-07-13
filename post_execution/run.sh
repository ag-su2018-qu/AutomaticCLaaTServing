#!/bin/bash
dir=$(pwd)
if [ -d "$dir"+"/data"] 
then
	sudo sh "$dir"+"/AutomaticCLaaTServing/run.sh" "$dir"+"/data/test-data.csv"
else
	echo "data directory does not exist"
fi

