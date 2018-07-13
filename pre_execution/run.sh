#!/bin/bash
sudo rm -rf claat-bin
mkdir claat-bin
cd claat-bin
wget https://github.com/googlecodelabs/tools/releases/download/v1.0.4/claat-linux-amd64
mv claat-linux-amd64 claat
sudo chmod +x claat
dir=$(pwd)
echo "$dir"
cd ..
export PATH="$PATH:$dir"
exec bash
