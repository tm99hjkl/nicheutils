#!/bin/bash
if [[ -f $1 ]] && [[ $1 =~ .sh ]]; then
  if ! [[ -f /usr/local/bin/${1%.sh} ]]; then 
    install -m 755 $1 /usr/local/bin/${1%.sh}
  else
    echo "cmdify: command \`${1%.sh}\` already exists."
    exit 1
  fi
else
  echo "cdmify: \`$1\` is invalid file name."
  exit 1
fi

