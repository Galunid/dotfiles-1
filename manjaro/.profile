# ~/.profile
# run at startup

## Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

## Paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:~/.bin/ruby-latest/bin:~/scripts:~/.bin:~/scripts/personal
export CDPATH=.:~:~/code:~/Downloads:~/ct

## Applications
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox-nightly
export B=$BROWSER

### Application options
export FZF_DEFAULT_OPTS="--height 50% --no-mouse --ansi --color=16"

## Directories
export TMP=$HOME/tmp

## User specific
export KEYID=B29E6A7A7DFD16FA # GPG keyid

## Manjaro defaults
### GUI related
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

if [ -n "$GTK_MODULES" ]
then
    GTK_MODULES="$GTK_MODULES:unity-gtk-module"
else
  GTK_MODULES="unity-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]
then
  UBUNTU_MENUPROXY=1
fi

### X related
export XAUTHORITY=~/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

