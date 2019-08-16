#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

autoload -Uz promptinit
promptinit
prompt magicmace

autoload -Uz compinit
compinit

bindkey -e

alias e=client

# ranger() {
#     if [ -z "$RANGER_LEVEL" ]; then
#         /usr/bin/ranger "$@"
#     else
#         exit
#     fi
# }

# alias ranger=lf





## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!
## THIS MUST GO AT THE END!!!!


# only do this if we're in an interactive shell
[[ -o interactive ]] || return

# get $EPOCHSECONDS. builtins are faster than date(1)
zmodload zsh/datetime || return

# make sure we can register hooks
autoload -Uz add-zsh-hook || return

# initialize zbell_duration if not set
(( ${+zbell_duration} )) || zbell_duration=15

# initialize zbell_ignore if not set
(( ${+zbell_ignore} )) || zbell_ignore=($EDITOR $PAGER)

# initialize it because otherwise we compare a date and an empty string
# the first time we see the prompt. it's fine to have lastcmd empty on the
# initial run because it evaluates to an empty string, and splitting an
# empty string just results in an empty array.
zbell_timestamp=$EPOCHSECONDS

# right before we begin to execute something, store the time it started at
zbell_begin() {
	zbell_timestamp=$EPOCHSECONDS
	zbell_lastcmd=$1
}

# when it finishes, if it's been running longer than $zbell_duration,
# and we dont have an ignored command in the line, then print a bell.
zbell_end() {
	ran_long=$(( $EPOCHSECONDS - $zbell_timestamp >= $zbell_duration ))

	has_ignored_cmd=0
	for cmd in ${(s:;:)zbell_lastcmd//|/;}; do
		words=(${(z)cmd})
		util=${words[1]}
		if (( ${zbell_ignore[(i)$util]} <= ${#zbell_ignore} )); then
			has_ignored_cmd=1
			break
		fi
	done

	if (( ! $has_ignored_cmd )) && (( ran_long )); then
		if pgrep herbstluftwm; then
			notify-send "command finished: $words"
		else
			print -n "\a"
		fi
	fi
}

# register the functions as hooks
add-zsh-hook preexec zbell_begin
add-zsh-hook precmd zbell_end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/blair/desk/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/blair/desk/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/blair/desk/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/blair/desk/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

