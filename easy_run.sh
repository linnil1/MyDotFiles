# basic
sudo apt install -y tmux git vim-gtk htop cmake
sudo ln -s /usr/bin/python3 /usr/bin/python

# copy
for f in *; do
    if [ "$f" != "README.md" ] && [ "$f" != "run.sh" ] && [ "$f" != "easy_run.sh" ] ; then
        cp $f ~/.$f
        echo copy $f to "~/.$f"
    fi
done
