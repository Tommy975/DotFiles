"	VIM 
" Not to remove
"
runtime! archlinux.vim

"	Start Pathogen
"
"execute pathogen#infect()

"	Autre
"
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
filetype plugin indent on

au BufNewFile,BufRead *.cpp,*.h
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set smarttab |
    \ set fileformat=unix

au BufNewFile,BufRead *.py,*.pyw,
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set smarttab |
    \ set fileformat=unix 

"au BufNewFile *.py,
"    \ call append(0,'#!/usr/bin/env python')   
"au BufWritePost *.py,
"    \ silent execute  ! chmod u+x %"

au BufNewFile,BufRead *.js,*.html,*.css,*.php,
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set smarttab |
    \ set fileformat=unix 

let g:closetags_filnames='*.xml, *.html, *.xhtml'

au BufNewFile *.php, 
    \ call append(0, '<?php ') |
    \ call append(3, '?>')

" YouCompletMe set up
let g:ycm_python_binary_path = '/usr/lib64/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let python_highlight_all=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join( project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


" UTF8 support
set encoding=utf-8

" Add line numbers
set number

" Enable mouse usage
set mouse=a

" Enable copypaste from outside of vim with Ctrl+Shift+c/v
"set paste


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Fermetur automatic parenthèse...

let g:AutoPairsFlyMode = 1

" ==================================================================================

"       VUNDLE
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
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" Python plugins/config
" Auto-indent
Plugin 'vim-scripts/indentpython.vim'
" Auto-completion
Bundle 'Valloric/YouCompleteMe'
" automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'jiangmiao/auto-pairs' 
" Folding blocks of code
Plugin 'tmhedberg/SimpylFold'
" Check syntax
Plugin 'scrooloose/syntastic'


" NERDTree
Plugin 'scrooloose/nerdtree'


" Endings for html, xml ...
Plugin 'alvan/vim-closetag'
"Plugin 'tpope/vim-endwise'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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

" =========================================================================================

