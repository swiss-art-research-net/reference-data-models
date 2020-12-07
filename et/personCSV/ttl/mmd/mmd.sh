#! /bin/bash

saveDir="/mnt/mmd/png/"
mkdir png 
mv rename_png.sh png/

for file in *.mmd ; do

	bname=$(basename "$file" .png)
    saveName="${saveDir}/${bname}.png"

    docker run -v ${PWD}:/mnt/mmd minlag/mermaid-cli:8.7.0 -i /mnt/mmd/"$file" -o "$saveName" -s 3
    
done

 