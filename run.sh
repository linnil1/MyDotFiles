#!/bin/sh

# Oh My Zsh and tmux
sudo apt install -y zsh powerline
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -O ~/.oh-my-zsh/themes/bullet-train.zsh-theme

# copy Configuration to home dir
./easy_run.sh

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# go
wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# python package
sudo apt install -y python3-venv python3-pip
mkdir -p Python
cd Python
python3 -m venv env
source ~/Python/env/bin/activate
pip3 install numpy scipy matplotlib torch pandas requests flask lxml
cd ..

# You complete Me
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer --go-completer
cd ~

# docker
## https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs)\
   stable"
