# Zsh config

## Oh-my-zsh
OMZ=~/.oh-my-zsh;
HIST_STAMP="dd.mm.yyyy"
plugins=( z encode64 urltools )
source $OMZ/oh-my-zsh.sh
source $OMZ/themes/cobalt2.zsh-theme;
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## General
USER_DIR="/home/jneidel" # ~

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=~/.bin:/usr/local/sbin:/usr/local/bin:/usr/bin:~/.bin/node-latest/bin:~/.bin/ruby-latest/bin:~/scripts
export CDPATH=.:~:~/code

bindkey -v # shell vim mode (default emacs)
export KEYTIMEOUT=1

export EDITOR=vim
export BROWSER=/usr/bin/firefox-nightly

source ~/.zsh/init.zsh;

## X related
export XAUTHORITY=~/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

