#!/bin/bash
path="/home/username/Desktop/GitBois/MyDrive" # Replace this with the path to your git repository. To get path, run pwd in the directory or right click and select properties of the folder  
while true 
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write $path > /dev/null &> /dev/null
	cd $path > /dev/null &> /dev/null
	git add --all > /dev/null &> /dev/null
	git commit -m "Auto-Commit at : " &> /dev/null
	git pull > /dev/null &> /dev/null
	git push -u origin master > /dev/null &> /dev/null
done