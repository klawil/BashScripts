#!/bin/bash
y=".git"
olddir=$PWD
for x in $(sudo find / -name ".git"); do
	dir=${x%$y}
	echo $dir
	cd $dir
	git commit
done
cd $olddir
