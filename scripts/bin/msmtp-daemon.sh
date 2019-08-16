#!/bin/sh

exit 1

script=$HOME/.mutt/scripts/msmtpqueue/msmtp-runqueue.sh

while sleep 30; do
	$script &> /dev/null
done &
