# Artwork Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

## Introduction

The artwork reference data model provides a list of standard fields that are typically present in the general description of an artwork in a cultural heritage data system. The artwork is taken here in the sense of a movable, physical work of some sort such as would be typically inventoried by a museum. Specific documentation of elements of an artwork depends highly upon the kind of artwork it is. This reference model does not intend to cover such specificities but to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for an artwork and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.



## Sources

The decision on which fields to represent was based on a survey of significant, extant data sources of interest to the project. These were:

{{ read_csv('docs/et/sources/Sources-Artwork.csv') }}


## Model Sections Description

The fields used to describe an artwork can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

{{ read_csv('docs/et/section_description/Model_Sections_Description_artwork.csv') }}

### Names and Classifications

The attribution of names and types to artwork, as with other entities, is a basic human activity. A chief factor in disambiguating artworks lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Likewise, additional classifiers of the artwork, such as how it has been classified as an object as such, give important distinguishing characteristics.

{{ read_csv('docs/et/artworkCSV/Artwork_Name.csv') }}


The model provides means for tracking identifiers, present and past name use, titles and well-known artwork classifiers.

![!](artworkCSV/ttl/mmd/png/Artwork_Name.png)



??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Name.ttl"
	```





### Description

Artworks are the subjects of innumerable descriptions that provide a wide range of information with regards to the aesthetic and historical importance of a work, *inter alia*. Such descriptions are of use in a scholarly understanding of an artwork and its reception just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary to this task are documented in the table below.

{{ read_csv('docs/et/artworkCSV/Artwork_Description.csv') }}


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](artworkCSV/ttl/mmd/png/Artwork_Description.png)




??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Description.ttl"
	```




### Parthood

Artwork may require documentation not just as a whole, but with regards to its parts. This information category gathers together the basic descriptors typically deployed to this end.  

{{ read_csv('docs/et/artworkCSV/Artwork_Parthood.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_Parthood.png)




??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Parthood.ttl"
	```




### Existence

Of essential import in identifying and tracking artwork is information pertaining to its existence in time, particularly information regarding its creation and destruction. For this reason, we have clustered descriptors relevant to such information in a common ‘existence’ category. These are described in the table below.

{{ read_csv('docs/et/artworkCSV/Artwork_Existence.csv') }}


The above structure allows for the documentation of time and place of the creation and destruction of an individual artwork. Note that while ontologically speaking the agency of the creator and destroyer in the events of creation and destruction could be documented as part of this information unit, we have instead clustered this data in the Actors Relations category.

![!](artworkCSV/ttl/mmd/png/Artwork_Existence.png)





??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Existence.ttl"
	```




### Actor Relations

The connection between artwork and actors provides another important set of descriptors for identifying and tracing an artwork. Particularly, basic interest clusters around the individuals involved in the creation of the artwork and those who own and/or hold the artwork presently. The actor relations information gathers these together.

{{ read_csv('docs/et/artworkCSV/Artwork_Actor_Relations.csv') }}


These descriptors allow the connection of an artwork to its creator, present owner and holder.

![!](artworkCSV/ttl/mmd/png/Artwork_Actor_Relations.png)




??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Actor_Relations.ttl"
	```





### Substance

The analysis and understanding of an artwork depends also on our knowledge of its materiality and physical characteristics. The category of substance brings together descriptors which are relevant to this form of analysis. Particularly, it groups information having to do with the composition and measurable aspects of the artwork as object. Information regarding the decomposition of the artwork into parts is found in the parthood category.

{{ read_csv('docs/et/artworkCSV/Artwork_substance.csv') }}


![!](artworkCSV/ttl/mmd/png/Artwork_substance.png)





??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_substance.ttl"
	```





### Representation

This information category at present is lightly populated but provides the means to gather information relevant to the documentation of what has been documented as represented in an artwork.

{{ read_csv('docs/et/artworkCSV/Artwork_subject.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_subject.png)




??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_subject.ttl"
	```





### Events

This information category brings together typical events in which an artwork may have been involved through the course of its history. It is meant to cover information concerning the most salient events documented with regards to artworks. At present this enables the documentation of ownership periods and conservation events.

{{ read_csv('docs/et/artworkCSV/Artwork_Events.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_Events.png)



??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Events.ttl"
	```





### Location

The documentation of location aids in tracking individual artworks as well as in understanding their dispersion geographically. This information category gathers together relevant descriptors for this task.

{{ read_csv('docs/et/artworkCSV/Artwork_Location.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_Location.png)





??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Location.ttl"
	```





### Rights

The potential use and re-use of an artwork and its derivatives requires respect for existing rights claims. This information category gathers together the relevant descriptors for tracking this information.

{{ read_csv('docs/et/artworkCSV/Artwork_Rights.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_Rights.png)






??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Rights.ttl"
	```






### Documentation

This information category unites referential information about the documented artwork, providing contextual data about it.

{{ read_csv('docs/et/artworkCSV/Artwork_Documentation.csv') }}

![!](artworkCSV/ttl/mmd/png/Artwork_Documentation.png)



??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/artworkCSV/ttl/Artwork_Documentation.ttl"
	```




