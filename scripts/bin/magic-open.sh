#!/bin/sh

file="$(dbrowse)"
test -z "$file" && exit 0

case $file in
    *.pdf|*.png|*.html)
	rifle "$file"
	;;
    *)
	emacs-gui "$file"
	;;
esac
