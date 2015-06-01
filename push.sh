#!/bin/bash
xclip ~/Documents/.github.key$1 -selection c
git pull
git push
echo "No key here" | xclip -selection c
