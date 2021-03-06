"打开文件时，回到上次退出时的文件位置
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nocompatible  "关闭vi兼容模式，可以启用方向键和Backspace
set backspace=indent,eol,start	"设置backspace键，否则无法删除

syntax enable
"syntax on         "自动语法高亮(对于编程语言中的关键字高亮需要下载相应的编程语言对应的"配色方案.vim文件")

"set cursorline " 突出显示当前行
"set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set number        "显示行号

" 启动自动补全
filetype plugin on
filetype plugin indent on
filetype on
"支持鼠标
set mouse=a

"允许用shift+#高亮标记单词
set hlsearch

"vim开启256色支持
set t_Co=256

"设置文本编码支持
"unix or dos file
set fileformats=unix,dos
"set vi inside coding, must be set when you use gbk or utf-8
set encoding=utf-8
set fileencodings=utf-bom,utf-8,gbk,gb2312,gb18030,cp936,latin1
"terminal encoding
"even if you set utf-8 in ssh client
set termencoding=utf-8

""""""""""""vundle"""""""""""""""""""""""""
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
"Bundle 'scrooloose/syntastic'
"Bundle 'vim-scripts/OmniCppComplete'
"Bundle 'vim-scripts/echofunc.vim'
Bundle 'Valloric/YouCompleteMe'


"设置配色方案
"colorscheme blue
"Bundle 'desert-warm-256'
"colorscheme desert-warm-256
colorscheme molokai
"手动给C函数体着色
"map <F8> <Esc>:colorscheme diy1<CR>
"map <F11> <Esc>:colorscheme ccc1<CR>

"映射F2显示行号
map <F2> <Esc>:set nu!<CR>

"""""""""""""设置快捷键重新加载ctags"""""""""""""
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

"""""""""""""设置cscope""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope        	" 指定用来执行cscope的命令
    set csto=0                        	" 设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
    set cst                            	" 同时搜索cscope数据库和标签文件
"    set cscopequickfix=s-,c-,d-,i-,t-,e-    " 使用QuickFix窗口来显示cscope查找结果
    set nocsverb
    if filereadable("cscope.out")    	" 若当前目录下存在cscope数据库，添加该数据库到vim
        cs add cscope.out
    elseif $CSCOPE_DB != ""            	" 否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
        cs add $CSCOPE_DB
    endif
    "cs add /home/wu/workspace/kernel/linux-2.6.22.with_yaffs20070816/cscope.out        " 添加kernel的cscope
    set csverb
endif


"""""""""" mini buffer navigator"""""""""""
let g:miniBUfExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
let g:miniBufExplUseSingleClick=1

"""""""""" NERDtree settings"""""""""""""""
let NERDTreeWinPos='left'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

""""""""""""""taglist设置"""""""""""""""""
map <F4> : Tlist<CR>  ""按下F4就可以呼出了
let Tlist_Auto_Open = 1  "在启动VIM后，自动打开taglist窗口
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置
let Tlist_Use_Right_Window=1 " 1为让窗口显示在右边，0为显示在左边
let Tlist_Show_One_File=1
"让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim
"let Tlist_Use_SingleClick= 1    "缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理
let Tlist_WinWidth=30
"show the fold indicator column in the taglist window
let Tlist_Enable_Fold_Column=1
"Automatically update the taglist to include newly edited files
let Tlist_Auto_Update=1


"""""""""""" syntastic语法检查配置part1 """"""""""""
"let g:syntastic_check_on_open = 1
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
"let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
"
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'

"""""""""""" syntastic语法检查配置part2 """"""""""""
let g:syntastic_check_on_open = 1
"set error or warning signs
let g:syntastic_error_symbol = '!'
let g:syntastic_warning_symbol = '>'
"let g:syntastic_enable_balloons = 1

"let g:loaded_syntastic_c_gcc_checker = 1
let g:syntastic_c_checkers = ['gcc', 'make']
let g:syntastic_c_include_dirs = ['/usr/include']
"let g:syntastic_c_config_file = ['']
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_c_compiler = 'gcc'
"let g:syntastic_c_compiler_options = '-I/home/wu/workspace/kernel/linux-2.6.22.with_yaffs20070816/include'
"let g:syntastic_enable_signs=1


""""""""""""OmniCppComplete自动补全""""""""""""""""""""
let OmniCpp_MayCompleteDot = 1   " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
" 自动补全配置让Vim补全菜单行为跟IDE一致
set completeopt=longest,menu

"""""""""""""echofunc显示函数原型"""""""""""""
"let g:EchoFuncKeyNext='<C-=>'
"let g:EchoFuncKeyPrev='<C-->'
"let g:EchoFuncKeyNext='<Esc>+'
"let g:EchoFuncKeyPrev='<Esc>-'
let g:EchoFuncKeyPrev='<C-b>'	"Ctrl和b，跳转到上一个函数原型
let g:EchoFuncKeyNext='<C-n>'	"Ctrl和n，跳转到下一个函数原型



" YouCompleteMe自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
