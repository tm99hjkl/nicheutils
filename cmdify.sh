#!/bin/bash
if [[ -f $1 ]] && [[ $1 =~ .sh ]]; then
  if ! [[ -f ~/opt/bin/${1%.sh} ]]; then
    install -m 755 $1 ~/opt/bin/${1%.sh}
  else
    echo "cmdify: command \`${1%.sh}\` already exists."
    read -p "do you want to update? [y/n]: " yn
    case $yn in
      [yY]* ) sudo rm ~/opt/bin/${1%.sh}; install -m 755 $1 ~/opt/bin/${1%.sh};;
      * ) ;;
    esac
    exit 1
  fi
else
  echo "cdmify: \`$1\` is invalid file name."
  exit 1
fi

