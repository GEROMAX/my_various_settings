# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias rb='ruby'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LS_COLORS="di=01;44"
export TZ="Asia/Tokyo"
export LANG="ja_JP.UTF-8"

PATH=$HOME/.rbenv/bin:$PATH
PATH=$HOME/.rbenv/shims:$PATH

cd ~/

