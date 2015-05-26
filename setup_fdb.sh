#!/bin/bash
# Script to setup my dev environment

# Open google chrome in workspace 1
wmctrl -o 0,0
nohup google-chrome localhost &

# Create a new bash window in workspace 2
wmctrl -o 1366,0
gnome-terminal --working-directory=/var/www/html/ForensicsDatabase --maximize

# Create a new bash window in workspace 4
wmctrl -o 1366,768
gnome-terminal --working-directory=/var/www/html/ForensicsDatabase --maximize

# Create a new bash window in workspace 3
wmctrl -o 0,768
gnome-terminal --maximize -e "tail -f /var/log/apache2/error.log"

# Focus on workspace 1 then exit
wmctrl -o 0,0
