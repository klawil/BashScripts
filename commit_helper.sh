#!/bin/bash
IFS=$'\n'
initloop=true
files=$(git status | grep \: | sed s/^.*modified\:\ */m\ \-\ / | sed s/^.*deleted\:\ */r\ \-\ /)
for x in $files; do
	if ( $initloop ); then
		initloop=false
	else
		echo $x | xclip -selection c
		echo $x
		case $(echo $x | sed s/^r.*//) in
			"")
				echo "Deleted"
				;;
			*)
				rname=$(echo $x | grep -o [^\ ]*$)
				git diff $rname
				;;
		esac
		read -n 1
	fi
done
