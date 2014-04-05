set pastetoggle=<F12>
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

" Continue with the last editing line
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif
