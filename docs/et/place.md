# Place Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The place reference data model provides a list of standard fields that are often found present in the general description of a place. Place here is interpreted as a geometric extent used for locating entities relative to a reference space. The scope of entities that this reference model aims to cover are places as typically documented in gazetteers. Examples of places would be Edmonton (the inhabited city), Alberta (the administrative district), Canada (the country). The aim of this reference model is to cover basic descriptors that are typically employed in the documentation of a place, usually by a gazetteer. This reference model aims to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for a place as such and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

There are many good and well known schema for structuring place data. As a reference for this modelling work, we made use of the TGN, Geonames and Schema.org. The latter two especially are highly reused resources in the historical and cultural heritage field and provide an initial view of the basic complexities to be faced.


{{ read_csv('docs/et/sources/Sources-Place.csv') }}

## Model Sections Description

The fields used to describe a place can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

{{ read_csv('docs/et/section_description/Model_Sections_Description_place.csv') }}




### Names and Classifications

The attribution of names and types to  a place, as with other entities, is a basic human activity. A chief factor in disambiguating places lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Historical places often receive different names according to the groups naming it, as well as receiving different kinds of names according to contexts and during different historical moments. Likewise, additional classifiers of a place, such as how it is has been formally classified, give important distinguishing characteristics. Because the type of a place is a socially related factor, dependent on how the place is appropriated/used in human interaction, the type of a place may change over time. In the model we add the possibility for describing this shift.

{{ read_csv('docs/et/placeCSV/place_name.csv') }}

![!](placeCSV/ttl/mmd/png/place_name.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/placeCSV/ttl/place_name.ttl"
    ```

### Description

Places are the subjects of innumerable descriptions that provide a wide range of information with regards to the meaning and use of a place. Such descriptions are of use in a scholarly understanding of a place just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary to this task are documented in the table below.

{{ read_csv('docs/et/placeCSV/place_description.csv') }}


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](placeCSV/ttl/mmd/png/place_description.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/placeCSV/ttl/place_description.ttl"
    ```

### Parthood

The mereo-topological breakdown of places is crucial to understanding the relative relations between places. This information category gathers together the basic descriptors typically deployed to this end. In the study and documentation of place, this is a highly researched topic with extremely fine grained analysis available. In this base model, we represent the relation of one place falling within another. This representation allows both for documentation of contemporaneous containment relations but also the expression of a place falling within another place or containing one at a particular historical time.

{{ read_csv('docs/et/placeCSV/place_parthood.csv') }}

![!](placeCSV/ttl/mmd/png/place_parthood.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/placeCSV/ttl/place_parthood.ttl"
    ```


### Substance

Crucial in the documentation of place is the capturing of geometric estimations of its precise coordinates. These coordinates together with the place entity as a whole form the basis for spatial analysis not only of places themselves but also other entities documented using the SARI reference models. 

{{ read_csv('docs/et/placeCSV/place_substance.csv') }}

![!](placeCSV/ttl/mmd/png/place_substance.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/placeCSV/ttl/place_substance.ttl"
    ```



### Documentation

This information category unites referential information about the documented event, providing contextual data about it.

{{ read_csv('docs/et/placeCSV/place_documentation.csv') }}

![!](placeCSV/ttl/mmd/png/place_documentation.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/placeCSV/ttl/place_documentation.ttl"
    ```


