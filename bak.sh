#!/bin/bash
files="$@"
for f in $files; do
    if [[ $f != *.bak ]]; then
        cp -r $f.bak
    fi
done
