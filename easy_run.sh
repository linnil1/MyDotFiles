# basic
sudo apt install -y tmux git vim-gnome

# copy
for f in *; do
    if [ "$f" != "README.md" ] && [ "$f" != "run.sh" ] && [ "$f" != "easy_run.sh" ] ; then
        cp $f ~/.$f
        echo copy $f to "~/.$f"
    fi
done
