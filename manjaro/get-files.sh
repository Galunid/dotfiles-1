D=~/code/dotfiles/manjaro;
C=$D/.config;

cp ~/.oh-my-zsh/oh-my-zsh.sh $D/../oh-my-zsh.sh;
rm -rf $D/.zsh;
cp -r ~/.zsh $D/.zsh;
cp ~/.gitconfig $D/.gitconfig;
cp ~/.gitignore $D/.gitignore;
cp ~/.i3/config $D/.i3/config;
cp ~/.config/terminator/config $C/terminator/config;
cp ~/.tmux.conf $D/.tmux.conf;
rm -rf $D/.vim;
cp -r ~/.vim $D/.vim;
cp ~/.vimrc $D/.vimrc;
cp ~/.Xmodmap $D/.Xmodmap;
cp ~/.config/Zeal/Zeal.conf $C/Zeal/Zeal.conf;
cp ~/.zshrc $D/.zshrc;
rm -rf $C/nitrogen;
cp -r ~/.config/nitrogen $C/nitrogen;
cp ~/.config/pulse/default.pa $C/pulse/;
cp ~/.i3status.conf $D/.i3status.conf;
cp ~/.config/transmission/settings.json $C/transmission/;
cp ~/.config/transmission-daemon/settings.json $C/transmission-daemon/;
cp ~/.drive/update.sh $D/scripts/update-google-drive.sh;
cp ~/.config/htop/htoprc $C/htop/htoprc;
cp -r ~/scripts/* $D/scripts;
cp ~/.profile $D/.profile;
rm -rf $D/.tmux;
cp -r ~/.tmux $D/.tmux;
cp ~/.cmus/rc $D/.cmus/rc;
cp ~/.cmus/cmus.theme $D/.cmus/cmus.theme;
cp ~/.config/beets/config.yaml $C/beets/;
cp ~/.drive/update.sh $D/.drive/update.sh;
mkdir -p $D/.calcurse;
cp ~/.calcurse/keys $D/.calcurse/;
cp ~/.calcurse/conf $D/.calcurse/;
mkdir -p $D/etc
cp /etc/hosts $D/etc/hosts
mkdir -p $C/vis;
cp -r ~/.config/vis/colors $C/vis/;
cp ~/.config/vis/config $C/vis/;
#cp ~/.npmrc $D/ has my auth key

