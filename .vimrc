"set pastetoggle=<F12>
set rnu
set number
set nowrap
set tabstop=4 shiftwidth=4 expandtab smarttab
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< list
set autoindent cindent cino=:0,b1,g0,t0,(0,W2,j1,J1,N-s,i0
set backspace=indent,eol,start
set hlsearch
syntax on
set t_Co=256
colorscheme wombat256
filetype plugin on
filetype plugin indent on
" tab setting per filetype
autocmd Filetype cpp setlocal ts=4 sts=2 sw=2
autocmd Filetype python setlocal ts=8 sts=4 sw=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Continue with the last editing line
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif
