# Zsh config

## Oh-my-zsh
OMZ=~/.oh-my-zsh;
HIST_STAMP="dd.mm.yyyy"

_Z_DATA=$HOME/.z/.z
plugins=( z encode64 urltools colored-man-pages colorize cp )
# z: jump around, $ z dot, to cd into dir thats most often used an includes 'dot' in the name, i.e. "dotfiles"
# encode64: $ d64; $ e64
# test colored-man-pages
# test colorize: ccat
# test cp: cpv

source $OMZ/oh-my-zsh.sh
source $OMZ/themes/cobalt2.zsh-theme;
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# installed with pacman: zsh-syntax-highlighting[-git]

## General
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

bindkey -v # shell vim mode (default emacs)
export KEYTIMEOUT=1

## User specific
export USER_DIR="/home/jneidel" # ~
export KEYID=B29E6A7A7DFD16FA # GPG keyid

### Applications
export EDITOR=vim
export BROWSER=/usr/bin/firefox-nightly
export B=$BROWSER
export TMP=$HOME/tmp

### Import aliases
source ~/.zsh/init.zsh;

### Paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:~/.bin/ruby-latest/bin:~/scripts:~/.bin
export CDPATH=.:~:~/code:~/Downloads:~/ct

## X related vars
export XAUTHORITY=~/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

