#!/bin/bash
source ~/.profile
dir=$(pwd)
if [ -d "${dir}/data" ] 
then
	echo "Running bash ${dir}/AutomaticCLaaTServing/run.sh ${dir}/data/test-data.csv"
	sudo bash ${dir}/AutomaticCLaaTServing/run.sh ${dir}/data/test-data.csv
else
	echo "data directory does not exist"
fi
