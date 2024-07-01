#!/usr/bin/bash

# Install essential software for suckless tools, assumes Debian
sudo apt install cmake libx11-dev libxft-dev libxinerama-dev arandr -y

# Clone dwm, st, demnu and surf
## Make sure gits directory exists
mkdir -p ~/Documents/gits
cd ~/Documents/gits

## Clone repos
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu

## Put headers in place

## Put desktop session in place
sudo cp dwm.desktop /usr/share/xsessions/

