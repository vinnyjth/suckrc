set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sjl/gundo.vim'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai 
syntax enable
let g:indent_guides_enable_on_vim_startup = 1
let g:ctrlp_map = '<c-p>'
set tabstop=2
set softtabstop=2
set expandtab
set guifont=Sauce\ Code\ Powerline\ Light:h15

set number 
set cursorline 
set laststatus=2

filetype indent on
set wildmenu
set showmatch

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10

set swapfile
set dir=~/tmp

nnoremap <F5> :GundoToggle<CR>

set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

