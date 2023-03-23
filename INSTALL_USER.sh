#!/bin/bash
echo "Installation Starts... as user $USER into $HOME/.xfce-dynamic-wallpaper/"
sleep 1

mkdir -p $HOME/.xfce-dynamic-wallpaper/
yes | cp -rf src/backgrounds/ $HOME/.xfce-dynamic-wallpaper/

cp src/xfce-dynamic-wallpaper.sh $HOME/.xfce-dynamic-wallpaper/
chmod 755 $HOME/.xfce-dynamic-wallpaper/xfce-dynamic-wallpaper.sh

mkdir -p $HOME/.config/autostart/
yes | cp -rf src/autostart.desktop $HOME/.config/autostart/xfce-dynamic-wallpaper.desktop

echo "Please restart the x session or computer !"        

# 😀️
