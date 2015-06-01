#!/bin/bash
xclip ~/Documents/.github.key$1 -selection c
git pull
echo "No key here" | xclip -selection c
