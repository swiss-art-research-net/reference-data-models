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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrfLzEIOHg2KhGxo > do_name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr354F3ewNIUfg3A > do_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrtgbHPPMUpEakQ6 > do_existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrtHFsWGOeBYJRPi > do_substance.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrQzNRIPM5fAkco3 > do_aboutness.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrz6FbHwnWEtZYX3 > do_actor_relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shraWCqwEidtUdVXo > do_rights.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrFFek7ImdDEiCk5 > do_location.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr43Pwk2zVijaqU0 > do_documentation.csv ;

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
