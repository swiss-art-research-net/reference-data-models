# Group Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The group reference data model provides a list of standard descriptors (fields) that are typically present in the description of a group or institution in cultural heritage data systems. The intention of this reference model is to provide a consolidated, high-level formal structure comprising the most commonly reused descriptors for a group and, further, to provide for these a set of semantic mapping to the CIDOC CRM. Moreover, each field is marked with respect to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by groups acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The decision on which fields to represent was based on a survey of significant, extant data sources and schemas of interest to the project. These were:

{{ read_csv('docs/et/sources/Sources-Group.csv') }}


## Model Sections Description

The fields used to describe a group can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

{{ read_csv('docs/et/section_description/Model_Sections_Description_group.csv') }}


### Names and Classifications

The attribution of names and types to things, including groups, is a basic human activity. The disambiguation of groups is aided by the understanding of the various names and identifiers that have been given to a group at different moments in time. Moreover, classifications such as group type and legal status can help in identifying and studying groups over time.

{{ read_csv('docs/et/groupCSV/group_name.csv') }}

The model provides means for tracking identifiers, present and past name use, type and legal status.


![!](groupCSV/ttl/mmd/png/group_name.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_name.ttl"
    ```


### Existence

Of essential importance in identifying and tracking groups is to know when they came into existence and if they have gone out of existence. For this reason, we have clustered descriptors relevant to such information into a common ‘existence’ category. These are described in the table below.

{{ read_csv('docs/et/groupCSV/group_existence.csv') }}


The above structure allows for the documentation of time and place of formation and dissolution of a group. Note that while ontologically speaking founding members are connected to the formation information, with regards to information clustering here we have placed this information in the actor relations category.

![!](groupCSV/ttl/mmd/png/group_existence.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_existence.ttl"
    ```


### Parthood

Groups often exist in complex internal structuration with both relations of subsumption towards sub-parts of the group and of belonging with regards to larger groups. This is a particular form of social parthood between groups. Groups, therefore, may require documentation not just as a whole, but with regards to their parts. This information category gathers together the basic descriptors typically deployed to this end.  

{{ read_csv('docs/et/groupCSV/group_parthood.csv') }}


The intention of these part-whole relations is to be used between instances of groups and their parts, larger or smaller. In particular, we have in mind the relationships of proper belonging, where a department belongs to a faculty which in turn belongs to a university. For describing the more general relations of parthood, like the groups belonging to a nation, or more particular relations, like those between actors and the group, please see the actor relations information category.

![!](groupCSV/ttl/mmd/png/group_parthood.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_parthood.ttl"
    ```


### Actor Relations

A useful area of documentation and potential disambiguation around a group concerns its relations to other actors in the world. The actor relations information category brings together descriptors for these relations into a larger group, covering relations concerning national affiliation, membership and employment with a group.

{{ read_csv('docs/et/groupCSV/group_actor_relations.csv') }}

![!](groupCSV/ttl/mmd/png/group_actor_relations.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_actor_relations.ttl"
    ```


### Activities

This category brings together documentary evidence with regards to various typical events in which a documented group may typically be involved. Note the production of publications is considered as an activity and documented as such. 

{{ read_csv('docs/et/groupCSV/group_events.csv') }}

![!](groupCSV/ttl/mmd/png/group_events.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_events.ttl"
    ```


### Works

This information category records work which have been produced by the documented group.

{{ read_csv('docs/et/groupCSV/group_works.csv') }}

![!](groupCSV/ttl/mmd/png/group_works.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_works.ttl"
    ```




### Description

This category brings together the diverse field which describe the documented group. It is meant to cover information concerning the type, language content of the description as well as temporal information about the description itself.

{{ read_csv('docs/et/groupCSV/group_description.csv') }}

![!](groupCSV/ttl/mmd/png/group_description.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_description.ttl"
    ```




### Location

The documentation of location aids in understanding where a group is seated as well as in understanding how they are dispersed geographically. This information category gathers together relevant descriptors for this task.


{{ read_csv('docs/et/groupCSV/group_location.csv') }}

![!](groupCSV/ttl/mmd/png/group_location.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_location.ttl"
    ```



### Documentation

This information category unites referential information about the documented group.

{{ read_csv('docs/et/groupCSV/group_documentation.csv') }}

![!](groupCSV/ttl/mmd/png/group_documentation.png)


??? example "Turtle Encoding"

    ```turtle
    --8<-- "docs/et/groupCSV/ttl/group_documentation.ttl"
    ```


