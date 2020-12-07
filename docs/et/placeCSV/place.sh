#! /bin/bash

rm -rf criteria.sh ;
rm -rf csvcut.sh ;
rm -rf mmd.sh ;
rm -rf prefixes.txt ;
rm -rf rename_csv.sh ;
rm -rf rename_png copy.sh ;
rm -rf rename_png.sh ;
rm -rf src/ ;
rm -rf turtle.sh ;
rm -rf ttl/ ;
rm -rf *.csv ;

unzip -q script.zip
rm -rf __MACOSX

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrPgO9Cdhuwly5B5 > place_name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shraaqlXkH0vf4M76 > place_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrg38iNd4rRueHlt > place_substance.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrtXRbskT5IevS1l > place_description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrxlrQj91SCZkYvv > place_documentation.csv ;

echo "finished download"
./csvcut.sh
cd ttl/
./turtle.sh
echo "converted to RDF"
./criteria.sh
echo "converted to Mermaid"
cd mmd/
./mmd.sh
echo "converted to PNG"
cd png/
./rename_png.sh
echo "done"
