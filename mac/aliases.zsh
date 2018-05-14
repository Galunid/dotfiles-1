### Aliases

alias src="source ~/.zshrc"

alias v="vim"

# git
alias s="git status"
alias add="git add .; git status"
alias ga="git add"
alias commit="git commit -m"
alias amend="git commit --amend"
alias push="git push origin"
alias pushf="git push -f origin"
alias pull="git pull origin"
alias master="git pull origin master; git push origin master"
alias log="git log --oneline --graph --decorate"
alias reflog="git reflog"
alias re="git reset"
alias diff="git diff"
alias co="git checkout"
alias com="git checkout master"
alias gb="git branch"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias addcom="git add .; git commit -m"
alias addam="git add .; git commit --amend --no-edit"
alias pushup="git push --set-upstream origin"
alias amendd="git commit --amend --no-edit"
amdate() {
  git commit --amend --no-edit --date="$1"
}
amd() {
  git commit --amend --no-edit --date="$1 $2 $3 $4:35:25 2018 +0200"
}
amyest() {
  DATE=`date -v -1d +"%a %h %e"`; # eg: Sun Apr 6

  git commit --amend --no-edit --date="$DATE $1:35:25 2018 +0200"
}
amtod() {
  DATE=`date +"%a %h %e"`;

  git commit --amend --no-edit --date="$DATE $1:35:25 2018 +0200"
}

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="npm install -g"
alias nu="npm uninstall"
alias nug="npm uninstall -g"
alias npmls="npm list -g --depth=0"
alias nr="npm run"
alias start="npm run start"
alias build="npm run build"
alias test="npm run test"
alias testing="npm run testing"
alias unit="npm run unit"

# tmux
alias tn="tmux new -s"
alias tls="tmux ls"
alias ta="tmux a -t" # attach
alias tam="tmux a -t main"
alias tac="tmux a -t code"
alias tadb="tmux a -t mongo"

# ls
function filterls() {
  awk '{ if ( \
      $1 != ".DS_Store" && \
      $1 != "./" && \
      $1 != "../" && \
      $1 != ".git/" \
  ) print };'
}
function colorizels() {
  # like -G would
  # 1;34 = blue
  # 0;35 = purple
  # 0;31 = red
  # color list http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
  awk '{ printf " ";
         if ( /\// ) printf "\033[1;34m"; \
         else if ( /@/ ) printf "\033[0;35m"; \
         else if ( /\*/ ) printf "\033[0;31m";
         printf;
         print "\033[0m";
       };'
}
alias l="ls -1aF | filterls | colorizels" # all files
alias la="ls -1FG"    # no . files
alias ld="ls -1Gd */" # only dirs
alias li="ls -lahoFG" # more info

# *.rc files
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"
alias eslintrc="vim ~/.eslintrc"
alias al="vim $ZSH/custom/aliases.zsh"

# eslint
alias fix="eslint --fix --ext .js, .json"
alias fixa="eslint . --fix --ext .js, .json"

# sass
alias sassdir="sass -w . -o ."

# open apps
alias o="open ."   # finder
alias vsc="code ." # vscode

# finder show/hide hidden files
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"

# get/set trackpad speed on mac
alias gettrackpadspeed="defaults read -g com.apple.mouse.scaling"
alias settrackpadspeed="defaults write -g com.apple.mouse.scaling"

# file system
alias cpdir="cp -r"

# misc
alias h="history"
alias homepage="gh-home" # open github repo of current project
alias vimdocs="cd /usr/share/vim/vim80/doc/"
mdc() { # MkDirCd
  mkdir "$1";
  cd "$1";
}
calc() {
  echo "$1" | bc
}
alias sass="node-sass"
alias calendar="cal -NA 3"
alias cal3="cal -NC3"
alias home="cd;clear;"

# npm apps/clis
alias toc="markdown-toc -i readme.md"
alias tree="alder --depth 3"
alias lint="fixa; toc;"
alias manga="mangareader-dl"
alias asciinema="py -m asciinema" # requires pip module: pip3 install asciinema
