set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ap/vim-css-color'

call vundle#end()
filetype plugin indent on
syntax on

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_use_ultisnips_completer=1
let g:cssColorVimDoNotMessMyUpdatetime=1

colorscheme jellybeans


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
set nobackup
set nowritebackup

inoremap jj <Esc>
map <C-n> :NERDTreeToggle<CR>

let mapleader = ","
