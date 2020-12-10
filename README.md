# Reference Data Models

This repository is used to collect and discuss the development of the [Reference Data Models](https://docs.swissartresearch.net/).

This website record and collect the Semantic Reference Data Models. With the term Semantic Reference Data Model (SRDM) we denote a set of data patterns (**fields**) useful for the semantic description of a specific entity type. 

Each SRDM is a collection of **fields**, which are named, ided, intensionally defined, and composed by syntactically unique path from a domain node to a range node through *n* triples. Each field document a  unique statement, intended to represent one value / data point. The fields are further organised into groups which compose together set of mutually relevant statement types related to the same entity type (domain node), documented for the purpose of common reuse across semantic data projects.

Each **field** is mapped to the CIDOC-CRM ontology. The aim is manifold: to provide reference implementations to be used by institutions and projects not familiar with CIDOC-CRM, to create usable guidelines to generate input interfaces for born-CRM semantic data and to guide mapping processes from extant sources into the CRM conformant reference model using tools such as 3M. 

The Semantic Reference Data Model are produced by the Swiss Art Research Infrastructure (SARI) in collaboration with [George Bruseker](https://twitter.com/GBruseker) and [Nicola Carboni](https://twitter.com/wlpbloyd) and describe the following entities: 

+ [Persons](https://docs.swissartresearch.net/et/persons/)
+ [Artworks](https://docs.swissartresearch.net/et/artwork/)
+ [Group](https://docs.swissartresearch.net/et/group/)
+ [Built Work](https://docs.swissartresearch.net/et/built_work/)
+ [Place](https://docs.swissartresearch.net/et/place/)
+ [Digital Document](https://docs.swissartresearch.net/et/do/)
+ [Events](https://docs.swissartresearch.net/et/event/)
+ [Bibliographic Entity](https://docs.swissartresearch.net/et/bibliographic_item)

## Contributions and issues

The SRDM are not a fixed entity, but they can be updated with new **fields**. Please open an issue here on Github to request new **fields**, or to indicate problems with the current ones.
