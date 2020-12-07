# Digital Object Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The digital object reference data model provides a list of standard fields that are typically present in the general description of a digital object in a cultural heritage data system. A digital object is meant in the sense of a digitally encoded information object represented as bit sequences that have been encoded with a particular format and can be digitally decoded and represented to an end user of a digital information system. Digital objects are often stored as reference or documentation objects relative to cultural heritage items such as textual descriptions stored as PDFs, documentary images, 3D representations and so on. Digital Objects can also form cultural heritage objects in their own right, though this model does not aim to represent this potential aspect of the digital object. Because of the choice to model, the digital object in its role as a secondary documentary resource, the reference data model has been kept as light as possible. This reference model intends to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for a digital object and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The minimal metadata set for a digital object was abstracted from typical use scenarios in CMS systems related to cultural heritage.

## Model Sections Description

The fields used to describe a digital object can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

{{ read_csv('docs/et/section_description/Model_Sections_Description_do.csv') }}


### Names and Classifications

The attribution of identifiers, names and types to a digital object, as with other entities, is a basic human activity. It is crucial to document these aspects in order to be able to store and retrieve the correct digital object. 

{{ read_csv('docs/et/doCSV/do_name.csv') }}


![!](doCSV/ttl/mmd/png/do_name.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_name.ttl"
    ```



The model provides means for tracking identifiers, titles, and various classifies that enable the identification, retrieval, verification and display/decoding of the digital object.


### Parthood

Digital objects can be further subdivided into particular digital objects or can form an element of a greater digital object. The documentation of parthood allows the tracing of these relations.  

{{ read_csv('docs/et/doCSV/do_parthood.csv') }}


![!](doCSV/ttl/mmd/png/do_parthood.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_parthood.ttl"
    ```




### Existence

Of essential import in identifying and tracking a digital object are its creation and modification information. The model presented allows the tracking of the machine event which originally created the digital object as well as subsequent machine events of a modifying character of which it was the output. The destruction of the digital object is not modelled as being irrelevant to the use scope of integrated CH reference documentation.

{{ read_csv('docs/et/doCSV/do_existence.csv') }}


![!](doCSV/ttl/mmd/png/do_existence.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_existence.ttl"
    ```



### Actor Relations

The connection between a digital object and actors provides another important set of descriptors for identifying and tracing a digital object. In this minimal model, the creator is represented.

{{ read_csv('docs/et/doCSV/do_actor_relations.csv') }}


![!](doCSV/ttl/mmd/png/do_actor_relations.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_actor_relations.ttl"
    ```


### Substance

The analysis and understanding of a digital object also depend on our knowledge of its measurable characteristics. These are represented through dimensional information that can be collected regarding the object. The model is open as to which dimensions should be recorded.

{{ read_csv('docs/et/doCSV/do_substance.csv') }}


![!](doCSV/ttl/mmd/png/do_substance.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_substance.ttl"
    ```





### Representation

This information category allows the documentation, where possible, of the content of the digital object itself as well as a classification of the types of entity, by categorical subject, that the digital object is referenced to.

{{ read_csv('docs/et/doCSV/do_aboutness.csv') }}


![!](doCSV/ttl/mmd/png/do_aboutness.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_aboutness.ttl"
    ```



### Rights

The potential use and re-use of a digital object and its derivatives require respect for existing rights claims. This information category gathers together the relevant descriptors for tracking this information.


{{ read_csv('docs/et/doCSV/do_rights.csv') }}


![!](doCSV/ttl/mmd/png/do_rights.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_rights.ttl"
    ```


### Location

The documentation of location with regards to a digital object at the level of documentation can be simplified to the storage of an identifier for a retrieval location on a digital storage medium or can refer to a digital storage medium itself. In the context of managing reference information this is sufficient. 

{{ read_csv('docs/et/doCSV/do_location.csv') }}


![!](doCSV/ttl/mmd/png/do_location.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_location.ttl"
    ```

### Documentation

This information category unites referential information about the documented digital object

{{ read_csv('docs/et/doCSV/do_documentation.csv') }}


![!](doCSV/ttl/mmd/png/do_documentation.png)



??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/doCSV/ttl/do_documentation.ttl"
    ```

