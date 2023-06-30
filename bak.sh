#!/bin/bash
files="$@"
cp_flag=""
for f in $files; do
    if [[ $f != *.bak ]]; then
        if [[ -f $f ]]; then
            cp_flag=""
        elif [[ -d $f ]]; then
            cp_flag="-r"
        fi
        cp $cp_flag $f $f.bak
    fi
done
