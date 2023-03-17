#!/bin/bash

url=$(echo $1 | sed 's/\(tree\|blob\)\/\(main\|master\)/trunk/g')
echo "Downloading $url ..."
svn export $url
