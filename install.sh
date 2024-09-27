cd ~
git clone --recursive https://github.com/sigvaldm/.vim # recursive is important
ln -s .vim/.vimrc .vimrc # For Vim
ln -s .vim/init.vim ${XDG_CONFIG_HOME:-~/.config}/nvim/init.vim # For NeoVim
ln -s ~/.vim/coc-settings.json ~/.config/nvim/coc-settings.json
vim +PluginInstall +qa!
cd .vim
# conda env create
# conda activate vim
# PYTHON=$(which python)
# ln -s $PYTHON python
