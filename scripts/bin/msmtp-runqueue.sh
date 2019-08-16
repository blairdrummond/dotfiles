#!/bin/sh

clear


QUEUEDIR="$HOME/mail/msmtpqueue"
LOCKFILE="$QUEUEDIR/.lock"
MAXWAIT=120

trap 'rm $QUEUEDIR/.tmp.* 2> /dev/null' 0

COUNT=0
TOTAL=$(ls $QUEUEDIR | grep mail | wc -l)

case $1 in

    i|-i|interactive)
	INTERACTIVE=1
	;;

    *)
	INTERACTIVE=1
	# INTERACTIVE=0
	;;

esac


# wait for a lock that another instance has set
SECONDS=0
while [ -e "$LOCKFILE" -a "$SECONDS" -lt "$MAXWAIT" ]; do
	sleep 1
	SECONDS="`expr "$SECONDS" + 1`"
done
if [ -e "$LOCKFILE" ]; then
	echo "Cannot use $QUEUEDIR: waited $MAXWAIT seconds for"
	echo "lockfile $LOCKFILE to vanish, giving up."
	echo "If you are sure that no other instance of this script is"
	echo "running, then delete the lock file."
	exit 1
fi

# change into $QUEUEDIR 
cd "$QUEUEDIR" || exit 1

# check for empty queuedir
if [ "`echo *.mail`" = '*.mail' ]; then
	echo "No mail in queue ($QUEUEDIR)"
	exit 0
fi

# lock the $QUEUEDIR
touch "$LOCKFILE" || exit 1


send_mail () {

    cd "$QUEUEDIR" || exit 1
    MAILFILE=$1

    echo "*** Sending $MAILFILE..."
    MSMTPFILE="`echo $MAILFILE | sed -e 's/mail/msmtp/'`"
    if [ ! -f "$MSMTPFILE" ]; then
        clear
	echo "No corresponding file $MSMTPFILE found"
	echo "FAILURE"
	continue
    fi
    msmtp -d `cat "$MSMTPFILE"` < "$MAILFILE" > /dev/null
    if [ $? -eq 0 ]; then
        clear
	rm "$MAILFILE" "$MSMTPFILE"
	echo "$MAILFILE sent successfully"
    else
	echo "FAILURE"
    fi
    
}


prompt_send () {

    COUNT=$((COUNT+1))

    cd "$QUEUEDIR" || exit 1
    i=$1
    while true; do

	clear

	echo "msmtp : runqueue (msg $COUNT of $TOTAL)"
	echo
	


	c0=$(tput setaf 0)
	c1=$(tput setaf 1)
	c2=$(tput setaf 2)
	c3=$(tput setaf 3)
	c4=$(tput setaf 4)
	c5=$(tput setaf 5)
	c6=$(tput setaf 6)
	c7=$(tput setaf 7)

	f0=$(tput setaf 7)
	f1=$(tput setaf 7)
	f2=$(tput setaf 7)

	tput setaf 1
	echo
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo
	tput sgr0

	# | sed "s/\(^From:\|^To:\|^Cc:\|^Bcc:\|^Subject:\|^Date:\|^Attachments:\)\(.*\)$/$c4\1$c5\2$c7/1"
	tput setaf 2

	if grep -q "^On .*wrote:$" "$i"; then
		header=$(cat "$i" | grep -n "^On .*wrote:$" | sed '1q' | awk -F ':' '{print $1}')
		head --lines=$((header-1)) "$i" | sed '100q' > ".tmp.$i"
	else
		sed '100q' "$i" > ".tmp.$i"
	fi

	mu view ".tmp.$i"
	rm ".tmp.$i"

	tput setaf 1
	echo
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo
	tput sgr0

	password=$(python3 -c "[ print(chr(i)) for i in range(ord('a'),ord('z')+1) ]" | shuf -n 6 | paste -sd "")

	read -p "Send this message? [y/n]: " REPLY
	case $REPLY in
	    [yY])

		while true; do
		    read -p "Are you sure? 

    If yes,     enter '${password}'
    otherwise   enter 'n' or 'N'

    	[response]: " REPLY
		    echo

		    case $REPLY in
			$password)
			    send_mail "$i"
			    return 0
			    ;;
			
			[nN])
			    echo "Mail not sent."
			    return 1
			    ;;
			
			*)
			    printf " \033[31m %s \n\033[0m" "invalid input"
			    ;;
		    esac 
		done  
		;;

	    [nN])
		echo "Mail not sent."
		return 1
		;;

	    *)
		printf " \033[31m %s \n\033[0m" "invalid input"
		;;
	esac 
    done  
    
}


# process all mails
for MAILFILE in *.mail; do

    if [ $INTERACTIVE -eq 1 ]; then
	prompt_send "$MAILFILE"
    else
	send_mail "$MAILFILE"
    fi
    
done

# remove the lock
rm -f "$LOCKFILE"

exit 0
