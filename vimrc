set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache

let g:vim_markdown_folding_disabled = 1
let g:ycm_server_python_interpreter = '/usr/bin/python3'
"set clipboard=unnamed
set clipboard=unnamedplus
set shiftwidth=4
set tabstop=4
set expandtab
set number
set clipboard=unnamed
imap kj <esc>
map PP "+p
map YY "+y
map K i<enter><esc>
map <C-a> ggVG
set encoding=utf-8
