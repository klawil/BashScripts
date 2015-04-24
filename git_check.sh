#!/bin/bash
y=".git"
olddir=$PWD
for x in $(sudo find / -name ".git"); do
	dir=${x%$y}
	echo $dir
	cd $dir
	git fetch origin
	git diff origin/master
	#git commit
	#git pull --dry-run
done
cd $olddir
