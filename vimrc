" Create symlink to this file from home folder

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE (PACKAGE MANAGING)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off " Temporarily turn off while setting up Vundle

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Packages
Bundle 'gmarik/vundle'
Bundle 'ivanov/vim-ipython'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Where to put new windows when splitting
set splitright
set splitbelow

" Formatting (highlighting, numbers, etc.)
syntax on
set number

" Tab behavior
set tabstop=4
set shiftwidth=4

" Filetype specific scripts stored in ~/.vim/ftplugins/<filetype>.vim
filetype plugin on

" Automatically update changed files
set autoread

" Bash-like autocompletion for Ex-mode
set wildmode=longest,list

" Zsh-like autocompletion for Ex-mode
" set wildmenu
" set wildmode=full

" Allows hiding a changed buffer. Convenient if using argdo.
set hidden

" Enables mouse for resizing windows and visual selection amongst others
" One problem is that Ctrl+Shift+C/V cannot be used to copy-past to/from
" system clipboard.
" set mouse=a

" For system clipboard to work in vim (not through console but through vim
" itself, e.g. the registers + and *), one must have vim installed with gtk
" support. In arch linux this is the package gvim (which also includes gvim)

" set grepprg=grep\ -n\ $*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY BINDINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <C-p> and <C-n> can be used as previous/up or next/down in command line
" mode, but unlike up/down it doesn't filter the results such that it begins
" with what you've already written. This maps they keys to be identical.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <C-h> <C-W><C-h>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

" Find letters forward with ø
" noremap ø ;
