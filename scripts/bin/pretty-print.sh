#!/bin/sh

# Turn a source-code file into a nice pdf.

# I can't autodetect what kind of code the file is
# I need a correct file extention (like .R) to highlight.

for f in "$@"
do
    base=$(basename "${f}").ps
    vim -c "hardcopy > $base" -c quit "$f" \
	&& ps2pdf "$base" \
	&& rm "$base"
done
