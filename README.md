# Something need install 

sudo apt install vim-gnome
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim :PluginInstall

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme ~/.oh.my-zsh/themes
sudo apt-get install powerline
# logout and login again and you can see the result

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer

# .gitconifg is from
# https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs

