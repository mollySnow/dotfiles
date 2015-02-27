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


NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'Shougo/neocomplcache.vim'
if !has('win32')
	NeoBundle 'Shougo/vimproc', {
        	\'build'    :{
        	\   'mac'   : 'make -f make_mac.mak',
		    \   'windows' : 'tools\\update-dll-mingw',
        	\   },
        	\}
endif

NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ap/vim-css-color'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'klen/python-mode.git'
NeoBundle 'vim-scripts/TeX-PDF'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'chriskempson/base16-vim'


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
"set guifont=Inconsolata:h14
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

"setlocal spell spelllang=sv
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

vnoremap < <gv
vnoremap > >gv

vmap <Enter>    <Plug>(EasyAlign)
nmap ga         <Plug>(EasyAlign)

nnoremap <Space>d   :Unite grep:.<CR>
nnoremap <Space>s   :Unite -quick-match buffer<CR>
nnoremap <Space>f   :Unite file_rec<CR>

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap jj <Esc>

autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
