set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'rust-lang/rust.vim'

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
set wildignorecase
set smartindent
setlocal spell spelllang=en_us
syntax on
set t_Co=256
colorscheme wombat
filetype plugin on
filetype plugin indent on

" Custom file types
au! BufRead,BufNewFile *.log setfiletype log

" Settings per filetype
autocmd Filetype python setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
" Need to be updated per system path.
autocmd Filetype cpp nnoremap <buffer> <C-I> :py3f /usr/share/clang/clang-format-17/clang-format.py<CR>
autocmd Filetype rust nnoremap <C-I> :RustFmt <CR>
autocmd Filetype log setlocal nospell

" Continue with the last editing line

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal! g'\"" | endif

" Gtags settings
set csprg=gtags-cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
cs add GTAGS

" Open quickfix after grep/make/vimgrep
augroup QuickFixGrp
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" Filter the quickfix list
function! FilterQFList(type, action, pattern)
    " get current quickfix list
    let s:curList = getqflist()
    let s:newList = []
    for item in s:curList
        if a:type == 0     " filter on file names
            let s:cmpPat = bufname(item.bufnr)
        elseif a:type == 1 " filter by line content
            let s:cmpPat = item.text . item.pattern
        endif
        if item.valid
            if a:action < 0
                " Keep only nonmatching lines
                if s:cmpPat !~ a:pattern
                    let s:newList += [item]
                endif
            else
                " Keep only matching lines
                if s:cmpPat =~ a:pattern
                    let s:newList += [item]
                endif
            endif
        endif
    endfor
    call setqflist(s:newList)
endfunction

nnoremap <C-f> :call FilterQFList(0, 1, inputdialog('Keep only file names matching:', ''))<CR>
nnoremap <C-F> :call FilterQFList(0, 0, inputdialog('Keep only file names not matching:', ''))<CR>
nnoremap <C-l> :call FilterQFList(1, 1, inputdialog('Keep only lines matching:', ''))<CR>
nnoremap <C-L> :call FilterQFList(1, 0, inputdialog('Keep only lines not matching:', ''))<CR>
nmap <F7> :cp<CR>
nmap <F8> :cn<CR>
