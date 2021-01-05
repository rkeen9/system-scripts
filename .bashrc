#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nvim;
export EDITOR=nvim;

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source ~/scripts/git-completion.bash

alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"''""``'
alias xclip='tr -d \\n | xclip -selection clipboard'
alias vim='nvim'
alias v='nvim'
alias vrc='nvim ~/.config/nvim/init.vim'
alias sl='ls'
alias dsatb='ssh root@159.203.20.4'
alias pi='ssh pi@173.180.148.113'
alias external='sshfs pi@173.180.148.113: ~/mount'
export PATH=/home/$USER/.config/nvim/clangd_10.0.0/bin:$PATH

export QSYS_ROOTDIR="/home/robert/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/20.1/quartus/sopc_builder/bin"
