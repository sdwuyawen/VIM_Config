set nocompatible  "关闭vi兼容模式，可以启用方向键和Backspace
set backspace=indent,eol,start	"设置backspace键，否则无法删除

syntax enable
syntax on         "自动语法高亮(对于编程语言中的关键字高亮需要下载相应的编程语言对应的"配色方案.vim文件"，参见4.C++语言关键字配色 )

"vim开启256色支持
set t_Co=256
set background=dark
"colorscheme solarized
let g:solarized_termcolors=256

"colorscheme darkburn
colorscheme  3dglasses  
"colorscheme fine_blue  
"colorscheme wombat  
"colorscheme corporation  
"colorscheme  BusyBee  
"set cursorline " 突出显示当前行
"set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份

set number        "显示行号

" 启动自动补全
filetype plugin on

filetype on
"支持鼠标
set mouse=a

"设置文本编码支持
" ******** file encode ********
"unix or dos file
set fileformats=unix,dos
"euc-cn is alias to gb2312
"set vi inside coding, must be set when you use gbk or utf-8
set encoding=utf-8
"actual file encoding, will set as it except fileencodings load other
"set fileencoding=gb2312
set fileencodings=utf-bom,utf-8,gbk,gb2312,gb18030,cp936,latin1
"terminal encoding
"even if you set utf-8 in ssh client
set termencoding=utf-8"

""""""""" Settings of taglist""""""""""""""
" increase the width of the taglist window
let Tlist_WinWidth=10
" automatically open the taglist window 
let Tlist_Auto_Open=0
" exit wim when only the taglist window exist
let Tlist_Exit_OnlyWindow=1
" open tags with single click
"let Tlist_Use_SingleClick=1
" close tag folds for inactive buffers
let Tlist_File_Fold_Auto_Close=1
" show the fold indicator column in the taglist window 
let Tlist_Enable_Fold_Column=1
" Automatically update the taglist to include newly edited files
let Tlist_Auto_Update=1

""""""""""""""taglist设置"""""""""""""""""           
map <F4> : Tlist<CR>  ""按下F4就可以呼出了  
let Tlist_Auto_Open = 1  "在启动VIM后，自动打开taglist窗口  
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置  
let Tlist_Use_Right_Window=1 " 1为让窗口显示在右边，0为显示在左边  
let Tlist_Show_One_File=0
"让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的  
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏  
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim  
"let Tlist_Use_SingleClick= 1    "缺省情况下，在双击一个tag时，才会跳到该tag定义的位置  
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理  
let Tlist_WinWidth=30


"""""""""" NERDtree settings"""""""""""""""
let NERDTreeWinPos='left'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"""""""""" mini buffer navigator"""""""""""
let g:miniBUfExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
let g:miniBufExplUseSingleClick=1

""""""""""""ctags settings"""""""""""""""""
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags
"add by wu, add /usr/include里的tags,用sudo ctags -R --fields=+lS生成的
set tags+=/usr/include/usr_include_tags
"add by wu,for cpp library functions
set tags+=/home/wu/.vim/tags/cpp
"add by wu,for linux kernel 
set tags+=/home/wu/workspace/kernel/linux-2.6.22.with_yaffs20070816/ctags_linux2.6.22

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
"add by wu, for achofunc
Bundle 'vim-scripts/echofunc.vim'	


""""""""""syntastic""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '!'
let g:syntastic_warning_symbol = '>'
"whether to show balloons
let g:syntastic_enable_balloons = 1

"add by wu
"Syntastic C checker 
"let g:loaded_syntastic_c_gcc_checker = 1 
let g:syntastic_c_checkers = ['gcc', 'make']
let g:syntastic_c_include_dirs = ['/home/wu/workspace/kernel/linux-2.6.22.with_yaffs20070816/include', '/usr/include']
"let g:syntastic_c_config_file = [''] 
"let g:syntastic_c_remove_include_errors = 1
"let g:syntastic_c_compiler = 'gcc'
"let g:syntastic_c_compiler_options = '-I/home/wu/workspace/kernel/linux-2.6.22.with_yaffs20070816/include'


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
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>


"""""""""""""设置echofunc"""""""""""""   
"let g:EchoFuncKeyNext='<C-=>' 
"let g:EchoFuncKeyPrev='<C-->'
"在终端下Alt-X等同于Esc X
let g:EchoFuncKeyNext='<Esc>+'
let g:EchoFuncKeyPrev='<Esc>-'

"显示行号    
"set number "或者set  nu
"imap <F5> <Esc>:set nu<CR>   "映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）
"imap <C-F5> <Esc>:set nonu<CR>   "映射Ctrl+F5为不显示行号
map <F5> <Esc>:set nu!<CR>   "映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）

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