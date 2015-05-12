#!/bin/bash
green='\E[32m'
red='\E[31m'
blue='\E[34m'
normal='\E[m'
localip='192.168.1.18'
basecommand="rsync --progress --log-file="/home/william/backup.log" -aizR $(cat ~/.include.rsync)"
echo "Select a server:"
echo -e "  ${green}[1]${normal} Backup to local server"
echo -e "  ${green}[2]${normal} Backup to remote server"
echo -e "  ${green}[3]${normal} Restore from local server"
echo -e "  ${green}[4]${normal} Exit"
echo -en "Select Option: "
read optionnum
case $optionnum in
1)
	$basecommand master@${localip}:/media/Files/laptop | grep --line-buffered '<\|>'
	;;
2)
	$basecommand -e 'ssh -p 1222' master@home.opfoolbird.com:/media/Files/laptop | grep --line-buffered '<\|>'
	;;
3)
	rsync -avzR master@${localip}:/media/Files/laptop /
	;;
4)
	;;
*)
	echo "Invalid option"
	;;
esac
tput sgr0
