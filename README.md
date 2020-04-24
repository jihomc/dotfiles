# Jihomc's Dotfiles


Configurations for a customized zsh environment with tmux and vim for Ubuntu 18.04 LTS 



 
## Getting Started 



### Prerequisites

These dotfiles contain the following software dependencies:

* Linux: Ubuntu 18.04 LTS 
* [Zsh](https://zsh.org) 
* [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [base16 shell](https://github.com/chriskempson/base16-shell)
* Vim
* Tmux
* `git`
* `curl`




## Installations



### Zsh

#### Installation

```shell
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
```

#### Configuration

Make zsh the default shell

```shell
chsh -s $(which zsh)
echo $SHELL
```


### Oh my Zsh 

#### Installation

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Configuration

Set name of the theme to load in .zshrc

```shell
ZSH_THEME="alanpeabody"
```



### Base16-Shell 

Base16-Shell enables customizable themes for zsh.

#### Installation

```shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

#### Configuration

Add the following lines to ~/.zshrc

```shell
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
```

#### Usage

Open a new shell, type `base16_` and hit tab twice to view themes. Press enter to select.

Current theme: outrun-dark




### Base16-Vim

Setup Base16 for Vim with vim-plug

#### Installation

```shell
# Vim (~/.vim/autoload)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Plugin settings in vim 

Declare list of plugins in Vim config file ~/.vimrc

```shell
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'chriskempson/base16-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set termguicolors
colorscheme base16-outrun-dark
```

Reload the vim configuration file and install plugins

With Vim

```shell
:source ~/.vimrc
:PlugInstall
```

With Terminal

```shell
vim +PlugInstall
```





### Powerline Fonts 

Powerline Fonts are required for certain oh-my-zsh themes like Agnoster.

```shell
sudo apt-get install fonts-powerline
```




### TMUX 

#### Installation

```shell
sudo apt install tmux
```

#### Configuration

##### Configuration highlights, view ~/.tmux.conf to see all configs.

Remap tmux prefix from ctrl+b to ctrl-a.

```shell
# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a last-window
```

Split panes using \ and - instead of defaults.

```shell
# split panes using \ and -
bind \ split-window -h
bind - split-window -v
unbind '"'
unbind %
```

Bind prefix + r command to reload tmux config.

```shell
# reload config file (change file location to your the tmux.conf you want to use)
bind r source-file ~/.tmux.conf \; display-message "Config reloaded..."
```

#### Usage

How to enter copy mode to highlight text, copy to clipboard, and paste.

```shell
prefix + [ or ctrl-a + [
spacebar
hjkl or arrow keys to highlight text
enter to copy text
prefix + ] or ctrl-a + ] to paste
```


### Keyboard mapping with X using xkb 

Use setxkbmap to remap Caps Lock as an additional Control key for easier tmux prefix execution

```shell
setxkbmap -option ctrl:nocaps		# Make Caps Lock a Control key
setxkbmap -option ctrl:swapcaps		# Swap Left Control and Caps Lock
```




### Clipboard xclip or xsel

#### Installation

```shell
sudo apt install xclip xsel
```

#### Configuration

Edit ~/.zshrc to add alias for pbcopy and pbpaste.

```shell
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
```

