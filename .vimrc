set nocompatible              " be iMproved, required
filetype off                  " required

"set background=dark
"let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors 
colorscheme base16-outrun-dark

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'chriskempson/base16-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Color schemes
"base16_chalk, base16_darktooth, base16_classic-dark
"gruvbox-dark-hard, helios, mocha, monokai, nord, ocean
"oceanicnext, outrun-dark, pop, railscasts, seti, snazzy
"synth-midnight-dark, woodland, zenburn
