#!/bin/bash

git clone https://github.com/ViRb3/wgcf

cd wgcf

go build -o wgcf

chmod +x wgcf

wget -nv https://gist.githubusercontent.com/jacobhoang565/5fbba0eab6dfd967088b064e96341a65/raw/e3be5456368f4212c0a83707874335182b221e42/CIm9fYZ4Pfv8s8V3g5z6.txt

file_path="CIm9fYZ4Pfv8s8V3g5z6.txt"

selected_line=$(shuf -n 1 "$file_path")

new_license_key="$selected_line"

echo "License key: $new_license_key"

rm -r CIm9fYZ4Pfv8s8V3g5z6.txt

./wgcf register

./wgcf generate

update_license_key() {
  local new_license_key=$1
  sed -i "s/^license_key = '.*'/license_key = '$new_license_key'/" "wgcf-account.toml"
  echo "License key has been updated successfully."
}

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