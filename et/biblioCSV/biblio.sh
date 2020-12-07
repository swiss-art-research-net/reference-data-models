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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr0rCcH3WTVw8j1V > biblio_name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrJT1mV5apfyLLSE > biblio_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shru5eYarAAs2nqZh > biblio_existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr93bPQvD6kEVOcz > biblio_substance.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrlV7ExEJ41leKX7 > biblio_aboutness.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrmFYFwLyfyjZG67 > biblio_actor_relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrQI42azhgdPehgU > biblio_item.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrPnM3lhBGsv2sAW > biblio_description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrIGrpYAgIW07Ilr > biblio_documentation.csv ;
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