#! /bin/bash

saveDir="ttl"
mkdir ttl 
cp turtle.sh ttl/
cp prefixes.txt ttl/
mv src/ ttl/
cp criteria.sh ttl/
cp mmd.sh ttl/
cp rename_png.sh ttl/

for file in *.csv ; do
	csvcut -c 2-7 "$file" > temp && mv temp "$file" ;
    bname=$(basename "$file" .csv)
    saveName="${saveDir}/${bname}.csv"
    csvcut -c 6 "$file" > temp && mv temp "$saveName" ;
    csvformat -T  -Q "|" "$saveName" > temp && mv temp "$saveName" ;
	sed -n 2,1000p "$saveName" > temp && mv temp "$saveName" ;
	sed -i -E 's/\|//g' "$saveName" ;
	mv "$saveName" "${saveName%.csv}.ttl"
	csvcut -c 1-5 "$file" > temp && mv temp "$file"
done