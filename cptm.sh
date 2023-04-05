#!/bin/bash

FILE="/mnt/c/Users/takumi matsuura/Downloads/"$1

if [ -f "$1" ]; then
  echo "cptm: file '$1' already exists."
  read -p "do you want to update $1? [y/n]: " yn
  case $yn in
    [yY]* ) rm $1; echo "updated"; cp "$FILE" .;;
    [nN]* ) echo "don't delete";;
    *) ;;
  esac
else
  cp "$FILE" .
fi
