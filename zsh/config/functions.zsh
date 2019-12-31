#!/bin/zsh
# File  : functions.zsh
# Author: Matthieu Petiteau <mpetiteau.pro@gmail.com>
# Date  : 30.12.2019

# open current directory or the one specified
function o() {
    if [ $# -eq 0 ]; then
        open .
    else
        open "$@"
    fi
}

# search from current dir
function search() {
    grep -rnIi "$1" . --color
}

# preview csv files. source: http://stackoverflow.com/questions/1875305/command-line-csv-viewer
function csvpreview() {
    sed 's/,,/, ,/g;s/,,/, ,/g' "$@" | column -s, -t | less -#2 -N -S
}
