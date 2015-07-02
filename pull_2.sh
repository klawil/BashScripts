#!/bin/bash
cat ~/.github.key
git pull
echo "No key here" | xclip -selection c
