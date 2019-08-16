#!/bin/sh

if [ "$1" = show ]; then

    for dir in */; do
        xstow $dir -t "$HOME";
    done

elif [ "$1" = hide ]; then

    for dir in */; do
        xstow -D $dir -t "$HOME";
    done

else
    echo "deploy.sh (show|hide)"
fi
