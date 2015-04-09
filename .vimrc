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

