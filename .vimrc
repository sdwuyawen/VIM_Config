set nocompatible  "关闭vi兼容模式，可以启用方向键和Backspace
set backspace=indent,eol,start	"设置backspace键，否则无法删除
syntax on         "自动语法高亮(对于编程语言中的关键字高亮需要下载相应的编程语言对应的"配色方案.vim文件"，参见4.C++语言关键字配色 )
set number        "显示行号
colorscheme  3dglasses  "设定配色方案为cpp.vim
"set cursorline " 突出显示当前行
"set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份

" 启动自动补全
filetype plugin on


""""""""" Settings of taglist""""""""""""""
" increase the width of the taglist window
let Tlist_WinWidth=10
" automatically open the taglist window 
let Tlist_Auto_Open=0
" exit wim when only the taglist window exist
let Tlist_Exit_OnlyWindow=1
" open tags with single click
let Tlist_Use_SingleClick=1
" close tag folds for inactive buffers
let Tlist_File_Fold_Auto_Close=1
" show the fold indicator column in the taglist window 
let Tlist_Enable_Fold_Column=1
" Automatically update the taglist to include newly edited files
let Tlist_Auto_Update=1
"""""""""" NERDtree settings"""""""""""""""
let NERDTreeWinPos='right'
"""""""""" mini buffer navigator"""""""""""
let g:miniBUfExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
let g:miniBufExplUseSingleClick=1

""""""""""""ctags settings"""""""""""""""""
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags

"""""""""""color scheme""""""""""""""""""""
let g:molokai_original=1

""""""""""""vundle"""""""""""""""""""""""""
set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
   
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

""""""""vim scripts""""""""""""""""""
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'minibufexpl.vim'
Bundle 'grep.vim'
Bundle 'mru.vim'
Bundle 'comments.vim'

""""""""git repo"""""""""""""""
Bundle 'scrooloose/nerdtree'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/AutoClose'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
"add by wu, for auto complete
Bundle 'vim-scripts/OmniCppComplete'	

""""""""""syntastic""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '!!'
let g:syntastic_warning_symbol = '->'
"whether to show balloons
let g:syntastic_enable_balloons = 1

""""""""""""YCM""""""""""""""""""""
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_confirm_extra_conf = 0




""""""""""""OmniCppComplete""""""""""""""""""""
"let OmniCpp_MayCompleteDot = 1   " autocomplete with .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
" 自动补全配置让Vim补全菜单行为跟IDE一致
"set completeopt=longest,menu

"""""""""""""设置开启ctags"""""""""""""   
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

"显示行号    
"set number "或者set  nu
"imap <F5> <Esc>:set nu<CR>   "映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）
"imap <C-F5> <Esc>:set nonu<CR>   "映射Ctrl+F5为不显示行号
imap <F5> <Esc>:set nu!<CR>   "映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）

"imap a b
" mapping
"如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
"如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
inoremap <expr> <C-J>	   pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
"如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
"如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>" 