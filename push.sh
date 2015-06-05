#!/bin/bash
xclip ~/Documents/.github.key -selection c
git pull
git push
echo "No key here" | xclip -selection c
