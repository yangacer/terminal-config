" Author: Gerhard Gappmeier <gerhard.gappmeier@ascolab.com>
" Description: 256C Scheme for console based VIM
" Based in wombat GVIM scheme from Lars H. Nielsen (dengmao@gmail.com)
" Last Change: 2009-06-01

set background=dark

hi clear

if exists("syntax_on")
syntax reset
endif

let colors_name = "wombat256"

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine guibg=#303030 ctermbg=236
hi CursorColumn guibg=#303030 ctermbg=236
hi MatchParen guifg=#c0c0c0 ctermfg=7 guibg=#767676 ctermbg=243 gui=bold cterm=bold
hi Pmenu guifg=#c0c0c0 ctermfg=7 guibg=#444444 ctermbg=238
hi PmenuSel guifg=#000000 ctermfg=0 guibg=#87df00 ctermbg=112
endif

" General colors
hi Cursor guifg=#000000 ctermfg=0 guibg=#606060 ctermbg=241 gui=none cterm=none
hi Normal guifg=#c0c0c0 ctermfg=7 guibg=#262626 ctermbg=235 gui=none cterm=none
hi NonText guifg=#808080 ctermfg=244 guibg=#303030 ctermbg=236 gui=none cterm=none
hi LineNr guifg=#767676 ctermfg=243 guibg=#000000 ctermbg=0 gui=none cterm=none
hi StatusLine guifg=#c0c0c0 ctermfg=7 guibg=#444444 ctermbg=238 gui=none cterm=none
hi StatusLineNC guifg=#767676 ctermfg=243 guibg=#444444 ctermbg=238 gui=none cterm=none
hi VertSplit guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=238 gui=none cterm=none
hi Folded guibg=#444444 ctermbg=238 guifg=#a8a8a8 ctermfg=248 gui=none cterm=none
hi Title guifg=#c0c0c0 ctermfg=7 guibg=#000000 ctermbg=0 gui=bold cterm=bold
hi Visual guifg=#c0c0c0 ctermfg=7 guibg=#444444 ctermbg=238 gui=none cterm=none
hi SpecialKey guifg=#808080 ctermfg=244 guibg=#303030 ctermbg=236 gui=none cterm=none
hi DiffAdd guifg=#000000 ctermfg=0 guibg=#87df5f ctermbg=113 gui=none cterm=none
hi DiffChange guifg=#000000 ctermfg=0 guibg=#df87af ctermbg=175 gui=none cterm=none
hi DiffDelete guifg=#000000 ctermfg=0 guibg=#00005f ctermbg=17 gui=none cterm=none
hi SpellBad guifg=#000000 ctermfg=0 guibg=#df005f ctermbg=161 gui=none cterm=none

" Syntax highlighting
hi Comment guifg=#00875f ctermfg=29 guibg=#262626 ctermbg=235
hi Todo guifg=#767676 ctermfg=243 guibg=#df5fdf ctermbg=170 gui=italic cterm=italic
hi Constant guifg=#df875f ctermfg=173 gui=none cterm=none
hi String guifg=#87df5f ctermfg=113 gui=none cterm=none
hi Identifier guifg=#dfdf87 ctermfg=186 gui=none cterm=none
hi Function guifg=#dfdf87 ctermfg=186 gui=none cterm=none
hi Type guifg=#dfdf87 ctermfg=186 gui=none cterm=none
hi Statement guifg=#87dfff ctermfg=117 gui=none cterm=none
hi Keyword guifg=#87dfff ctermfg=117 gui=none cterm=none
hi PreProc guifg=#df875f ctermfg=173 gui=none cterm=none
hi Number guifg=#df875f ctermfg=173 gui=none cterm=none
hi Special guifg=#ff0000 ctermfg=9 gui=none cterm=none

