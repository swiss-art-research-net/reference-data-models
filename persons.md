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

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</td>
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
    <td>MARC 21</td>
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
    <td>CCO</td>
    <td>Cataloging Cultural Objects</td>
    <td>http://cco.vrafoundation.org/index.php/</td>
    <td>http://cco.vrafoundation.org/index.php/toolkit/cco_pdf_version/</td>
    <td>CCO Commons</td>
  </tr>
  <tr>
    <td>VRA Core</td>
    <td>Visual Resources Association core categories</td>
    <td>http://www.loc.gov/standards/vracore/schemas.html</td>
    <td>http://www.loc.gov/standards/vracore/VRA_Core4_Element_Description.pdf</td>
    <td>Visual Resources Association</td>
  </tr>
</table>


## Model Sections Description

The fields used to describe a person can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This information category gathers together descriptors used for assigning names and types to a person, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Existence</td>
    <td>This information category gathers together descriptors relevant to the tracking of the birth and death of a person.</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Social Relations</td>
    <td>This information category gathers together descriptors relevant to tracking the social relations of a person to other people and actors.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Knowledge</td>
    <td>This information category gathers together descriptors used for documenting the knowledge known to be had by a person.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Activities</td>
    <td>This information category gathers together descriptors used for documenting different activities that a person is known to have been involved in or with.</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Documentation</td>
    <td>This information category gathers together different documentary descriptors that provide reference information with regards to a person.</td>
  </tr>
</table>


### Names and Classifications

The attribution of names and types to persons is a basic human activity. A chief factor in disambiguating which person is referred to in historical texts is understanding the various names and identifiers that have been given to an individual at different moments. Likewise, additional classifiers of the individual as such, such as gender, help in the disambiguation, in an information system, of the reference to one real-world individual from another.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented person.</td>
    <td> → P1 → E42[1]</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented person.</td>
    <td> → P1 → E42[1] → P2 → E55["Identifier Type"]</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the provider of the identifier attributed to the documented person</td>
    <td> → P1 → E42[1] → P37i → E15 → P14 → E39</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Source</td>
    <td>This field is used to indicate the source based on which the identifer was attributed to the object.</td>
    <td> → P1 → E42[1] → P37i → E15 → P16 → E73</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Name</td>
    <td>This field is used to indicate the main name attributed to the documented person. No part break down of name is here implied. The full name of an individual is expected here where available.</td>
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
    <td>Honorific</td>
    <td>This field is used to indicate titles or honorifics attributed to the documented person.</td>
    <td> → P1 → E41[3] •   
 → P1 → E41[3] → P2 → E55['Title']</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name</td>
    <td>This field is used to indicate additional names under which the documented person is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td> → P1 → E41[5]</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented person.</td>
    <td> → P1 → E41[5] → P2 → E55</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of this name for the documented person.</td>
    <td> → P1 → E41[5] → R64i → F52[4] → P4 → E52[6] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of this name for the documented person.</td>
    <td> → P1 → E41[5] → R64i → F52[4] → P4 → E52[6] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Gender</td>
    <td>This field is used to indicate the gender of the documented person.</td>
    <td> → P2 → E55 [e.g. URIs for controlled vocabulary]</td>
  </tr>
</table>


The model provides means for tracking identifiers, present and past name use, titles and gender.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/acf58953-c7f4-4356-80ed-ed4f7ddf97e4.png)

### Existence

Of essential importance in identifying and tracking individuals is also their biographical information, such as their birth and death. For this reason, we have clustered descriptors relevant to such information into a common ‘existence’ category. These are described in the table below.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  <tr>
    <td>Birth</td>
    <td>Birth Place</td>
    <td>This field is used to indicate the place of birth of the documented person.</td>
    <td> → P98i → E67[7] → P7 → E53</td>
  </tr>
  <tr>
    <td>Birth</td>
    <td>Birth Date - Earliest</td>
    <td>This field is used to indicate the earliest known date for the birth of the documented person.</td>
    <td> → P98i → E67[7] → P4 → E52[8] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Birth</td>
    <td>Birth Date - Latest</td>
    <td>This field is used to indicate the latest known date for the birth of the documented person.</td>
    <td> → P98i → E67[7] → P4 → E52[8] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Death</td>
    <td>Death Place</td>
    <td>This field is used to indicate the place of death of the documented person.</td>
    <td> → P100i → E69[9] → P7 → E53</td>
  </tr>
  <tr>
    <td>Death</td>
    <td>Death Date - Earliest</td>
    <td>This field is used to indicate the earliest known date for the death of the documented person.</td>
    <td> → P100i → E69[9] → P4 → E52[10] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Death</td>
    <td>Death Date - Latest</td>
    <td>This field is used to indicate the latest known date for the death of the documented person.</td>
    <td> → P100i → E69[9] → P4 → E52[10] → P82b → xsd:dateTime</td>
  </tr>
