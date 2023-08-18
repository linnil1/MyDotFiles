set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" linnil1 settings
Plugin 'preservim/nerdtree'
Plugin 'leafOfTree/vim-vue-plugin'
Plugin 'digitaltoad/vim-pug'
" Plugin 'flebel/vim-mypy'
Plugin 'mg979/vim-visual-multi'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-python/python-syntax'
Plugin 'cespare/vim-toml'
#Plugin 'mattn/emmet-vim'
#Plugin 'plasticboy/vim-markdown'
#Plugin 'sudar/vim-arduino-syntax'
#Plugin 'terryma/vim-multiple-cursors'
#Plugin 'Valloric/YouCompleteMe'
#Plugin 'davidhalter/jedi-vim'

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
syntax on

let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html', 'pug'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}
let g:python_highlight_all = 1

" set clipboard=unnamed
set clipboard=unnamedplus
set shiftwidth=4
set tabstop=4
set expandtab
set number
set paste
set ignorecase
imap kj <esc>
map PP "+p
map YY "+y
map K i<enter><esc>
set encoding=utf-8
autocmd BufNewFile,BufRead *.ipy set filetype=python
autocmd BufNewFile,BufRead *.cwl set filetype=yaml
