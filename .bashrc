#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nvim;
export EDITOR=nvim;
PATH=$PATH:/home/robert/.gem/ruby/2.6.0/bin:~/.emacs.d/bin

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
alias computestick='ssh robert@192.168.100.179'
alias computestickvnc='vncviewer 192.168.100.179:0'
alias kanji='/home/robert/scripts/kanji-to-word.sh'
alias megakill='/home/robert/scripts/megakill.sh'
alias convert-pdf='/home/robert/scripts/convert-pdf.sh'
alias split-pdf='/home/robert/scripts/split-pdf.sh'
alias website-sync='rsync -vrP --delete-after ~/code/robertkeen root@robertkeen.ca:/var/www/robertkeen'
export PATH=/home/$USER/.config/nvim/clangd_10.0.0/bin:$PATH

export QSYS_ROOTDIR="/home/robert/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/20.1/quartus/sopc_builder/bin"
. "$HOME/.cargo/env"
export PATH=~/.cargo/bin:$PATH
export PATH=/opt/node/bin:$PATH
