#!/bin/bash

git clone https://github.com/ViRb3/wgcf

cd wgcf

go build -o wgcf

chmod +x wgcf

./wgcf register

./wgcf generate

update_license_key() {
  local new_license_key=$1
  sed -i "s/^license_key = '.*'/license_key = '$new_license_key'/" "wgcf-account.toml"
  echo "License key has been updated successfully."
}

read -p "Enter the new license key: " new_license_key

update_license_key "$new_license_key"

./wgcf update

./wgcf generate

./wgcf status

mv wgcf wgcf-copy

mv wgcf-account.toml ..

mv wgcf-profile.conf ..

mv wgcf-copy ..

cd ..

sudo rm -r wgcf

mv wgcf-copy wgcf

clear

echo "Download wgcf-profile.conf and inport into WireGuard"