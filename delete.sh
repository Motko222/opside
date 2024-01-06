#!/bin/bash

source ~/scripts/opside/config/env

echo "Please shutdown nodes using Opside's control panel..."

read -p "Continue? " c
 case $c in
 y|Y)
  rm -r /root/testnet-auto-install-v3
  rm -r /root/scripts/opside
  echo "Done."
 ;;
 esac
