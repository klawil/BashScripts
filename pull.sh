#!/bin/bash
xclip ~/Documents/.github.key -selection c
git pull
echo "No key here" | xclip -selection c
