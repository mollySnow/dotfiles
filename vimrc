set nocompatible
set ttyfast

if has('win32')
    set runtimepath+=$VIM/vimfiles/bundle/neobundle.vim/
    call neobundle#begin(expand('$VIM/vimfiles/bundle/')) 
else
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#begin(expand('~/.vim/bundle/')) 
endif


NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplcache.vim'

NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'jiangmiao/auto-pairs.git'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()

filetype plugin indent on


"NeoComplete settings
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:cssColorVimDoNotMessMyUpdatetime=1

let mapleader = " "

syntax enable
set term=xterm-256color
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized 

set laststatus=2
set lines=32 columns=84
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
set guioptions-=r "remove scrollbar

set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8


vmap <Enter>    <Plug>(EasyAlign)
nmap ga         <Plug>(EasyAlign)

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap jj <Esc>

autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS

"Syntastic settings
let g:syntastic_javascript_checkers = ['jshint']

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
