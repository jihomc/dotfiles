# Jihomc's Dotfiles

Configurations for a customized zsh environment with tmux and vim 
 
## Getting Started 

### Prerequisites

These dotfiles contain the following software dependencies:

* A Unix-like operating system: macOS, Linux, BSD. 
* [Zsh](https://zsh.org) v5.4.2+  
* [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [base16 shell](https://github.com/chriskempson/base16-shell)
* Vim 8.0+
* Tmux 2.6
* `git`
* `curl`

## Installations


### Zsh installation

```shell
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
```

##### Make zsh the default shell

```shell
chsh -s $(which zsh)
echo $SHELL
```


### Oh my Zsh installation

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```


### Base16-Shell installation

Base16-Shell enables customizable themes for zsh

```shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```


### Powerline Fonts installation

Powerline Fonts are required for certain oh-my-zsh themes like Agnoster

```shell
sudo apt-get install fonts-powerline
```


### TMUX installation

```shell
sudo apt install tmux
```


### Xmodmap

Xmodmap is used to map the left control key to caps lock

#### Add xmodmap command to .zshrc to automatically set the key binding when zsh runs

```shell
xmodmap ~/.xmodmap
```


### Clipboard xclip or xsel

```shell
sudo apt install xclip xsel
vim ~/.zshrc
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
```


