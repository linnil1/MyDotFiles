#!/bin/sh

# Oh My Zsh and tmux
sudo apt-get install powerline tmux
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -O ~/.oh.my-zsh/themes/bullet-train.zsh-theme

# copy Configuration to home dir
for f in *
do
    if [ "$f" != "README.md" ] && [ "$f" != "run.sh" ]; then
        cp $f ~/.$f
        echo copy $f to "~/.$f"
    fi
done

# vim
sudo apt install git vim-gnome
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

# You complete Me
cd ~/.vim/bundle/YouCompleteMe
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
#sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"

# docker compose
## https://docs.docker.com/compose/install/#master-builds
## update version usually
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
