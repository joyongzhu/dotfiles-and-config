"++++++++++++++++++++++++++++++++++++++++++
"               基本设置
"++++++++++++++++++++++++++++++++++++++++++
" 打开文件类型检测 "
filetype on
" 打开语法高亮显示 "
syntax on 
set nocompatible
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set autoindent
set autoread
set incsearch
set mouse-=a
set number
"相对行号
"set rnu
set cmdheight=1
set smartindent
set ignorecase
set smartcase
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set ignorecase
set title
set cursorline
set shortmess=atI
set nowrap
set backspace=indent,eol,start
set ruler


"+++++++++++++++++++++++++++
"       高级设置
"+++++++++++++++++++++++++++
"主题
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme molokai

"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
highlight YcmErrorLine guibg=#EEE8D5
highlight SyntasticErrorLine guibg=#EEE8D5

"真彩色
"set tgc
set showmatch

let mapleader=';'

set hlsearch


let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"+++++++++++++++++++++++++++++++++++++
"			插件管理
"+++++++++++++++++++++++++++++++++++++
call plug#begin('~/.vim/plugged')
"自动补全内容（关键字、函数等）
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
"自动补全符号
Plug 'Raimondi/delimitMate'
Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'
"solarized主题， 只支持gvim, macvim
"Plug 'altercation/vim-colors-solarized'
"Plug 'scrooloose/syntastic'
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'
"Plug 'majutsushi/tagbar'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'elzr/vim-json'
"Plug 'vim-scripts/a.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'kien/ctrlp.vim'
"Plug 'mattn/emmet-vim'
"Plug 'godlygeek/tabular'
"Plug 'tpope/vim-surround'
"Plug 'rking/ag.vim'
"Plug 'tpope/vim-repeat'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'posva/vim-vue'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'dyng/ctrlsf.vim'

call plug#end()



"+++++++++++++++++++++++++++++++++++++++
"            插件设置
"+++++++++++++++++++++++++++++++++++++++

"-----------
"YouCompleteMe
"-----------

"寻找全局配置文件
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" 禁用syntastic来对python检查
"let g:syntastic_ignore_files=[".*\.py$"]
" 开启语义补全
let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT+G，未测出效果
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> 
"关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 在接受补全后不分裂出一个窗口显示接受的项
set completeopt-=preview
" 让补全行为与一般的IDE一致
set completeopt=longest,menu
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" 每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0
" 在注释中也可以补全
let g:ycm_complete_in_comments=1
" 输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_string = 1
" 错误标识符
let g:ycm_error_symbol='>>'
" 警告标识符
let g:ycm_warning_symbol='>*'
" 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=0
"YCM自动检错的错误部分不高亮显示
let g:ycm_enable_diagnostic_highlighting = 0


"-----------
"molokai
"-----------
let g:molokai_original = 1

"-----------
"vim-colors-solarized
"-----------

"设置颜色为256，默认为16
"let g:solarized_termcolors=256
"设置背景色透明，使用终端的背景色
"let g:solarized_termtrans=0

"-----------
"delimitMate
"-----------
let g:delimitMate_expand_cr = 1


"-------------
" vim markdown
"-------------
let g:vim_markdown_folding_disabled = 1

