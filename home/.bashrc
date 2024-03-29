#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

[[ -z "$STY" ]] && screen -S main -xRR

[[ -f ~/.LS_COLORS ]] && eval $( dircolors -b ~/.LS_COLORS )


PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '
export ALTERNATE_EDITOR=""
export EDITOR="vim"                  # $EDITOR should open in terminal
export VISUAL="vim"         # $VISUAL opens in GUI with non-daemon as alternate
export HISTSIZE=2000
export HISTFILESIZE=2000
[ -f "/home/alex/.ghcup/env" ] && source "/home/alex/.ghcup/env" # ghcup-env
