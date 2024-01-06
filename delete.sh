#!/bin/bash

source ~/scripts/opside/config/env

read -p "Sure?" c
 case $c in
 y|Y)
  rm -r /root/testnet-auto-install-v3
  rm -r /root/scripts/opside
  echo "Done."
 ;;
 esac
