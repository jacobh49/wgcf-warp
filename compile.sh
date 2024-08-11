#!/bin/bash

# clone shc and cd
git clone https://github.com/neurobin/shc

cd shc

# install shc
./configure
make
sudo make install

sudo add-apt-repository ppa:neurobin/ppa
sudo apt-get update
sudo apt-get install shc

#  move shell scripts into shc to compile

cd ..

mv main.sh shc
mv main_generate.sh shc
mv selection.sh shc

cd shc

# compile main
shc -f main.sh -o binary

mv binary main

mv main ..

# compile main_generate

shc -f main_generate.sh -o binary

mv binary main_generate

mv main_generate ..

#compile selection

shc -f selection.sh -o binary

mv binary selection

mv selection ..

# move shell scripts back

mv selection.sh ..
mv main.sh ..
mv main_generate.sh ..

cd ..

# delete shc and move binaries into binaries folder

sudo rm -r shc

mkdir binaries

mv main binaries

mv main_generate binaries

mv selection binaries