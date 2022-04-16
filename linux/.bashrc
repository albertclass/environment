# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -la'
alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1=""

if test -f "~/git-prompt.sh"
then
    . "~/git-prompt.sh"
fi

if test -f "~/git-completion.bash"
then
    . "~/git-completion.bash"
fi

GIT_PS1_PREFIX='\n'                       # new line
GIT_PS1_PREFIX="$GIT_PS1_PREFIX"'\[\033[32m\]'       # change to green
GIT_PS1_PREFIX="$GIT_PS1_PREFIX"'\u@\h '             # user@host<space>
GIT_PS1_PREFIX="$GIT_PS1_PREFIX"'\[\033[33m\]'       # change to brownish yellow
GIT_PS1_PREFIX="$GIT_PS1_PREFIX"'\w '                 # current working directory
GIT_PS1_SURFIX="\[\033[0m\]\n\$ "                               # prompt: always $

export PROMPT_COMMAND='__git_ps1 "$GIT_PS1_PREFIX" "$GIT_PS1_SURFIX" "\[\033[36m\](%s)"' 

