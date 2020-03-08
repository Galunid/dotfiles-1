# Zsh config

# oh-my-zsh
ZSH_DIR=~/.zsh
source $ZSH_DIR/oh-my-zsh.sh
source $ZSH_DIR/lib/init.zsh
source $ZSH_DIR/cobalt2.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# installed with pacman: zsh-syntax-highlighting[-git]

bindkey -v # shell vim mode (default emacs)
bindkey "^r" history-incremental-pattern-search-backward # history search
export KEYTIMEOUT=1

# Import aliases
source $ZSH_DIR/init.zsh

## Language
export LANG=en_US.UTF-8
# tmux needs to know the encoding: https://github.com/wernight/powerline-web-fonts/issues/8#issuecomment-353081869
export LC_CTYPE=en_US.UTF-8
if [ "$TERM" = "screen-256color" ]; then
  export DISPLAY=:0
fi

## Paths
export PATH=/bin:/usr/bin:/usr/bin/vendor_perl
export PATH="$(du $HOME/scripts/ | cut -f2 | fgrep -v -e .git -e node_modules -e lib -e data -e i3 | tr '\n' ':')$PATH"
export CDPATH=.:~:~/code:~/Downloads:~/ct:~/scripts

## Applications
export EDITOR=vim
export PAGER=less
export LESS="-R"
# export BROWSER=firefox-nightly
export BROWSER=brave
export B=$BROWSER
export ALT_BROWSER=firefox-developer-edition
export JAVA_HOME=/usr/lib/jvm/java-13-openjdk

### Themes
export GTK_THEME=Arc
export QT_STYLE_OVERRIDE=kvantum-dark

#### less coloring (man pages), see colored-man script
export LESS_TERMCAP_mb=$'\e[1;34m'
# headlines, hyperlinks - yellow
export LESS_TERMCAP_md=$(tput bold; tput setaf 3)
export LESS_TERMCAP_me=$'\e[0m'
# less status/search matches - blue
export LESS_TERMCAP_so=$(tput bold; tput rev; tput setaf 4)
export LESS_TERMCAP_se=$'\e[0m'
# commands - red, underlined
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1)
export LESS_TERMCAP_ue=$'\e[0m'

### Application options
export FZF_DEFAULT_OPTS="--height 50% --no-mouse --ansi --color=16"

## User specific
export KEYID=B29E6A7A7DFD16FA # GPG keyid

# start xorg on first login into the tty
# runs commands in ~/.xinitrc
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep i3 || startx
fi

