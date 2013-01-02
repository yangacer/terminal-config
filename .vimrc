set nocompatible                " enable arrow key in insert mode
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50
set showcmd
set incsearch
set hlsearch
set nowrap
set nonumber
set ruler
set nomodeline
set autoindent
set smartindent
set cindent
set cino=:0,b1,g0,t0,(0,W2,j1,J1,N-s,i0
set laststatus=2
set ffs=unix,dos,mac
set ff=unix
set nocp "acer setting
" tab setting
"set tabstop=2
"set shiftwidth=2
"set expandtab
set listchars=tab:>-
set list
set completeopt=menu,menuone
set pumheight=15
set textwidth=77
set wm=3
set rnu

" virtual tabstops using spaces
let my_tab=2
execute "set shiftwidth=".my_tab
execute "set softtabstop=".my_tab
set expandtab
" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    set shiftwidth=2
    set softtabstop=0
    set tabstop=0
    set noexpandtab
  else
    execute "set shiftwidth=".g:my_tab
    execute "set softtabstop=".g:my_tab
    execute "set tabstop=".g:my_tab
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow

"
" Text Processing
"
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal g`\"" | 
\ endif 
setlocal fo-=t fo+=r


"
" Terminal
"set    term=xterm-color
if &term =~ "xterm"
  set ttymouse=xterm2
endif

"
" Color
set t_Co=256
syntax on
colorscheme wombat256
"hi Comment      term=reverse ctermfg=darkcyan
"hi Search       term=reverse ctermbg=4 ctermfg=7

"
" Hotkey
set pastetoggle=<F12>

"
" Misc
"
" autocomplete configuration
filetype plugin on

"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType cpp set omnifunc=omni#cpp#complete#Main


" window control
let g:clang_use_library = 1
let g:clang_complete_auto = 1
let g:clang_snippets = 1
let g:clang_complete_copen = 1

imap {<CR> {<CR><END><CR>}<UP><END>
