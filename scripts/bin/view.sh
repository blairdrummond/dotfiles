#!/bin/sh

from=$1 to=$2
if test "${#from}" -gt "${#to}"; then
    format="%0${#from}X"
else
    format="%0${#to}X"
fi
from=$(printf '%d' "0x$from") to=$(printf '%d' "0x$to")
while test "$from" -le "$to"; do
    CODE=$(printf "$format" "$from")
    /usr/bin/printf "%s - \u$CODE\n" $CODE
    from=$((from+1))
done

exit $?
