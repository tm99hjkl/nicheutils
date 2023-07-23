#!/bin/bash

FILE="/mnt/c/Users/takumi matsuura/Downloads/"$1
d="/mnt/c/Users/takumi matsuura/Downloads/"

if [[ $1 == *"*"* ]]; then
  prevd=$(pwd)
  cd "$d"
  for file in $1; do
    if [ -f "$prevd/$file" ]; then
      echo "mvtm: file '$file' already exists."
      read -p "do you want to update $file? [y/n]: " yn
      case $yn in
        [yY]* ) rm $1; echo "updated"; mv "$file" $prevd;;
        [nN]* ) echo "don't delete";;
        *) ;;
      esac
    else
      mv "$file" $prevd
    fi
  done
  cd $prevd
elif [ -f "$1" ]; then
  echo "mvtm: file '$1' already exists."
  read -p "do you want to update $1? [y/n]: " yn
  case $yn in
    [yY]* ) rm $1; echo "updated"; mv "$FILE" .;;
    [nN]* ) echo "don't delete";;
    *) ;;
  esac
else
  mv "$FILE" .
fi

