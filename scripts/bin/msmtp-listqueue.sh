#!/bin/sh

QUEUEDIR=$HOME/mail/msmtpqueue

for i in $QUEUEDIR/*.mail; do
	egrep -s --colour -h '(^To:|^Subject:)' "$i" || echo "No mail in queue";
	echo " "
done
