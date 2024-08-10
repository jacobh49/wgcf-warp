#!/bin/bash

git clone https://github.com/neurobin/shc

cd shc

# install shc
./configure
make
sudo make install

cd ..

mv main.sh shc
mv main_generate.sh shc

cd shc

# compile
shc -f main.sh -o binary

mv binary main

mv main ..

shc -f main_generate.sh -o binary

mv binary main_generate

mv main_generate ..

mv main.sh ..

mv main_generate.sh ..

cd ..

sudo rm -r shc

mkdir binaries

mv main binaries

mv main_generate binaries