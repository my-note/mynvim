"----vim 个人使用习惯配置start------
set encoding=UTF-8
" leader设置成空格
let mapleader=","
" 使用鼠标a启用 c禁用
set mouse=c
" 显示行号
set nu
" 相对行号
set relativenumber
" tab=4个空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
" 高度光标所在行
"set cursorline
" 设置换行
set wrap
" 显示按下的按键
set showcmd
" 按tab显示菜单
set wildmenu
" 不需要备份文件
set nobackup

set nrformats=   "把所有的数字当成十进制，不管是否是0开头



syntax on    "支持语法高亮显示
syntax enable
filetype on
filetype plugin on
filetype plugin indent on " 启用根据文件类型自动缩进
set nocompatible  "防止进入vi兼容模式
set autoindent "开始新行时处理缩进
set smartindent                                      "开启新行时使用智能自动缩进
" set breakindent
set expandtab "将制表符tab展开为空格
set backspace=2 "在多终端上修正退格键Backspace的行为


" 为了避免交换文件污染文件系统
set directory=$HOME/.local/share/nvim/swap//     
set undodir=$HOME/.vim/undodir
set undofile
set autowrite " Automatically save before :next, :make etc.


" 补全菜单zsh格式
set wildmode=full


" 查找忽略大小写
set ignorecase
" 只要由一个大写就大小写匹配，如果全是小写就忽略大小写
set smartcase
set incsearch


set shortmess+=c
" TextEdit might fail if hidden is not set.
set hidden
set updatetime=300

set conceallevel=0

" augroup markdown_autocmd
"     autocmd!
"     autocmd FileType markdown set hls incsearch
"     autocmd FileType markdown set foldmethod=manual
"     autocmd FileType markdown set foldenable
" augroup END


" augroup pandoc_syntax
"     au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" augroup END

" augroup pandoc_syntax2
"     autocmd! FileType vimwiki set syntax=markdown
" augroup END
