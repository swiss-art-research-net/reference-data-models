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

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</th>
  </tr>
  <tr>
    <td>Agrelon</td>
    <td>AGRELON, AN AGENT RELATIONSHIP ONTOLOGY</td>
    <td>https://d-nb.info/standards/elementset/agrelon</td>
    <td>https://d-nb.info/standards/elementset/agrelon</td>
    <td>Deutsche Nationalbibliothek</td>
  </tr>
  <tr>
    <td>SIKART</td>
    <td>Dictionary of Art in Switzerland</td>
    <td>http://www.sikart.ch/home2.aspx</td>
    <td></td>
    <td>SIK-ISEA</td>
  </tr>
  <tr>
    <td>Marc21</td>
    <td>Marc 21 - Bibliography Heading Fields</td>
    <td>http://www.loc.gov/marc/</td>
    <td>http://www.loc.gov/marc/bibliographic/</td>
    <td>Library of Congress</td>
  </tr>
  <tr>
    <td>VIAF</td>
    <td>Virtual International Authority File</td>
    <td>http://viaf.org/</td>
    <td></td>
    <td>OCLC</td>
  </tr>
  <tr>
    <td>ULAN</td>
    <td>Union List of Artist Names</td>
    <td>http://www.getty.edu/research/tools/vocabularies/ulan/</td>
    <td>https://www.getty.edu/research/tools/vocabularies/ulan/ulan_xml_dd.pdf</td>
    <td>Getty</td>
  </tr>
  <tr>
    <td>Schema.org</td>
    <td>Schema.org</td>
    <td>http://schema.org</td>
    <td></td>
    <td>Schema.org</td>
  </tr>
  <tr>
    <td>CDWA</td>
    <td>Categories for the Description of Works of Art</td>
    <td>http://www.getty.edu/research/publications/electronic_publications/cdwa/introduction.html</td>
    <td>http://www.getty.edu/research/publications/electronic_publications/cdwa/definitions.html</td>
    <td>Getty</td>
  </tr>
  <tr>
    <td>DC</td>
    <td>Dublin Core</td>
    <td>http://dublincore.org/</td>
    <td>http://dublincore.org/documents/dces/</td>
    <td>ASIS&T</td>
  </tr>
  <tr>
    <td>CCO</td>
    <td>Cataloging Cultural Objects</td>
    <td>http://cco.vrafoundation.org/index.php/</td>
    <td>http://cco.vrafoundation.org/index.php/toolkit/cco_pdf_version/</td>
    <td>CCO Commons</td>
  </tr>
</table>


## Model Sections Description

The fields used to describe a group can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This information category gathers together descriptors used for assigning names and types to a group, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Existence</td>
    <td>This information category gathers together descriptors relevant to the tracking of the formation and dissolution of a group.</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Parthood</td>
    <td>This category is used to bring together information relevant to the composition of a group with relation to its parts and its belonging to wider groups.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Actor Relations</td>
    <td>This information category gathers together descriptors relevant to tracking the relations held between a group and other people or actors.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Activities</td>
    <td>This information category gathers together descriptors used for documenting different activities that a group is known to have been involved in or with.</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Location</td>
    <td>This category gathers together information regarding the seat of a group.</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Documentation</td>
    <td>This information category gathers together different documentary descriptors that provide reference information with regards to a group.</td>
  </tr>
</table>


### Names and Classifications

The attribution of names and types to things, including groups, is a basic human activity. The disambiguation of groups is aided by the understanding of the various names and identifiers that have been given to a group at different moments in time. Moreover, classifications such as group type and legal status can help in identifying and studying groups over time.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented group.</td>
    <td> → P1 → E42[1]</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented group.</td>
    <td> → P1 → E42[1] → P2 → E55["Identifier Type"]</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the provider of the identifier attributed to the documented group.</td>
    <td> → P1 → E42[1] → P37i → E15 → P14 → E39</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Source</td>
    <td>This field is used to indicate the source based on which the identifier was attributed to the object.</td>
    <td> → P1 → E42[1] → P37i → E15 → P16 → E73</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Name</td>
    <td>This field is used to indicate the main name attributed to the documented group. No part break down of name is here implied. The full name of a group is expected here where available.</td>
    <td> → P1 → E41[2] •    
 → P1 → E41[2] → P2 → E55['Preferred Name']</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Name Language</td>
    <td>This field is used to indicate the language of the name attributed to the documented entity.</td>
    <td> → P1 → E41[2] → P72 → E56</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Group Type</td>
    <td>This field is used to indicate a general type assigned to the documented group.</td>
    <td> → P2 → E55 •    
 → P2 → E55 → P2 → E55 "Group Type"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Legal Status</td>
    <td>This field is used to indicate the legal status of the documented group.</td>
    <td> → P2 → E55 •    
 → P2 → E55 → P2 → E55 "Legal Status"</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name</td>
    <td>This field is used to indicate additional names under which the documented group is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td> → P1 → E41[5]</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented group.</td>
    <td> → P1 → E41[5] → P2 → E55</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Language</td>
    <td>This field is used to indicate the language of the alternate name attributed to the documented group.</td>
    <td> → P1 → E41[5] → P72 → E56</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of this name for the documented group.</td>
    <td> → P1 → E41[5] → R64i → F52[4] → P4 → E52[6] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of this name for the documented group.</td>
    <td> → P1 → E41[5] → R64i → F52[4] → P4 → E52[6] → P82b → xsd:dateTimeTime</td>
  </tr>
