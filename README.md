# Linnil1's config

Env: Ubuntu 22.04

TL;DR
```bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    tree htop zfsutils-linux acl make cmake build-essential net-tools curl wget \
    ufw podman tmux zsh git vim-gtk
sudo timedatectl set-timezone Asia/Taipei

git clone https://github.com/linnil1/MyDotFiles
cd MyDotFiles

## ssh
# `/etc/ssh/sshd_config` must have
# Port 22   # change to whatever port you want
# PubkeyAuthentication yes
# PasswordAuthentication no
# client
ssh-keygen -t ed25519 -f ~/.ssh/mysshkey
ssh-copy-id -i ~/.ssh/mysshkey.pub -p [PORT] [USER]@[URL]
ln -s $PWD/sshconfig ~/.ssh/config
# server
sudo systemctl restart ssh

# ufw: easy firewall
sufo ufw allow 22
sudo ufw limit 22
sudo ufw enable
sudo ufw status

# podman: An rootless docker alternative
mkdir -p ~/.config/containers/
ln -s $PWD/storage.conf ~/.config/containers/storage.conf
podman system info
sudo apt install python3-pip  # If you want to install podman-compose in system level, other use conda install (below session)
pip install -U podman-compose
podman-compose version

# zsh, oh-my-zsh: Alternative for bash
ln -s $PWD/zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# my candy-link theme
ln -s $PWD/linnil1.zsh-theme ~/.oh-my-zsh/themes/linnil1.zsh-theme
# Another plugin
# https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df
zsh
# some useful bulid-in command: gst, glols, tn, ta

# tmux: terminal multiplexers with vim like key-binding
ln -s $PWD/tmux.conf ~/.tmux.conf
tmux
<C-A>I  # ctrl+A + I  to install plugins
# and install this plugin https://github.com/thewtex/tmux-mem-cpu-load/ in $HOME/.tmux/tmux-mem-cpu-load

# git:
ln -s $PWD/gitconfig ~/.gitconfig
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
git config --global user.signingkey <key>
git config --global user.email "you@example.com"
# Don't forget to add the key in Github https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
ssh-keygen -t ed25519 -f ~/.ssh/github
# And add sshkey in Github https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
git version

# vim-gtk: vim with clipboard
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $PWD/vimrc ~/.vimrc
vim +PluginInstall +qall

# conda: A environment manager
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -p $HOME/.conda
ln -s $PWD/condarc ~/.condarc
conda create -n test python=3.11
conda activate test
python3 --version
```