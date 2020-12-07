# Bibliographic Item Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The bibliographic item reference data model provides a list of standard fields that are often found present in the general description of a bibliographic item. The scope of this reference model is the bibliographic item as information object and pointer to real world instances of the publication; this model aims to provide a streamlined list of common descriptors for a bibliographic item and not a complete representation of all aspects of a real bibliographic record. Rather, we are interested here in representing the types of information that are typically gathered by scholars relative to a publication in their creation of bibliographies for use in scholarship and used as the basis for citations. This reference model aims to remain at a general level description, providing a consolidated, high level reference data model of most commonly reused descriptors for a bibliographic item as such and to provide for these in turn a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.



## Sources

In formulating this reference model, we have made reference to some well known bibliographic standards, but in practice found it most useful to refer to commonly used bibliography generation tools such as Zotero to identify required fields. 

{{ read_csv('docs/et/sources/Sources-Biblio.csv') }}


## Model Sections Description

The fields used to describe a bibliographic item can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.


{{ read_csv('docs/et/section_description/Model_Sections_Description_biblio.csv') }}


### Names and Classifications

The attribution of names and types to bibliographic item, as with other entities, is a basic human activity. In the context of bibliographic items, titles and subtitles as well as the language of these are of high importance in tracing the individual bibliographic item. 

{{ read_csv('docs/et/biblioCSV/biblio_name.csv') }}

The model provides means for tracking identifiers and titles, as well as linguistic classification of the item.

![!](biblioCSV/ttl/mmd/png/biblio_name.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_name.ttl"
    ```


### Description

Bibliographic items, will often have an ‘abstract’ describing them as well as other potential texts such as critiques. The descriptions descriptors allow for the open ended representation of such free text descriptions of the bibliographic item.

{{ read_csv('docs/et/biblioCSV/biblio_description.csv') }}

These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](biblioCSV/ttl/mmd/png/biblio_description.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_description.ttl"
    ```


### Parthood

With regards to parthood a simple pattern is modelled here. A bibliographic item should also indicate if it belongs to a greater bibliographic item in order to enable the tracing of the relevant volumes and professionals. 

{{ read_csv('docs/et/biblioCSV/biblio_parthood.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_parthood.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_parthood.ttl"
    ```



### Existence

The publication period of a bibliographic item helps establish its particular identity. The dates and place are important to understand which edition of a work we speak of and refer to. 

{{ read_csv('docs/et/biblioCSV/biblio_existence.csv') }}

Note that while ontologically speaking the agency of the creator could be documented as part of this information unit, we have instead clustered this data in the Actors Relations category.

![!](biblioCSV/ttl/mmd/png/biblio_existence.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_existence.ttl"
    ```


### Actor Relations

In this modelling we identify the publisher but also the authors and other contributors via their roles as creators the bibliographic item. These relations are important in identifying the correct bibliographic item.


{{ read_csv('docs/et/biblioCSV/biblio_actor_relations.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_actor_relations.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_actor_relations.ttl"
    ```


### Substance

The standard information available with regards to the substance of a bibliographic item relates to the dimensions of the volume that carries it. These can be recorded as dimensions.


{{ read_csv('docs/et/biblioCSV/biblio_substance.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_substance.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_substance.ttl"
    ```


### Aboutness

The use of the bibliographic item to the researcher lies in its role as an information carrier which bears a certain information object which can be consulted in order to get evidence with regards to some phenomena in the past or present. Thus the representative aspect of the bibliographic item is of prime documentary concern. In this category there is a categorization of the pertinence of the information object with regards to major real world referents: time, space and topic. 

{{ read_csv('docs/et/biblioCSV/biblio_aboutness.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_aboutness.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_aboutness.ttl"
    ```



### Item Information

The documentation of physical holdings allows the optional tracking of individual physical holdings held by institutions and where they are held, in order to aid scholars in retrieving copies of bibliographic items.

{{ read_csv('docs/et/biblioCSV/biblio_item.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_item.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_item.ttl"
    ```

### Documentation

This information category unites referential information about the documented bibliographic item, providing contextual data about it.


{{ read_csv('docs/et/biblioCSV/biblio_documentation.csv') }}


![!](biblioCSV/ttl/mmd/png/biblio_documentation.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/biblioCSV/ttl/biblio_documentation.ttl"
    ```

