#!/bin/sh

# Oh My Zsh and tmux
sudo apt install -y zsh powerline
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -O ~/.oh-my-zsh/themes/bullet-train.zsh-theme

# copy Configuration to home dir
./easy_run.sh

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

# You complete Me
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
sudo apt install -y cmake
python3 install.py --clang-completer
cd ~

# docker
## https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#for ubuntu 1804
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"
