#!/bin/bash

# Check if 7z is installed
if ! command -v 7z &> /dev/null
then
    echo "7z could not be found"
    exit
fi

# If 7z is installed, zip the folders
echo "7z is found, zipping the folders"
7z a -tzip pak009.pk4 def materials particles skins sound textures