#/bin/bash

# setup the dev folder
if [ ! -f ~/dev ]; then
	mkdir ~/dev
fi
if [ ! -f ~/dev/scripts ]; then
	mkdir ~/dev/scripts
fi
if [ ! -f ~/dev/scripts/sounds ]; then
	mkdir ~/dev/scripts/sounds
fi
cp -f ./home/dev/scripts/* ~/dev/scripts
cp -f ./home/dev/scripts/sounds/* ~/dev/scripts/sounds
sudo ln -f -s ~/dev/scripts/excuse.sh /usr/local/bin/przeproś
sudo ln -f -s ~/dev/scripts/beeppop.sh /usr/local/bin/beep
sudo ln -f -s ~/dev/scripts/fail.sh /usr/local/bin/fail.sh

# handle the .bashrc folder
if [ ! -f ~/.bash ]; then
	mkdir ~/.bash
fi
cp -f ./home/.bash/* ~/.bash/
cp -f ./home/.bashrc_aliases ~/.

# handle the tmux conf
if [ ! -f ~/.tmux ]; then
	mkdir ~/.bash
fi
cp -f ./home/.tmux/* ~/.tmux
cp -f ./home/.tmux.conf ~/.

# remove the shortcuts for switching workspaces as it conflicts with idea history jumping
# note: works for 18.04 (where there are by default only top and down workspaces)
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"
