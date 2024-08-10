#!/bin/bash

git clone https://github.com/neurobin/shc

cd shc

# install shc
./configure
make
sudo make install

cd ..

mv main.sh shc

cd shc

# compile
shc -f main.sh -o binary

mv binary ..

mv main.sh ..

cd ..

sudo rm -r shc