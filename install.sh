#!/bin/bash

cd ~
wget -c https://pre-alpha-download.opside.network/testnet-auto-install-v3.tar.gz
tar -C ./ -xzf testnet-auto-install-v3.tar.gz
rm testnet-auto-install-v3.tar.gz
chmod +x -R ./testnet-auto-install-v3
cd ./testnet-auto-install-v3
./install-ubuntu-1.0.sh

if [ -f ~/scripts/opside/config/env] 
  then
    echo "Config file found."
  else
    echo "Config file not found, creating one."
    cp ~/scripts/opside/config/env.sample ~/scripts/opside/config/env
fi
