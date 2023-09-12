#!/bin/bash

cd ~
wget -c https://pre-alpha-download.opside.network/testnet-auto-install-v3.tar.gz
tar -C ./ -xzf testnet-auto-install-v3.tar.gz
rm testnet-auto-install-v3.tar.gz
chmod +x -R ./testnet-auto-install-v3
cd ./testnet-auto-install-v3
./install-ubuntu-1.0.sh

FILE=~/config/opside.sh
if [ -f "$FILE" ]; then
    echo "$FILE exists, skipping creation..."
else 
    echo "$FILE does not exist, creating..."
    echo "#!/bin/bash" > $FILE
    echo "id=optional" >> $FILE
    echo "path=/root/testnet-auto-install-v3/opside-chain" >> $FILE
fi
