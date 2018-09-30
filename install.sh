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

