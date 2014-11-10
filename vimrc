set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/')) 

NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/vimproc', {
        \'build'    :{
        \   'mac'   : 'make -f make_mac.mak'
        \   },
        \}

NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ap/vim-css-color'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'

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

let mapleader = ","

syntax enable
set background=dark
colorscheme solarized 

set laststatus=2
set t_Co=256
set showcmd
set autoindent
set expandtab
set smarttab
set guifont=Inconsolata:h18
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
set guioptions-=r "remove scrollbar

vnoremap < <gv
vnoremap > >gv

nnoremap <Space>d   :Unite grep:.<CR>
nnoremap <Space>s   :Unite -quick-match buffer<CR>
nnoremap <Space>f   :Unite file_rec<CR>

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap jj <Esc>

autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS

