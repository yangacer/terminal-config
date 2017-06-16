set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lyuts/vim-rtags'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fcamel/gj'
Plugin 'mileszs/ack.vim'

" XXX More Plugins go here
" All of your Plugins must be added before the following line
call vundle#end()

set exrc
set rnu
set ruler
set number
set nowrap
set tabstop=2 shiftwidth=2 expandtab smarttab
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< list
set autoindent cindent cino=:0,b1,g0,t0,(0,W2,j1,J1,N-s,i0
set backspace=indent,eol,start
set hlsearch
set cursorline
set lazyredraw
set showmatch
set wildmenu
syntax on
set t_Co=256
colorscheme wombat256
filetype plugin on
filetype plugin indent on
" tab setting per filetype
autocmd Filetype cpp setlocal ts=4 sts=2 sw=2
autocmd Filetype python setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Continue with the last editing line
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif

set csprg=gtags-cscope
cs add GTAGS

map <C-I> :pyf /usr/local/bin/clang-format.py<CR>

