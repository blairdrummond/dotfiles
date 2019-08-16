#!/bin/sh

if test -z $1; then
    if ! (ls | grep -q tex); then
        echo "Need a file name!"
        exit 1
    else
        f=$(ls | grep tex | head -n 1 | awk -F '.' '{print $1}')
    fi
else
    f=$(echo $1 | awk -F '.' '{print $1}')
fi

R -e "library(knitr);knit(\"$f.tex\")" || exit 1
pdflatex $f.txt                        && rm $f.txt