</table>


The above structure allows for the documentation of time and place of birth and death of an individual. Note that while ontologically speaking mothers and fathers could be connected to birth information, with regards to information clustering we have placed this information in the social relations category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/32fab876-772f-405e-8a86-61af9e4b519d.png)

### Social Relations

A large area of documentation and potential disambiguation around the person relates to social relations, whether they are familial, interpersonal or institutional. The social relations information category brings together descriptors for these relations into a larger group, covering relations starting from the maternal, moving to the most general membership in national and cultural blocks and different interpersonal connections.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  
  <tr>
    <td>n/a</td>
    <td>Father</td>
    <td>This field is used to indicate the biological father of the documented person.</td>
    <td> → P98i → E67[11] → P97 → E21</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Mother</td>
    <td>This field is used to indicate the biological mother of the documented person.</td>
    <td> → P98i → E67[11] → P96 → E21</td>
  </tr>
  <tr>
    <td>Social Relations</td>
    <td>Relation</td>
    <td>This field is used to indicate another person with whom the documented person has a social relation.</td>
    <td> → P01 has domain → SRPC3_in_social_relation → P02 has range → E21</td>
  </tr>
  <tr>
    <td>Social Relations</td>
    <td>Relation Type</td>
    <td>This field is used to indicate the type of social relation holding between the other person and the documented person.</td>
    <td> → P01 has domain → SRPC3_in_social_relation → SRP3_relation_type → E55 "Social Relation Type"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>National Affiliation</td>
    <td>This field is used to indicate the membership of the documented person in a nationality group. The larger group is meant as an actual existing national body of actors with their own identity.</td>
    <td> → P107i → E74[12] •   
 → P107i → E74[12] → E55["National Group"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Cultural Affiliation</td>
    <td>This field is used to indicate the membership of the documented person in a cultural group. The larger group is meant as an actual existing cultural body of actors with their own identity.</td>
    <td> → P107i → E74[13] •   
 → P107i → E74[13[ → E55["Cultural Group"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Institutional Affiliation</td>
    <td>This field is used to indicate the membership of the documented person in an institution. The referenced entity should be an institution.</td>
    <td> → P143 → E85[155] → P01 → PC144 → P02 → E74[777] → P2 → E55["Institution"] </td>
  </tr>
    <tr>
    <td>n/a</td>
    <td>Institutional Affiliation - Role </td>
    <td>This field is used to indicate the type of role of the documented person in an institution. </td>
    <td> → P143 → E85[155] → P01 → PC144 → P144.1 → E55["Position"] </td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Institutional Affiliation Start Date - Earliest</td>
    <td>This field is used to indicate the earliest known date of becoming an member of an institution by the documented individual.</td>
    <td> → P143 → E85[155] → P4 → E52[166] → P82a → xsd:dateTimeTime </td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Institutional Affiliation Start Date - Latest</td>
    <td>This field is used to indicate the latest known date of becoming an member of an institution by the documented individual.</td>
    <td> → P143 → E85[155] → P4 → E52[166] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Institutional Affiliation End Date - Earliest</td>
    <td>This field is used to indicate the earliest known date of ceasing to be an member of an institution by the documented individual.</td>
    <td>  → P145 → E86[177] → P146 → E74[777] •  
 P145 → E86[177] → P4 → E52[18] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Institutional Affiliation End Date - Latest</td>
    <td>This field is used to indicate the latest known date of ceasing to be an member of an institution by the documented individual.</td>
    <td>  → P145 → E86[177] → P146 → E74[777] •    
 → P145 → E86[177] → P4 → E52[19] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Associates</td>
    <td>Associate</td>
    <td>This field is used to indicate that the documented person participated in the same event as another one, but it does not imply an existing association between the two.</td>
    <td> → P11i → E5 → P11 → E21</td>
  </tr>
  </table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/c44488f1-8a53-4713-b2e5-b18b51cdf6cb.png)

### Knowledge

This information category at present is lightly populated but refers to a distinct genre of information regarding the knowledge of a documented person.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  <tr>
    <td>n/a</td>
    <td>Languages</td>
    <td>This field is used to indicate language(s) known by the documented person.</td>
    <td> → SRP1_used_language → E56</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/038b8588-600a-4d31-8b18-aafdcd87dc60.png)

### Activities

This category brings together the various actions in which the documented person has taken part during their lifetime. It is meant to cover information concerning the period of highest activity, the kinds of activity undertaken, specific acts of creation, and participation in well-known events.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  
  <tr>
    <td>n/a</td>
    <td>Floruit - Earliest date</td>
    <td>This field is used to indicate the starting date of the documented period of great activity/flourishing of the referenced individual.</td>
    <td> → P14i → F51[14] → P4 → E52 → P82a → xsd:dateTime •     
 → P14i → F51[14] → P2 → E55["Floruit"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Floruit - Latest date</td>
    <td>This field is used to indicate the starting date of the documented period of great activity/flourishing of the referenced individual.</td>
    <td> → P14i → F51[14] → P4 → E52 → P82b → xsd:dateTime •     
 → P14i → F51[14] → P2 → E55["Floruit"]</td>
  </tr>
   <tr>
    <td>n/a</td>
    <td>Floruit Place</td>
    <td>This field is used to indicate the place of the period of greatest activity/flourishing of the documented individual.</td>
    <td> → P14i → F51[14] → P7 → E53 •     
 → P14i → F51[14] → P2 → E55["Floruit"]</td>
  </tr>
     <tr>
    <td>n/a</td>
    <td>Floruit Subject</td>
    <td>This field is used to indicate the subject of the period of greatest activity/flourishing of the documented individual.</td>
    <td> → P14i → F51[14] → R59 → E55 ["Field of Activity"]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Occupation/General Role</td>
    <td>This field is used to indicate occupations/general roles that the documented person played in their life. This documentation is at the level of a general characteristic and is not the documentation of particular periods in which occupations/roles were undertaken.</td>
    <td> → SRP2_had_occupation → E55</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Related Works</td>
    <td>This field is used to indicate related works that the documented person was primarily responsible for as creator.</td>
    <td>P14i → E12 → P108 → E22</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Field of Activity</td>
    <td>This field is used to indicate different activities which the documented person pursued during their lifetime. Each individual field of activity should be documented separately so that it can be tracked individually.</td>
    <td> → P14i → F51[333] → R59 → E55</td>
  </tr>
 <tr>
    <td>n/a</td>
    <td>Period of Activity - Earliest</td>
    <td>This field is used to indicate the earliest known date of a period of an activity which the documented person pursued during their lifetime. </td>
    <td> → P14i → F51[333] → P4 → E52[6] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Period of Activity - Latest</td>
    <td>This field is used to indicate the latest known date of a period of an activity which the documented person pursued during their lifetime. </td>
    <td> → P14i → F51[333] → P4 → E52[6] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Educational Training</td>
    <td>This field is used to indicate the subject of the education of the documented person</td>
    <td> P14i → F51[444] → P2 → E55 "Education"  •  
    → P14i → F51[444] → R59 → E55</td>
  </tr>

  <tr>
    <td>n/a</td>
    <td>Well Known Events</td>
    <td>This field is used to indicate well known events in which the documented person participated/acted as witness.</td>
    <td> → P11i → E5</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f66c230e-4953-4148-8398-f32168c2dcb9.png)

### Documentation

This information category unites referential information about the documented person, providing contextual data about him or her.

<table>
  <tr>
   <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>CRM Entity: E21 Person</th>
  </tr>  <tr>
    <td>n/a</td>
    <td>Image</td>
    <td>This field is used to indicate a digital image which is representative of the documented person.</td>
    <td> → P138i → E36/D9</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate citations that stand as reference documentation for the documented person.</td>
    <td> → P67i → E73[16] → rdf:value → rdf:Literal •   
 → P67i → E73[16] → P2 → E55 "Citation"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Biography</td>
    <td>This field is used to store short biographical texts about the documented person.</td>
    <td> → P67i → E73[15] → rdf:value → rdf:Literal  •   
 → P67i → E73[15] → P2 → E55 "Biography" •   
→ P67i → E73[15] → P72 → E56</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/6b376bc7-2805-4d5e-9138-668163748b37.png)

