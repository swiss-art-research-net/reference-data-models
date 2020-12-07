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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrKD5MyMw5HhN6nF > Built_Work_Names.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrkdpQ5byHatjAeQ > Built_Work_parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrXvIczzcqBxmfGT > Built_Work_existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr9csNUgPebD6NBy > Built_Work_substance.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr6PjaGjO1T3mzE4 > Built_Work_aboutness.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrQppOWwiEx1z6RC > Built_Work_events.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrkXqagJuKENzSAK > Built_Work_actor_relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr2n8nMTxOESGzoz > Built_Work_designation_status.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrwejFCtrhbsqSsB > Built_Work_rights.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrruTkdeuU4z3qq2 > Built_Work_location.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr8ib8BfVvGe0JDX > Built_Work_description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr3GHkRTSLBPIGjo > Built_Work_documentation.csv ;

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