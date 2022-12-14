#!/bin/bash

filePath="mods.txt"
outputFolder="mods"

if [ ! -d "$outputFolder" ]; then
    mkdir "$outputFolder"
fi

while IFS= read -r link || [[ -n "$link" ]]; do
    outputPath="$outputFolder/"

    echo "Getting: $link"

    if wget --content-disposition -P "$outputPath" "$link"; then
        echo "Downloading succesfull"
    else
        echo "Error"
    fi
done < "$filePath"
