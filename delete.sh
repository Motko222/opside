#!/bin/bash

source ~/scripts/opside/config/env

read -p "Sure?" c
 case $c in
 y|Y)
  rm /root/testnet-auto-install-v3
  rm /root/scripts/opside
  echo "Done."
 ;;
 esac
