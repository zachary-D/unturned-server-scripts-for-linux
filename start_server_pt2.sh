#!/bin/bash

SERVER_NAME=$1
SCREEN_NAME=$2

servers_dir=~/unturned_server_files/Rocket/Servers/

custom_scripts_location="$servers_dir$SERVER_NAME/custom_scripts"

if [ -d $custom_scripts_location ]
then
	echo "custom_scripts directory found.  Checking for scripts."
	cd $custom_scripts_location
	if [ -f pre-launch.sh ]
	then
		echo "pre-launch.sh found.  Executing..."
		./pre-launch.sh
	fi
else
	echo "custom_scripts directory not present.  Skipping."	
fi

cd ~/unturned_server_files/Rocket/Scripts
./start.sh $SERVER_NAME
