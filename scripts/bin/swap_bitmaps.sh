#!/bin/sh

filename="${1%.*}"

mv $filename.xbm tmp.$filename.xbm
mv i_$filename.xbm $filename.xbm 
mv tmp.$filename.xbm i_$filename.xbm

sed -i "s/i_$filename/$filename/" $filename.xbm
sed -i "s/$filename/i_$filename/" i_$filename.xbm
