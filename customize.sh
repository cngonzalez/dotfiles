# restore bash profile
cp ./.bash_profile ~/.bash_profile
cp ./.tmux.conf ~/.tmux.conf
cp ./.vimrc ~/.vimrc
source ~/.bash_profile
#vim -E -s -u $HOME/.vimrc +PlugInstall +qall
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall

