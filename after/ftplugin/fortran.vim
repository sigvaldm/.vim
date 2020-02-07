setlocal textwidth=80
setlocal formatoptions-=t

" Tab behaviour
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

" Fortran stuff
let fortran_free_source=1
" let fortran_more_precise=1

" so %:p:h/fortran_abbr.vim
" let path = expand('%:p:h')
" exec 'source' path . '/fortran_abbr.vim'
so ~/.vim/after/ftplugin/fortran_abbr.vim
