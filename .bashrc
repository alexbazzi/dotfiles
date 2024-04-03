# .bashrc

# If session is interactive
[[ $- == *i* ]] || return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Load aliases
. ~/.aliases

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Initialize ssh-agent in the background and add ssh key for github
eval $(ssh-agent -s)
ssh-add ~/.ssh/gh_id_rsa

# Git prompt
source ~/.git-prompt
PS1='\[\033[01;32m\]\t\[\033[00m\]\[\033[00;34m\]\$\[\033[00m\]\[\033[1;32m\]\w\[\033[00m\]\[\033[1;36m\]$(__git_ps1 " (%s)")\[\033[00m\]\n> '