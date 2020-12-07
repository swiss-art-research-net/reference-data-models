#! /bin/bash
for file in *.ttl ; do
	cat prefixes.txt "$file" > temp && mv temp "$file" ; 
	rdfpipe -i ttl -o ttl "$file" > temp && mv temp "$file" ;
done

