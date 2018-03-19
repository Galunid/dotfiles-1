# dotfiles

- [Zsh](#zsh)
- [Eslint](#eslint)
- [Vim](#vim)
- [Visual Studio Code](#visual-studio-code)
- [NPM CLIs](#npm-clis)
- [Chrome Extensions](#chrome-extensions)

## Zsh

I'm using zsh with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

To use my zsh config fill in your home directory in the variable at line 3.

[View zsh config](zshrc) - `~/.zshrc`

[View oh-my-zsh config](oh-my-zsh.sh) - `~/.oh-my-zsh/oh-my-zsh.sh`

[View aliases](aliases.zsh) - `~/.oh-my-zsh/custom/aliases.zsh`

### Zsh theme

[View zsh-theme](cobalt2.zsh-theme) - `~/.oh-my-zsh/themes/cobalt2.zsh-theme`

For the theme to be rendered correctly you will need a [powerline patched font](https://github.com/robbyrussell/oh-my-zsh).
The font will need to be installed on the device and activated in the iTerm options: `Profiles > Text > Font > Change Font`.

To change the `$` default prompt in the shell, open `~/.oh-my-zsh/themes/cobalt2.zsh-theme` and edit line 52, changing the value between the closing parens and double quote:

```zsh
prompt_segment black default "%(!.%{%F{yellow}%}.)<insert-prompt-here>"
```

### Colorscheme

**OSX only:**

[View iTerm colorscheme](Brogrammer.itermcolors)

The iTerm colorscheme will need to imported in the iTerm options: `Profiles > Colors > Color Presets > Import` and selected in the same dropdown after the import.

### Plugins

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Clone into `~/.oh-my-zsh/plugins/` with: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

- [z (jump around)](https://github.com/rupa/z) (already downloaded with oh-my-zsh)

## Eslint

[View eslint config](eslintrc) - `~/.eslintrc`

Requires `eslint` and `eslint-config-airbnb` to be installed globally:

```zsh
npm i eslint -g
npm i eslint-config-airbnb -g
```

## Vim

[View vim config](vimrc) - `~/.vimrc`

[View colorscheme](https://github.com/j-tom/vim-old-hope)

### Plugins

- [NERDTree](https://github.com/scrooloose/nerdtree)
- [MiniBufExpl](https://github.com/fholgado/minibufexpl.vim)

## Visual Studio Code

[View vscode settings](vscode-settings.json) - `~/Library/Application\ Support/Code/User/settings.json`

[View vscode keybindings](vscode-keybindings.json) - `~/Library/Application\ Support/Code/User/keybindings.json`

## NPM CLIs

- [@aweary/alder](https://github.com/aweary/alder) - Print current directory as ascii tree
- [dict-cc-cli](https://github.com/derhuerst/dict-cc-cli) - Dict.cc lookup from the command line
- [generator-jneidel](https://github.com/jneidel/generator-jneidel) - Collection of boilerplates, for installation with yeoman
- [np](https://github.com/sindresorhus/np) - Better version of 'npm publish'
- [tslide](https://github.com/tslide/tslide) - Terminal slide deck using markdown
- [yo](https://github.com/yeoman/yo) - Run yeoman generators to create boilerplates

## Chrome Extensions

Chrome extensions, sorted by category.

### Adblocker

- [Adblock Plus](https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb)
- [uBlock Origin](https://chrome.google.com/webstore/detail/cjpalhdlnbpafiamejdnhcphjbkeiagm)

### Coding

- [Chrome Markdown Preview](https://chrome.google.com/webstore/detail/chrome-markdown-preview/ghmocdlbmpcchcbkkingnkgemjacgfdf) - Elegant GFM preview on `.md` files
- [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) - Easy to read JSON formatting
- [OpenGenus](https://chrome.google.com/webstore/detail/opengenus-offline-search/lfoloadpfjildomeafpdopahkdaoofbn) - Offline algorithm search engine
- [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc) - GitHub file tree
- [Npmhub](https://chrome.google.com/webstore/detail/npmhub/kbbbjimdjbjclaebffknlabpogocablj) - List npm dependencies in readme
- [Refined GitHub](https://chrome.google.com/webstore/detail/refined-github/hlepfoohegkhhmjieoechaddaejaokhf) - GitHub functional/visual upgrade

### Privacy

- [DuckDuckGo Privacy Essentials](https://chrome.google.com/webstore/detail/duckduckgo-privacy-essent/bkdgflcldnnnapblkhphbgpggdiikppg) - DDG search
- [HTTPS Everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp) - Force HTTPS
- [Privacy Badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp) - Stop trackers
- [Private Internet Access](https://chrome.google.com/webstore/detail/private-internet-access/jplnlifepflhkbkgonidnobkakhmpnmh) - VPN

### Misc

- [chromelPass](https://chrome.google.com/webstore/detail/chromeipass/ompiailgknfdndiefoaoiligalphfdae) - KeePass integration for password insert
- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp) - Color picker
- [Hover Zoom+](https://chrome.google.com/webstore/detail/hover-zoom%20/pccckmaobkjjboncdfnnofkonhgpceea) - Large overlay on image and link to image hover
- [StayFocusd](https://chrome.google.com/webstore/detail/stayfocusd/laankejkbhbdhmipfmgcngdelahlfoji) - Site blocker
- [Toby](https://chrome.google.com/webstore/detail/toby-for-chrome/hddnkoipeenegfoeaoibdmnaalmgkpip) - Better bookmark manager

