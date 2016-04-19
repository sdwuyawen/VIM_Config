set nocompatible  "关闭vi兼容模式，可以启用方向键和Backspace
set backspace=indent,eol,start	"设置backspace键，否则无法删除

"syntax enable
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

colorscheme diy1

"手动给C函数体着色
map <F10> <Esc>:colorscheme diy1<CR>
"map <F11> <Esc>:colorscheme ccc1<CR>


"设置文本编码支持
"unix or dos file
set fileformats=unix,dos
"set vi inside coding, must be set when you use gbk or utf-8
set encoding=utf-8
"actual file encoding, will set as it except fileencodings load other
"set fileencoding=gb2312
set fileencodings=utf-bom,utf-8,gbk,gb2312,gb18030,cp936,latin1
"terminal encoding
"even if you set utf-8 in ssh client
set termencoding=utf-8"

"""""""""" mini buffer navigator"""""""""""
let g:miniBUfExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
let g:miniBufExplUseSingleClick=1

""""""""""""vundle"""""""""""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
   
" let Vundle manage Vundle
" required! 
""""""""vim scripts""""""""""""""""""
Bundle 'minibufexpl.vim'

