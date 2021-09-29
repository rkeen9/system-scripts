#
# ~/.bashrc
#

# If not running interactively, don't do anything
# source
source ~/scripts/git-completion.bash
export PATH=~/.local/bin:$PATH
export EDITOR=nvim

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=/home/$USER/.config/nvim/clangd_10.0.0/bin:$PATH
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"''""``'
alias xclip='tr -d \\n | xclip -selection clipboard'
alias vim='nvim'
alias v='nvim'
alias vrc='nvim ~/.config/nvim/init.vim'
alias dsatb='ssh root@159.203.20.4'
alias crunchy-dl="youtube-dl --all-subs --user-agent 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/89.0.4389.105 Safari/537.36' --cookies /home/robert/videos/cookies.txt"
alias s="sudo systemctl"
alias wt="ping archlinux.org"
alias megakill='/home/robert/scripts/megakill.sh'
alias convert-pdf='/home/robert/scripts/convert-pdf.sh'
alias split-pdf='/home/robert/scripts/split-pdf.sh'
