#!/bin/bash
xclip ~/Documents/.github.key
git push
echo "No key here" | xclip -selection c
