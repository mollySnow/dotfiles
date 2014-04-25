set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Plugin handler"
Plugin 'gmarik/vundle'
"Navigation plugin"
Plugin 'Shougo/unite.vim'
"Surround plugin"
Plugin 'tpope/vim-surround'
"AutoComplete plugin"
Plugin 'Valloric/YouCompleteMe'
"cpp Header Source swapper"
Plugin 'vim-scripts/a.vim'
"Syntax Checker"
Plugin 'scrooloose/syntastic'
"Commenting plugin"
Plugin 'scrooloose/nerdcommenter'
"UltiSnip Engine"
Plugin 'SirVer/ultisnips'
"UltiSnip Default Snippets"
Plugin 'honza/vim-snippets'
"UltiSnip keyConfig"
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_use_ultisnips_completer=1

Plugin 'nanotech/jellybeans.vim'
colorscheme jellybeans

filetype plugin indent on


set t_Co=256
set showcmd
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set number
set ignorecase
set smartcase
set nohlsearch
set incsearch
set ruler

inoremap jj <Esc>

filetype off

let mapleader = ","
