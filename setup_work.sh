#!/bin/bash
cd /var/www/html/ForensicsDatabase
screen -dmS CheckCSS sass --watch Styles.scss:Styles.css
