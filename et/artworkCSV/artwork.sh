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

python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrPgJopfdzS8TRjU > Artwork_Name.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr1BUAc0k7CMGOPR > Artwork_Parthood.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr6LEceTYqarh60o > Artwork_Existence.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrirsDGYFACJmba9 > Artwork_substance.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrhZ6t2B0cTVteq1 > Artwork_subject.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrwlwLhFyzlvHgE6 > Artwork_Events.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shriQBo2TMU58eSie > Artwork_Actor_Relations.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrhRUS9bl0QqxRdk > Artwork_Rights.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shrnv4u11sMVs3T8M > Artwork_Location.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr6WRc5RLgfooJfM > Artwork_Description.csv ;
python ../airscraper/airscraper/airscraper/airscraper.py https://airtable.com/shr0LgomaG22z3frW > Artwork_Documentation.csv ;

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