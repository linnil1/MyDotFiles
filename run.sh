#!/bin/sh

# oh my zsh
sudo apt-get install powerline
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -O ~/.oh.my-zsh/themes/bullet-train.zsh-theme

# copy configuration to home dir
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
