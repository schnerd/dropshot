#!/bin/bash

# Moves latest OSX screenshot to Dropbox Public folder and copies public URL to clipboard
cd ~/Desktop
sso=$(ls -t | head -n1)
uuid=$(cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
mv "$sso" ~/Dropbox/Public/ss/${uuid}.png
echo "https://dl.dropboxusercontent.com/u/00000000/ss/${uuid}.png" | pbcopy