</table>


The model provides means for tracking identifiers, present and past name use, type and legal status.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f24f73fa-265b-4ec6-9822-1734244f1201.png)

### Existence

Of essential importance in identifying and tracking groups is to know when they came into existence and if they have gone out of existence. For this reason, we have clustered descriptors relevant to such information into a common ‘existence’ category. These are described in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>Formation</td>
    <td>Place of Formation</td>
    <td>This field is used to indicate the place of formation of the documented group.</td>
    <td> → P95i → E66[7] → P7 → E53</td>
  </tr>
  <tr>
    <td>Formation</td>
    <td>Formation Date - Earliest</td>
    <td>This field is used to indicate the earliest known date for the formation of the documented group.</td>
    <td> → P95i → E66[7] → P4 → E52[8] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Formation</td>
    <td>Formation Date - Latest</td>
    <td>This field is used to indicate the latest known date for the formation of the documented group.</td>
    <td> → P95i → E66[7] → P4 → E52[8] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Formation</td>
    <td>Formed from</td>
    <td>This field is used to associate a group which pre-existed the document group and from which it was formed.</td>
    <td> → P95i → E66[7] → P151 → E74</td>
  </tr>
  <tr>
    <td>Dissolution</td>
    <td>Place of Dissolution</td>
    <td>This field is used to indicate the place of dissolution of the documented group.</td>
    <td> → P99i → E68[9] → P7 → E53</td>
  </tr>
  <tr>
    <td>Dissolution</td>
    <td>Dissolution Date - Earliest</td>
    <td>This field is used to indicate the earliest known date for the dissolution of the documented group.</td>
    <td> → P99i → E68[9] → P4 → E52[10] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Dissolution</td>
    <td>Dissolution Date - Latest</td>
    <td>This field is used to indicate the latest known date for the dissolution of the documented group.</td>
    <td> → P99i → E68[9] → P4 → E52[10] → P82b → xsd:dateTimeTime</td>
  </tr>
</table>


The above structure allows for the documentation of time and place of formation and dissolution of a group. Note that while ontologically speaking founding members are connected to the formation information, with regards to information clustering here we have placed this information in the actor relations category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/0074cbe6-a54f-4487-a7de-4ae8fbf22169.png)

### Parthood

Groups often exist in complex internal structuration with both relations of subsumption towards sub-parts of the group and of belonging with regards to larger groups. This is a particular form of social parthood between groups. Groups, therefore, may require documentation not just as a whole, but with regards to their parts. This information category gathers together the basic descriptors typically deployed to this end.  

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Group Part of</td>
    <td>This field is used to indicate the membership of the documented group in a larger formation. The referenced entity should be a group.</td>
    <td> → P107i → E74</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Has Part</td>
    <td>This field is used to indicate members of the documented group. The referenced entity should be a group.</td>
    <td> → P107 → E74</td>
  </tr>
</table>


The intention of these part-whole relations is to be used between instances of groups and their parts, larger or smaller. In particular, we have in mind the relationships of proper belonging, where a department belongs to a faculty which in turn belongs to a university. For describing the more general relations of parthood, like the groups belonging to a nation, or more particular relations, like those between actors and the group, please see the actor relations information category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f6ba5183-acf5-42bd-bc95-3b8e9d4e7019.png)

### Actor Relations

