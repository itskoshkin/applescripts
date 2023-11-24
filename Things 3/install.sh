#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Error: Folder not specified!"
	echo "Usage: bash $0 path_to_folder"
	echo "(Just drag'n'drop it)"
	exit 1
fi

base_path=~/Library/Containers/com.culturedcode.ThingsMac/Data/Library/Application\ Support

cd "$base_path"
mkdir -p Cultured\ Code

if [ -e "$base_path/Cultured Code/Things Scripts" ]; then
	echo "Error: Destination folder already contains data!"
	exit 1
fi

echo "Moving folder with scripts..."
cd Cultured\ Code
mv "$1" "Things Scripts" 2>/dev/null

echo "Success: Scripts installed, now relaunch Things."