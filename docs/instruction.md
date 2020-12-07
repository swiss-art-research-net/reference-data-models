### Formalisation and instructions

Each information category is represented here both in the form of a table and in the form of a semantic graph model. The graph presents an overview of the semantic model formed by the suggested descriptors, while the table provides for each descriptor, both an explanatory description of its intended function and a mapping of this intended function to a CIDOC-CRM path expression. 

The mappings present in the table, for readability purpose, use only the class and property identifiers of CIDOC-CRM adopting the formalism of: 

* Classes: E+ID

* Properties: P+ID 

Moreover, when it is necessary to make explicit that the same node is referenced across descriptors in a semantic path variable [*n*] (where *n* is a number) is placed next to a class to indicate its reuse across mapping constructs. 

For example, the descriptor ‘identifier’ for an instance of person is mapped as:

1. **E21 -> P1 -> E42 [1]**

The descriptor for the provider of this identifier, ‘Identifier Provider’ refers back semantically to the ‘Identifier’ descriptor (qua appellation), hence in the semantic mapping the particular individual node is referred back to as the subject of the act of being given an appellation. Expressed in our formalism this becomes: 

2. **E21 -> P1 -> E42 [1]** -> P37 i-> E15 -> P14 -> E39

The variable [1] in the second mapping is provided to signal to the reader that the same node (instance of class E42) is being referred to across two mappings, the first of the identifier as such and the second of its being attributed by some organization.

The classes and properties used in this document belong to the following namespaces using the following prefixes:

rdf: <http://[www.w3.org/1999/02/22-rdf-syntax-ns#](https://workspace.digitale-diathek.net/confluence/display/SARISEM/www.w3.org/1999/02/22-rdf-syntax-ns#)> 

rdfs: <http://[www.w3.org/2000/01/rdf-schema#](https://workspace.digitale-diathek.net/confluence/display/SARISEM/www.w3.org/2000/01/rdf-schema#)> 

crm: <http://[http://www.cidoc-crm.org/cidoc-crm/](http://www.cidoc-crm.org/cidoc-crm/)> 

sari: <http://[w3id.org/sari#](https://workspace.digitale-diathek.net/confluence/display/SARISEM/w3id.org/sari#)> 

The legend for the graphs used in the document can be found at the address [http://schema.swissartresearch.net/graphical/index.html](http://schema.swissartresearch.net/graphical/index.html). Below a graphical summary of its components.


![](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/315fb819-c32c-4d13-92dd-74dfed959a06.png)