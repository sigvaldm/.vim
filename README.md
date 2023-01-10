# .vim
My personal Vim/NeoVim configuration

Installation:
```
conda env create
cd ~
git clone --recursive https://github.com/sigvaldm/.vim # recursive is important
ln -s .vim/.vimrc .vimrc # For Vim
ln -s ~/.vim/init.vim .config/nvim/init.vim # For NeoVim
vim +PluginInstall +qa!
```
Then,
```
conda activate vim
which python
```
Open `.vimrc` and update the path on the following line:
```
let g:python3_host_prog = '~/miniconda3/envs/vim/bin/python'
```

## Summary of functionality and customizations

### IntelliSense

#### jedi-vim

- `K` See docstring
- `\d` Go to definition
