#!/bin/bash
if [ "$(whoami)" == "root" ]; then
	echo "Installation Starts..."
    sleep 1
	echo "Progress : %10"
    sleep 0.5
	echo "Progress : %25"
	sleep 0.5
	echo "Progress : %40"
	sleep 0.5
	echo "Progress : %60"
	sleep 0.5
	echo "Progress : %85"
	sleep 0.5
	echo "Progress : %100"
	sleep 0.5
	echo "Setup Complete."
	sleep 0.5

	rm -rf .git/
	rm -rf .github/
	rm -rf README.md

	mkdir -p /opt/xfce-dynamic-wallpaper/
	yes | cp -rf src/backgrounds/ /opt/xfce-dynamic-wallpaper/

	g++ src/main.cpp -o /opt/xfce-dynamic-wallpaper/xfce-dynamic-wallpaper

	mkdir -p /home/$SUDO_USER/.config/autostart/
	yes | cp -rf src/autostart.desktop /home/$SUDO_USER/.config/autostart/xfce-dynamic-wallpaper.desktop

	echo "Please restart the computer !"        
else
    echo "Root authority is required for this program to work !!"
fi

# 😀️