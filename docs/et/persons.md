# Person Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

## Introduction

The person reference data model provides a list of standard descriptors (fields) that are typically present in the description of a person in cultural heritage data systems. The intention of this reference model is to provide a consolidated, high-level formal structure comprising the most commonly reused descriptors for a person entity and, further, to provide for these a set of semantic mapping to the CIDOC CRM. Moreover, each field is marked with respect to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The decision on which fields to represent was based on a survey of significant, extant data sources and schemas of interest to the project. These were:

{{ read_csv('docs/et/sources/Sources-Person.csv') }}


## Model Sections Description

The fields used to describe a person can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.


{{ read_csv('docs/et/section_description/Model_Sections_Description_person.csv') }}



### Names and Classifications

The attribution of names and types to persons is a basic human activity. A chief factor in disambiguating which person is referred to in historical texts is understanding the various names and identifiers that have been given to an individual at different moments. Likewise, additional classifiers of the individual as such, such as gender, help in the disambiguation, in an information system, of the reference to one real-world individual from another.

{{ read_csv('docs/et/personCSV/Person_Names_and_Classification.csv') }}

The model provides means for tracking identifiers, present and past name use, titles and gender.

![!](personCSV/ttl/mmd/png/Person_Names_and_Classification.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Names_and_Classification.ttl"
	```



### Existence

Of essential importance in identifying and tracking individuals is also their biographical information, such as their birth and death. For this reason, we have clustered descriptors relevant to such information into a common ‘existence’ category. These are described in the table below.

{{ read_csv('docs/et/personCSV/Person_Existence.csv') }}


The above structure allows for the documentation of time and place of birth and death of an individual. Note that while ontologically speaking mothers and fathers could be connected to birth information, with regards to information clustering we have placed this information in the social relations category.

![!](personCSV/ttl/mmd/png/Person_Existence.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Existence.ttl"
	```




### Social Relations

A large area of documentation and potential disambiguation around the person relates to social relations, whether they are familial, interpersonal or institutional. The social relations information category brings together descriptors for these relations into a larger group, covering relations starting from the maternal, moving to the most general membership in national and cultural blocks and different interpersonal connections.

{{ read_csv('docs/et/personCSV/Person_Actor_Relations.csv') }}

![!](personCSV/ttl/mmd/png/Person_Actor_Relations.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Actor_Relations.ttl"
	```


### Knowledge

This information category at present is lightly populated but refers to a distinct genre of information regarding the knowledge of a documented person.

{{ read_csv('docs/et/personCSV/Person_Knowledge.csv') }}

![!](personCSV/ttl/mmd/png/Person_Knowledge.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Knowledge.ttl"
	```



### Activities

This category brings together the various actions in which the documented person has taken part during their lifetime. It is meant to cover information concerning the period of highest activity, the kinds of activity undertaken, specific acts of creation, and participation in well-known events.

{{ read_csv('docs/et/personCSV/Person_Event.csv') }}

![!](personCSV/ttl/mmd/png/Person_Event.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Event.ttl"
	```




### Work

This information category records work which have been produced by the documented persons.

{{ read_csv('docs/et/personCSV/Person_Works.csv') }}

![!](personCSV/ttl/mmd/png/Person_Works.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Works.ttl"
	```



### Description

This category brings together the diverse field which describe the documented person. It is meant to cover information concerning the type, language content of the description as well as temporal information about the description itself.


{{ read_csv('docs/et/personCSV/Person_Description.csv') }}

![!](personCSV/ttl/mmd/png/Person_Description.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Description.ttl"
	```



### Documentation

This information category unites referential information about the documented person, providing contextual data about him or her.

{{ read_csv('docs/et/personCSV/Person_Documentation.csv') }}

![!](personCSV/ttl/mmd/png/Person_Documentation.png)

??? example "Turtle Encoding"

	```turtle
	--8<-- "docs/et/personCSV/ttl/Person_Documentation.ttl"
	```



