# .vim
My personal Vim configuration

Installation:
```
cd ~
git clone --recursive https://github.com/sigvaldm/.vim # recursive is important
ln -s .vim/.vimrc .vimrc
vim
```
and inside vim:
```
:PluginInstall
```
The plugin YouCompleteMe consists of a compiled part in addition to Vim script.
To compile and install this from shell:
```
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer --system-libclang
```
The `--clang-completer` flag is to get support for C-family languages through clang.
Other flags exists for Java, Rust, etc. On most systems `--system-libclang` is
unnecessary (shouldn't be used) but on e.g. Arch this must be included.
See https://github.com/Valloric/YouCompleteMe/issues/778 .