A useful area of documentation and potential disambiguation around a group concerns its relations to other actors in the world. The actor relations information category brings together descriptors for these relations into a larger group, covering relations concerning national affiliation, membership and employment with a group.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>National Affiliation</td>
    <td>This field is used to indicate the association of the documented group to a nation, usually indicating its legal association.</td>
    <td> → P107i → E74[12]     
 → P107i → E74[12] → E55["National Group"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Founding Member</td>
    <td>This field is used to indicate founding members of the documented group.</td>
    <td> → P95i → E66[11] → P14 → E39[13]</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member</td>
    <td>This field is used to indicate an member of the documented group.</td>
    <td> → P02 → PC144[14] → P01 → E85[15] → P143 → E21</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member Role</td>
    <td>This field is used to indicate the type of role the member played in relation to the group.</td>
    <td> → P02 → PC144[14] → P14.1 → E55["Position"]</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member Start Date - Earliest</td>
    <td>This field is used to indicate the earliest known date of becoming an member of the documented group by the individual in question.</td>
    <td> → P02 → PC144[14] → P01 → E85[15] → P4 → E52[16] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member Start Date - Latest</td>
    <td>This field is used to indicate the latest known date of becoming an member of the documented group by the individual in question.</td>
    <td> → P02 → PC144[14] → P01 → E85[15] → P4 → E52[16] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member End Date - Earliest</td>
    <td>This field is used to indicate the earliest known date of ceasing to be an member of the documented group by the individual in question.</td>
    <td> → P146i → E86[17] → P145 → E21 •    
 → P146i → E86[17] → P4 → E52[18] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Members</td>
    <td>Member End Date - Latest</td>
    <td>This field is used to indicate the latest known date of ceasing to be an member of the documented group by the individual in question.</td>
    <td> → P146i → E86[17] → P145 → E21 •    
 → P146i → E86[17] → P4 → E52[19] → P82b → xsd:dateTimeTime</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/d779a1b5-2d00-4f0b-81b3-5f7fc3a5f7dd.png)

### Activities

This category brings together documentary evidence with regards to various typical events in which a documented group may typically be involved. Note the production of publications is considered as an activity and documented as such. 

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Scope of Activity</td>
    <td>This field is used to indicate the general types of activity that a group holds as its competency</td>
    <td> → P14i → F51 → R59 → E55["Field of Activity"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Activity/Floruit - Earliest date</td>
    <td>This field is used to indicate the starting date of the documented period of great activity/flourishing of the referenced group.</td>
    <td> → P14i → F51[14] → P4 → E52 → P82a → xsd:dateTime •     
 → P14i → F51[14] → P2 → E55["Field of Activity"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Activity/Floruit - Latest date</td>
    <td>This field is used to indicate the starting date of the documented period of great activity/flourishing of the referenced group.</td>
    <td> → P14i → F51[14] → P4 → E52 → P82b → xsd:dateTime •     
 → P14i → F51[14] → P2 → E55["Field of Activity"]</td>
  </tr>
   <tr>
    <td>n/a</td>
    <td>Activity/Floruit Place</td>
    <td>This field is used to indicate the place of the period of greatest activity/flourishing of the documented group.</td>
    <td> → P14i → F51[14] → P7 → E53 •     
 → P14i → F51[14] → P2 → E55["Field of Activity"]</td>
  </tr>
  <tr>
    <td>Well Known Events</td>
    <td>Event</td>
    <td>This field is used to indicate well known events in which the documented group participated.</td>
    <td> → P11i → E7[211] {use event reference model}</td>
  </tr>
   <tr>
    <td>n/a</td>
    <td>Publications</td>
    <td>This field is used to indicate well known publications that a group author.</td>
    <td> → P14i → E65 → P94 → E73</td>
  </tr>
</table>


### ![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/53c8f9db-17ad-4a25-8229-3b738e992c26.png)

### Location

The documentation of location aids in understanding where a group is seated as well as in understanding how they are dispersed geographically. This information category gathers together relevant descriptors for this task.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>Location</td>
    <td>Address</td>
    <td>This field is used to document an address of the group.</td>
   <td> → P74 → E53[20] → P1 → E41[21]</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Group Address Type</td>
    <td>This field is used to document the instance of the type of an group address.</td>
    <td> → P74 → E53[20] → P1 → E41[21] → P2 → E55</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Group Coordinates</td>
    <td>This field is used to indicate the coordinates for the location of the group.</td>
    <td> → P74 → E53[20] → P168 → geo:wktLiteral</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Group Location Type</td>
    <td>This field is used to indicate the type of the location that is documented with regards to the address. Groups may have many different locations. This descriptor enables the differentiation of the groups's different locales.</td>
    <td> → P74 → E53[20] → P2 → E55</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/3ef397d8-5c80-44e3-b128-2697b4f00689.png)

### Documentation

This information category unites referential information about the documented group.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E74 Group</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Image</td>
    <td>This field is used to indicate a digital image which is representative of the documented group.</td>
    <td> → P138i → E36/D9</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented group.</td>
    <td> → P129i → E73[22] → rdf:value → rdf:Literal •    
 → P129i → E73[22] → P2 → E55 "Citation" •    
 → P129i → E73[22] → P67 → E73 [from Bibliography Entity Type]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Description</td>
    <td>This field is used to store short descriptive texts about the documented group.</td>
    <td> → P129i → E73[23] → rdf:value → rdf:Literal •      
 → P129i → E73[23] → P2 → E55 "Description" •    
 → P129i → E73[23] → P72 → E56</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/694cc8f5-33d9-4160-8997-0aad781ac7ed.png)

