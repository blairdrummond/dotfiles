#!/bin/bash

# a system info script written by yours truly
# it's hardcoded stuff, lulz

tput civis

c0=$(tput setaf 0)
c1=$(tput setaf 1)
c2=$(tput setaf 2)
c3=$(tput setaf 3)
c4=$(tput setaf 4)
c5=$(tput setaf 5)
c6=$(tput setaf 6)
c7=$(tput setaf 7)
c8=$(tput setaf 8)
c9=$(tput setaf 9)
c10=$(tput setaf 10)


red="\e[31m"
grn="\e[32m"
ylw="\e[33m"
cyn="\e[36m"
blu="\e[34m"
prp="\e[35m"
bprp="\e[35;1m"
rst="\e[0m"

month=$(date +'%m')

while sleep 1; do

    if [ $month -ge 11 ] || [ $month -le 3 ]; then

        echo
        echo -e "          ${blu}*${rst}           ${blu}*${rst}  "
        echo -e "                  ${blu}*${rst}       ${blu}*${rst}        "
        echo -e "    ${blu}*${rst}         ${blu}*${rst}     "
        echo -e "      ${blu}*${rst}               ${blu}*${rst}    "
        echo -e "  ${blu}*${rst}     ${blu} ${rst}    ${red}\     ${blu}*${rst} "
        echo -e "           ${red}|,/  |/${rst} ${blu} ${rst}   "
        echo -e "         ${blu}*${rst}  ${red}/   /  /_.   -${rst}  ${blu}*${rst}   "
        echo -e "   ${blu}*${rst}   ${blu} ${rst}    ${red}\  {  |_____/_${rst}  "
        echo -e "            ${red}{  / /  ${blu}*${rst}       ${rst}    "
        echo -e "     ${blu}*${rst}      ${red}| \ {___________/_${rst} ${blu}*${rst}"
        echo -e "        ${blu} ${rst}    ${red}} }{     ${blu}*${red} \ ${rst} "
        echo -e "             ${red}}{{ ${blu} ${rst}       ${red}\____${rst}  "
        echo -e "         ${blu}*${rst}  ${red}{}{       ${blu} ${rst}  ${rst}   ${red}\ ${rst}"
        echo -e "    ${blu}*${rst}       ${red}{{}      ${blu}*${rst}         "
        echo -e "      ${red}, -=-~{ \^- _ ${rst}"
        echo -e "  ${red}, .= ~ ${blu}%%#%${red} \` , ${blu}%%%%%%%%%%${rst}"
        echo -e " ${blu} %##%%%## ${red}\`${blu}  ##%%#%# #%%% ${rst}"
        echo -e " ${blu}%  %  ##%## # %%%% %${rst} "
        echo
        echo

    else
        echo
        echo
        echo
        echo
        echo -e "             ${grn}&&${rst} "
        echo -e "            ${grn}&&&&&${rst} "
        echo -e "         ${grn}&&${rst}${red}|,/  |/${rst}${grn}&${rst} ${grn}&&${rst} "
        echo -e "          ${grn}&&${rst}${red}/   /  /_${rst}${grn}&${rst}  ${grn}&&${rst}"
        echo -e "            ${red}\  {  |_____/_${rst}${grn}&${rst} "
        echo -e "            ${red}{  / /          ${rst}${grn}&&&${rst} "
        echo -e "            ${red}| \ {___________/_${rst}${grn}&&${rst}"
        echo -e "             ${red}} }{       \ ${rst} "
        echo -e "             ${red}}{{         \____${rst}${grn}&${rst} "
        echo -e "            ${red}{}{          ${rst}${grn}&&&${rst}${red}\ ${rst}${grn}&&${rst}"
        echo -e "            ${red}{{}             ${rst}${grn}&&${rst} "
        echo -e "      ${red}, -=-~{ \^- _ ${rst}"
        echo -e "  ${red}, .= ~      \` ,   ,  .${rst}"
        echo -e "  ${red}         \`              ${rst}"
        echo
        echo

    fi

    COUNT=$(ls ~/mail/msmtpqueue/ | grep mail | wc -l)
    if [ $COUNT -gt 0 ]; then

        if [ $COUNT -eq 1 ]; then
            echo -e "        ${red}[ $COUNT message enqueued ]${rst}"
        else
            echo -e "        ${red}[ $COUNT messages enqueued ]${rst}"
        fi
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

        # mu view "$i" | egrep -s --color=AUTO -h '(^To:|^Cc:|^Bcc:|^Subject:)' || echo "No mail in queue";
        ls ~/mail/msmtpqueue/*.mail | while read file; do
            mu view "$file" | grep "^\(To:\|Cc:\|Subject:\)" | sed "s/\(^From:\|^To:\|^Cc:\|^Bcc:\|^Subject:\|^Date:\|^Attachments:\)\(.*\)$/$c4\1$c5\2$c7/1" | sed 's/ <[^<>]*@[^<>]*>//g' | cut -c -50
        done


        echo 
        echo -e "${blu}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${rst}"

    fi


    if [ -d ~/mail/gmail/ ]; then

        GREP_COLORS='mt=1;41;37' 
        on="${c3}"
        off="${c2}"

        echo

        true || notmuch show --format=json tag:flagged and     tag:urgent 2> /dev/null \
                | jq '.[][0][0].headers | [.Date,.From,.To,.Subject] | @json' \
                | sed 's/\\"/"/g' \
                | sed 's/^.\(.*\).$/\1/' \
                | python3 -c "
import sys
import json
import re

email = re.compile(' <.*@.*\..*>')

acc = []
s = ''
for line in sys.stdin:
    if line.startswith('}'):
        s += line
        acc.append(s)
        s = ''
    else:
        s += line


for line in acc:
    jline = json.loads(line)
    if jline['From'].startswith('Blair Drummond'):
        print(' $c1{}\n $c3{}\n $c7{}\n\n'.format(re.sub(string=jline['To'], repl='', pattern=email), jline['Date'][:17], jline['Subject']))
    else:
        print(' $c1{}\n $c3{}\n $c7{}\n\n'.format(re.sub(string=jline['From'], repl='', pattern=email), jline['Date'][:17], jline['Subject']))
" | cut -c -40

        notmuch show --format=json tag:flagged and not tag:urgent 2> /dev/null \
            | jq '.[][0][0].headers' \
            | python3 -c "
import sys
import json
import re

email = re.compile(' <.*@.*\..*>')

acc = []
s = ''
for line in sys.stdin:
    if line.startswith('}'):
        s += line
        acc.append(s)
        s = ''
    else:
        s += line


for line in acc:
    jline = json.loads(line)
    if jline['From'].startswith('Blair Drummond'):
        print(' $c6{}\n $c2{}\n $c7{}\n\n'.format(re.sub(string=jline['To'], repl='', pattern=email), jline['Date'][:17], jline['Subject']))
    else:
        print(' $c6{}\n $c2{}\n $c7{}\n\n'.format(re.sub(string=jline['From'], repl='', pattern=email), jline['Date'][:17], jline['Subject']))
" | cut -c -40



        # {
        #     echo 
        #     printf "\t${c6}  inbox:${c7} $(notmuch count +inbox date:"1M.." -spam +unread)\n"
        #     printf "\t${c6} urgent:${c7} $(notmuch count tag:urgent)\n"
        #     printf "\t${c6}flagged:${c7} $(notmuch count tag:flagged)\n"
        #     printf "\t${c6}reading:${c7} $(notmuch count tag:reading_group)\n"
        #     echo
        # }
    fi

    sleep 60 && clear
done
