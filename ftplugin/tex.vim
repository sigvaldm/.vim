setlocal errorformat=%f:%l:\ %m,%f:%l-%\\d%\\+:\ %m
if filereadable('Makefile')
  setlocal makeprg=make
elseif filereadable('makefile')
  setlocal makeprg=make
else
  exec "setlocal makeprg=make\\ -f\\ ~/.vim/ftplugin/latex.mk\\ " . substitute(bufname("%"),"tex$","pdf", "")
endif

