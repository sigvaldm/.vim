" Sigvald Marholm's personal vim settings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE (PACKAGE MANAGING)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off " Must be off while setting up Vundle

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Packages
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/nerdtree-tabs'
" Plugin 'scrooloose/nerdtree-git-plugin'
" Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'godlygeek/tabular'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'NLKNguyen/papercolor-theme'
" Plugin 'sigvaldm/vim-ipython'
Plugin 'nelstrom/vim-visual-star-search'
" Plugin 'vim-latex/vim-latex'
" Plugin 'xuhdev/vim-latex-live-preview'
" Plugin 'kana/vim-textobj-user'
" Plugin 'kana/vim-textobj-lastpat' " Didn't work
Plugin 'yegappan/mru'
" Plugin 'puremourning/vimspector'
Plugin 'psf/black'
Plugin 'dense-analysis/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'deoplete-plugins/deoplete-jedi'
" Plugin 'Shougo/ddc.vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:ale_completion_enabled = 1
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let g:python3_host_prog = '~/miniconda3/envs/vim/bin/python'
" let g:python3_host_prog = '~/.vim/python'


let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

set hlsearch
set incsearch

" Correct cursor in Cygwin
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set background=light
silent! colorscheme PaperColor

let python_highlight_all=1

" Where to put new windows when splitting
set splitright
set splitbelow

" Formatting (highlighting, numbers, etc.)
syntax on
set number

" Default tab behavior
set tabstop=4
set shiftwidth=4
set expandtab

" Text width behaviour
set textwidth=80
set colorcolumn=+1
set nowrap

" Prevents automatic text-break when hitting text-width
set formatoptions-=t

" Use system clipboard
set clipboard=unnamed

" Automatically update changed files
set autoread
au CursorHold * checktime

" Bash-like autocompletion for Ex-mode
set wildmode=longest,list

" Zsh-like autocompletion for Ex-mode
" set wildmenu
" set wildmode=full

" Allows hiding a changed buffer. Convenient if using argdo.
set hidden
set ignorecase

" Enables mouse for resizing windows and visual selection amongst others
" One problem is that Ctrl+Shift+C/V cannot be used to copy-past to/from
" system clipboard.
set mouse=a

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

" Navigate between windows
nnoremap <C-h> <C-W><C-h>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

" nnoremap <f5> :!ctags -R<CR>

" Find letters forward with ø
" noremap ø ;

nnoremap <Leader>t :Tab /
vnoremap <Leader>t :Tab /

nnoremap <Leader>r :MRU<CR>

nnoremap <Leader>m :w \| make<CR>
nnoremap <space> za

" Mappings for vim-unimpaired, etc.
" (The < and > are used for indentation)
nmap ø [
omap ø [
xmap ø [
nmap æ ]
omap æ ]
xmap æ ]

nmap å `

nnoremap <esc><esc> :noh<CR>

inoremap <F2> <esc>:r !date +"\%Y-\%m-\%d \%A (W\%W)"<CR>A
