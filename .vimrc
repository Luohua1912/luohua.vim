set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.                                                                                                                                                                       
" Pass the path to set the runtimepath properly.                                                                                                                                                                                             
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}                                                                                                                                                                                                   
" Install L9 and avoid a Naming conflict if you've already installed a                                                                                                                                                                       
" different version somewhere else.                                                                                                                                                                                                          
" Plugin 'ascenator/L9', {'name': 'newL9'}                                                                                                                                                                                                   
                                                                                                                                                                                                                                             
" All of your Plugins must be added before the following line                                                                                                                                                                                
call vundle#end()            " required                                                                                                                                                                                                      
filetype plugin indent on    " required                                                                                                                                                                                                      
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
"
"
"
"
"
"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dracula/vim'
Plugin 'joshdick/onedark.vim'
"""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
Plugin 'henrynewcomer/vim-theme-papaya'
Plugin 'w0rp/ale'
Plugin 'severin-lemaignan/vim-minimap'



set t_Co=256                ""设置256色

""""""""""""
colorschem seti
"set background=dark
"autocmd ColorScheme dracula highlight Normal ctermbg=235


"""""""""""""


""""""""""""""""""""""""""""
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" 输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" att + / 触发补全
let g:ycm_key_invoke_completion = '<C-a>'

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

autocmd InsertLeave * if pumvisible() == 0|pclose|endif         "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项


"""""""""""""""""""""""""""""""""""""""""
""""快捷键映射""""
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
map mm :Minimap<CR>
map mc :MinimapClose<CR>



"""""""""""""""""""""""""""""""""""""""
set encoding=utf-8                       "使用utf-8编码
set number                               "显示行号
set showcmd                              "显示输入命令
set clipboard=unnamed,unnamedplus        "可以从vim复制到剪贴版中
set mouse=a                              "可以在buffer的任何地方使用鼠标
set cursorline                           "显示当前行
set hlsearch                             "显示高亮搜索
set incsearch
set history=100                          "默认指令记录是20
set ruler                                "显示行号和列号（默认打开)
set pastetoggle=<F3>                     "F3快捷键于paste模式与否之间转化，防止自动缩进
set helplang=cn                          "设置为中文帮助文档,需下载并配置之后才生效
set shortmess=atI                        " 启动的时候不显示那个援助乌干达儿童的提示
syntax on                                " 语法高亮
autocmd InsertEnter * se cul             "用浅色高亮当前行
set showcmd                              " 输入的命令显示出来，看的清楚些
set foldenable                           " 允许折叠
set foldmethod=manual                    " 手动折叠


"""""NerdTree"""
"autocmd vimenter * NERDTree

"""""""""""
"""""""""""
"""ale插件"""
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
"let g:ale_sign_column_always = 0   ""总是检查
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查


"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}


let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

"文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 'never'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save =1
""""""""""""
""""""""""""
""""""""""""
hi String ctermfg=255 ctermbg=135
hi LinerNr ctermfg=90 ctermbg=0 




"MiniMap"



