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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shreljuWtsC3MNFe5 > Person_Names_and_Classification.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrASjPJmSun2qNXn > Person_Existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrT4pyVIoZL5gvJC > Person_Knowledge.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr8uNphsMBfUD4yK > Person_Event.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrJvf5q8GZcwE4Jt > Person_Actor_Relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr9ITOwAwMjlsS9w > Person_Works.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrHGooArDKz4m11K > Person_Description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrXTnQN9sNgETNRh > Person_Documentation.csv ;

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

