set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/')) 

NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'ap/vim-css-color'

call neobundle#end()

filetype plugin indent on
syntax on


"NeoComplete settings
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3

let g:cssColorVimDoNotMessMyUpdatetime=1
let mapleader = ","

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


inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap jj <Esc>

autocmd FileType css            setlocal omnifunc=csscomplete#CompelteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS

