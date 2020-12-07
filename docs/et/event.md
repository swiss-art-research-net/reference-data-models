# Event Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The event reference data model provides a list of standard fields that are typically present in the general description of an event, taken in the sense of planned public or social occasions, organized towards some purpose. Examples of events would be workshops, meetings, conferences, congresses and so on. The aim of this reference model is to cover basic descriptors that are typically employed in the documentation of an event. This reference model aims to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for an event as such and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The documented schema for structuring events data, in the sense of planned occasions, documented historically are not generally available or in use, despite the fact that such data is regularly collected in bespoke systems. In order to have reference schema from which to build the model, we looked at work on the more general question of periods and documentation of time along with the schema.org schema for events:

{{ read_csv('docs/et/sources/Sources-Event.csv') }}


The overlap of general modelling of periods with the question of events is not large. Therefore, the reference model presented was generated on the basis also of tacit knowledge with regards to fields deployed in non-open documentation schemas for documenting events.

## Model Sections Description

The fields used to describe an event can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

{{ read_csv('docs/et/section_description/Model_Sections_Description_event.csv') }}



### Names and Classifications

The attribution of names and types to events, as with other entities, is a basic human activity. A chief factor in disambiguating events lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Historical events often receive different names according to the groups naming it, as well as receiving different kinds of names according to contexts (such as abbreviations and so on). Likewise, additional classifiers of the event, such as how it has been formally categorized, give important distinguishing characteristics.

{{ read_csv('docs/et/eventCSV/event_name.csv') }}

The model provides means for tracking identifiers, present and past name use, names and well known typological attributions of the event.

![!](eventCSV/ttl/mmd/png/event_name.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_name.ttl"
    ```




### Description

Events are the subjects of innumerable descriptions that provide a wide range of information with regards to what took place during the event and how, as well as providing interpretations of its significance and import. Such descriptions are of use in a scholarly understanding of an event just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary for this task are documented in the table below.


{{ read_csv('docs/et/eventCSV/event_description.csv') }}

These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](eventCSV/ttl/mmd/png/event_description.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_description.ttl"
    ```



### Parthood

Events are a typical case of the kind of entity whose accurate documentation may require the breaking down of the event into parts and sub-parts. This information category gathers together the basic descriptors typically deployed to this end. The parthood relations of events help contextualize the meaning of events, as well as to be able to pick out the exact composition of a complex event by breaking it down into smaller subunits (e.g. A conference may break down into sessions and sessions into talks). In this base model, we represent simply the relation of belonging of one event to another. 

{{ read_csv('docs/et/eventCSV/event_parthood.csv') }}


![!](eventCSV/ttl/mmd/png/event_parthood.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_parthood.ttl"
    ```



### Existence

The existence of an event must be determined by documentary or physical evidence of the past. The documentation of the existence of an event, however, essentially relates to ascribing that event dates, where possible, durations otherwise, and a description of the temporality where none of the above is possible. The descriptors and mappings for these potentialities are documented in the table below.

{{ read_csv('docs/et/eventCSV/event_existence.csv') }}


The above structure allows for the documentation of the begin and end of an event, when known, its duration, as well as linking to motivating events (for example a preparatory meeting), and the plain text description of the temporality of an event.

![!](eventCSV/ttl/mmd/png/event_existence.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_existence.ttl"
    ```




### Participation

The use of documenting events in historical studies comes especially in tracing the interaction of actors, ideas and things in time and the evolution of the connections that are created between them. Events are nexuses in which actors, ideas and things participate. They can also be the junction for the creation of new ideas. The descriptors gathered here focus on the typical participants to events in the sense of planned social occasions, especially in a formal context. Therefore they focus on agents and their roles, documents and document production, as well as the use of particular implements (e.g. famous pens) in the carrying out of events.

{{ read_csv('docs/et/eventCSV/event_participation.csv') }}

These descriptors should allow the tracing of the participation of different people, ideas and things in various events through time.

![!](eventCSV/ttl/mmd/png/event_participation.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_participation.ttl"
    ```


### Intention

Events, as planned social occasions and interactions, usually take place with a particular intention in mind. In the case of formal events, such intentions are usually formalized as lists of topics. The description of the reasons motivating an event are essential in its analysis. In this information category, we gather together descriptors for documenting this data.

{{ read_csv('docs/et/eventCSV/event_aboutness.csv') }}


![!](eventCSV/ttl/mmd/png/event_aboutness.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_aboutness.ttl"
    ```


### Location

The documentation of location aids in tracking the location of occurrence of individual events as well as the dispersion of occurrences geographically. This information category gathers together relevant descriptors for this task.

{{ read_csv('docs/et/eventCSV/event_location.csv') }}


![!](eventCSV/ttl/mmd/png/event_location.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_location.ttl"
    ```



### Documentation

This information category unites referential information about the documented event, providing contextual data about it.

{{ read_csv('docs/et/eventCSV/event_documentation.csv') }}


![!](eventCSV/ttl/mmd/png/event_documentation.png)

??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/eventCSV/ttl/event_documentation.ttl"
    ```

