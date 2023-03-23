#!/bin/bash

#This can be a problem if display is not the default
export DISPLAY=:0

#Theme management
THEME=default
if [ -n "$1" ]
then
	THEME=$1
fi

#main loop
while true
do
	#Query about the workspaces
	WORKSPACES=$( xfconf-query -c xfce4-desktop -l -R | grep last-image )

	#For all workspaces in xfce ...
	for WORKSPACE in $WORKSPACES
	do
		#Get hour and use as dynamic bg
		HOUR=$(date '+%k')
		BACKGROUND="$HOME/.xfce-dynamic-wallpaper/backgrounds/$THEME-$HOUR.jpg"
		xfconf-query -c xfce4-desktop -p "$WORKSPACE" -s "$BACKGROUND"
	done

	#Wait until o'clock
	WAITSECS=$(((60-$(date '+%_M'))*60))
	sleep $WAITSECS

done
