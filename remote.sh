#!/bin/bash
green='\E[32m'
red='\E[31m'
blue='\E[34m'
normal='\E[m'
localip='192.168.0.12'
echo "Select a server:"
echo -e "  ${green}[1]${normal} DigitalOcean Server (Ubuntu 14.04 LAMP, SSH tunnel on 9999)"
echo -e "  ${green}[2]${normal} Home Server Remote (Ubuntu 14.04 LAMP, SSH tunnel on 9999)"
echo -e "  ${green}[3]${normal} Home Server Local (Ubuntu 14.04 LAMP)"
echo -e "  ${green}[4]${normal} Exit"
echo -en "Select Option: "
read servernum
case $servernum in
1)
	ssh -D 9999 william@forensicsdb.com
	;;
2)
	ssh -D 9999 -p 1222 master@bus.opfoolbird.com
	;;
3)
	ssh master@$localip
	;;
4)
	;;
*)
	echo "Invalid option"
	;;
esac
tput sgr0
