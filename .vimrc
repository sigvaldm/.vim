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
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'sigvaldm/vim-ipython'
Plugin 'nelstrom/vim-visual-star-search'
" Plugin 'vim-latex/vim-latex'
" Plugin 'xuhdev/vim-latex-live-preview'
" Plugin 'kana/vim-textobj-user'
" Plugin 'kana/vim-textobj-lastpat' " Didn't work
if v:version > 705
	Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For vim-airline, install powerline-fonts from pacman and use it with this
" line
" let g:airline_powerline_fonts = 0

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" command Python python3
command! -nargs=+ Python python3 <args>

" set foldmethod=indent
" set foldlevel=0

" let g:airline#extensions#tabline#enabled = 1

set hlsearch
set incsearch

" autocmd Filetype tex setl updatetime=1
" let g:livepreview_previewer = 'evince'

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/
" set encoding=utf-8
" if has('gui_running')
"   set background=dark
"   colorscheme solarized
" else
"   colorscheme zenburn
" endif

set background=light
silent! colorscheme PaperColor
let g:airline_theme='papercolor'

let python_highlight_all=1

" Where to put new windows when splitting
set splitright
set splitbelow

" Formatting (highlighting, numbers, etc.)
syntax on
set number

" Tab behavior
set tabstop=4
set shiftwidth=4

set textwidth=80
set colorcolumn=+1

set clipboard=unnamed

" Automatically update changed files
set autoread

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

" Swap windows
" nnoremap <C-r> <C-W><C-r>

" nnoremap <f5> :!ctags -R<CR>

" Find letters forward with ø
" noremap ø ;

nnoremap <Leader>t :Tab /
vnoremap <Leader>t :Tab /

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
