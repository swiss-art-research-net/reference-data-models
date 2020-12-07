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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrZkO7sd9vnfMw30 > event_name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrIiZLMo4cSreBYz > event_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrkcVDq9ycRcM9Bk > event_existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrJdiql8hKlQxmvj > event_aboutness.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr5FSq7pOaJe6Z3i > event_participation.csv ; 
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrqxXVzx9C0oLPoK > event_location.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrfBACYAdi1TNS4j > event_documentation.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr3FUiQ4SB13j9I3 > event_description.csv


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