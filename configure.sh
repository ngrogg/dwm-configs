#!/usr/bin/bash

# Install essential software for suckless tools, assumes Debian
sudo apt install cmake libx11-dev libxft-dev libxinerama-dev arandr -y

# Clone dwm, st, demnu and surf
## Make sure gits directory exists
mkdir -p ~/Documents/gits
cd ~/Documents/gits

## Clone repos
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/dwm
git clone git@github.com:ngrogg/dwm-configs.git
git clone https://git.suckless.org/st

## Put headers in place
cp dwm-configs/headers/dmenu/config.h dmenu/
cp dwm-configs/headers/dwm/config.h dwm/
cp dwm-configs/headers/st/config.h st/

## Put desktop session in place
sudo cp dwm.desktop /usr/share/xsessions/

## Place xprofile
cp xprofile ~/.xprofile

## Compile software
for i in dmenu dwm st; do cd $i; sudo make clean install; cd ..; done
