" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2010-07-23
"
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)

set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "wombat256mod1"

"========================================================
" Highlight All Math Operator
"========================================================"
syn match cFunction /\<\w\+\%(\s*(\)\@=/
highlight default link cFunction cType
" C math operators"
syn match cMathOperator display "[-+/*/%=]"
highlight cMathOperator ctermfg=52 guifg=#5f0000 

" General colors
highlight Normal guifg=#e3e0d7 guibg=#242424 gui=NONE ctermfg=254 ctermbg=235 cterm=NONE
highlight Cursor guifg=#242424 guibg=#eae788 gui=NONE ctermfg=235 ctermbg=186 cterm=NONE
highlight Visual guifg=#c3c6ca guibg=#554d4b gui=NONE ctermfg=251 ctermbg=239 cterm=NONE
highlight VisualNOS guifg=#c3c6ca guibg=#303030 gui=NONE ctermfg=251 ctermbg=236 cterm=NONE
highlight Search guifg=#d787ff guibg=#636066 gui=NONE ctermfg=177 ctermbg=241 cterm=NONE
highlight Folded guifg=#a0a8b0 guibg=#3a4046 gui=NONE ctermfg=248 ctermbg=238 cterm=NONE
highlight Title guifg=#ffffd7 gui=bold ctermfg=230 cterm=bold
highlight StatusLine guifg=#ffffd7 guibg=#444444 gui=italic ctermfg=230 ctermbg=238 cterm=NONE
highlight VertSplit guifg=#444444 guibg=#444444 gui=NONE ctermfg=238 ctermbg=238 cterm=NONE
highlight StatusLineNC guifg=#857b6f guibg=#444444 gui=NONE ctermfg=244 ctermbg=238 cterm=NONE
highlight LineNr guifg=#857b6f guibg=#080808 gui=NONE ctermfg=244 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#626262 guibg=#2b2b2b gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
highlight WarningMsg guifg=#ff5f55 ctermfg=203
highlight ErrorMsg guifg=#ff2026 guibg=#3a3a3a gui=bold ctermfg=196 ctermbg=237 cterm=bold

" Vim >= 7.0 specific colors
if version >= 700
highlight CursorLine guibg=#32322f ctermbg=236 cterm=NONE
highlight MatchParen guifg=#eae788 guibg=#857b6f gui=bold ctermfg=186 ctermbg=244 cterm=bold
highlight Pmenu guifg=#ffffd7 guibg=#444444 ctermfg=230 ctermbg=238
highlight PmenuSel guifg=#080808 guibg=#cae982 ctermfg=232 ctermbg=192
endif

" Diff highlighting
highlight DiffAdd guibg=#2a0d6a ctermbg=17
highlight DiffDelete guifg=#242424 guibg=#3e3969 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
highlight DiffText guibg=#73186e gui=NONE ctermbg=53 cterm=NONE
highlight DiffChange guibg=#382a37 ctermbg=236

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
highlight Keyword guifg=#88b8f6 gui=NONE ctermfg=111 cterm=NONE
highlight Statement guifg=#88b8f6 gui=NONE ctermfg=111 cterm=NONE
highlight Constant guifg=#e5786d gui=NONE ctermfg=203 cterm=NONE
highlight Number guifg=#e5786d gui=NONE ctermfg=203 cterm=NONE
highlight PreProc guifg=#e5786d gui=NONE ctermfg=203 cterm=NONE
highlight Function guifg=#cae982 gui=NONE ctermfg=192 cterm=NONE
highlight Identifier guifg=#cae982 gui=NONE ctermfg=192 cterm=NONE
highlight Type guifg=#d4d987 gui=NONE ctermfg=186 cterm=NONE
highlight Special guifg=#eadead gui=NONE ctermfg=187 cterm=NONE
highlight String guifg=#95e454 gui=italic ctermfg=113 cterm=NONE
highlight Comment guifg=#9c998e gui=italic ctermfg=246 cterm=NONE
highlight Todo guifg=#857b6f gui=italic ctermfg=244 cterm=NONE


" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link NonText		LineNr

" vim:set ts=4 sw=4 noet:
