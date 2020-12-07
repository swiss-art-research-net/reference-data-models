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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrf9F2GMwTX3vYBb > group_name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrsxdo5t5toMYrq1 > group_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrxhEBchScpl9XOZ > group_existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr6HVAMMMidoy4T2 > group_events.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr6ohx53hq6vGMef > group_actor_relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr4u4X1hAolKfpER > group_works.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrbmW1Y0Y5E7xZ2x > group_location.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrVelnT9iSNNYy7n > group_description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrmLls7kh3tHorRA > group_documentation.csv ;
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