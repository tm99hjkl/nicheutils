#!/bin/bash

FILE="/mnt/c/Users/takumi matsuura/Downloads/"$1

if [ -f "$1" ]; then
  echo "cptm: file '$1' already exists."
else
  cp "$FILE" .
fi
