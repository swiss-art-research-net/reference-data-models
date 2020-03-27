# Bibliographic Item Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The bibliographic item reference data model provides a list of standard fields that are often found present in the general description of a bibliographic item. The scope of this reference model is the bibliographic item as information object and pointer to real world instances of the publication; this model aims to provide a streamlined list of common descriptors for a bibliographic item and not a complete representation of all aspects of a real bibliographic record. Rather, we are interested here in representing the types of information that are typically gathered by scholars relative to a publication in their creation of bibliographies for use in scholarship and used as the basis for citations. This reference model aims to remain at a general level description, providing a consolidated, high level reference data model of most commonly reused descriptors for a bibliographic item as such and to provide for these in turn a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## 

## Sources

In formulating this reference model, we have made reference to some well known bibliographic standards, but in practice found it most useful to refer to commonly used bibliography generation tools such as Zotero to identify required fields. 

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</th>
  </tr>
  <tr>
    <td>CiTO</td>
    <td>CiTO, the Citation Typing Ontology</td>
    <td></td>
    <td>https://sparontologies.github.io/cito/current/cito.html</td>
    <td>David Shotton
Silvio Peroni</td>
  </tr>
  <tr>
    <td>BIBO</td>
    <td>Bibliographic-Ontology-BIBO</td>
    <td>http://bibliontology.com/</td>
    <td>https://github.com/structureddynamics/Bibliographic-Ontology-BIBO/blob/master/bibo.owl</td>
    <td>Frédérick Giasson - Structured Dynamics</td>
  </tr>
  <tr>
    <td>BIBFRAME</td>
    <td></td>
    <td>http://id.loc.gov/ontologies/bibframe-category.html</td>
    <td></td>
    <td>Library of Congress</td>
  </tr>
  <tr>
    <td>Marc21</td>
    <td>Marc 21 - Bibliography Heading Fields</td>
    <td>http://www.loc.gov/marc/</td>
    <td>http://www.loc.gov/marc/bibliographic/</td>
    <td>Library of Congress</td>
  </tr>
  <tr>
    <td>ISBD</td>
    <td>International Standard Bibliographic Description</td>
    <td>https://www.ifla.org/best-practice-for-national-bibliographic-agencies-in-a-digital-age/node/8912</td>
    <td>https://www.ifla.org/files/assets/cataloguing/isbd/isbd-cons_20110321.pdf</td>
    <td>IFLA</td>
  </tr>
</table>


## Model Sections Description

The fields used to describe a bibliographic item can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to a bibliographic item, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Description</td>
    <td>This category is used to gather together information regarding significant descriptions given of the bibliographic item by known authors/sources.</td>
  </tr>
  <tr>
    <td>3 </td>
    <td>Part/Whole</td>
    <td>This category is used to bring together information relevant to the mereological relations between a bibliographic item and other bibliographic items.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Existence</td>
    <td>This category gathers together descriptors relevant to the tracking of the creation of a bibliographic item.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Actor Relations</td>
    <td>This category gathers together descriptors relevant to tracking the significant relations between the bibliographic item and known actors. Primary of such relations are those of creator to the work. </td>
  </tr>
  <tr>
    <td>6</td>
    <td>Substance</td>
    <td>This category gathers together descriptors used for stating the physical constitutional features of the documented bibliographic item.</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Aboutness</td>
    <td>This category gathers together descriptors regarding the topic coverage recognised to be covered in the documented bibliographic item. </td>
  </tr>
  <tr>
    <td>8</td>
    <td>Physical Holdings</td>
    <td>This category gathers together information regarding physical holdings of a bibliographic item held by institutions .</td>
  </tr>
</table>



### Names and Classifications

The attribution of names and types to bibliographic item, as with other entities, is a basic human activity. In the context of bibliographic items, titles and subtitles as well as the language of these are of high importance in tracing the individual bibliographic item. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>Identifier Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented bibliographic item.</td>
    <td>→ P1→ E42[1]</td>
  </tr>
  <tr>
    
    <td>Identifier Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented bibliographic item.</td>
    <td>→ P1→ E42[1]→ P2→ E55["Identifier Type"]</td>
  </tr>
  <tr>
    
    <td>Identifier Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the provider of the identifier attributed to the documented bibliographic item.</td>
    <td>→ P1→ E42[1]→ P37i→ E15[2]→ P14→ E39</td>
  </tr>
  <tr>
    
    <td>Identifier Attribution</td>
    <td>Identifier Source</td>
    <td>This field is used to indicate the source based on which the identifier was attributed to the bibliographic item.</td>
    <td>→ P1→ E42[1]→ P37i→ E15[2]→ p16→ E73</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the form of the bibliographic item.</td>
    <td>→ p2→ E55</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Title</td>
    <td>This field is used to indicate the main name attributed to the documented bibliographic item. No part break down of name is here implied. The full name of an individual is expected here where available.</td>
    <td>→ P1→ E41[3]    
→ P1→ E41[3]→ P2→ E55['Preferred Title']</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Title Language</td>
    <td>This field is used to indicate the language of the name attributed to the bibliographic item.</td>
    <td>→ P1→ E41[3]→ p72→ E56</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Part of Title</td>
    <td>This field is used to indicate a sub part of the title attributed to the documented bibliographic item. It can be used, for example, to documeent a 'subtitle' separately to the whole title.</td>
    <td>→ P1→ E41[3]→ P106→ E41[4]→ P2→ E55['Part of Title']</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Part of Title Language</td>
    <td>This field is used to indicate the language of the part of the title attributed to the bibliographic item.</td>
    <td>→ P1→ E41[3]→ P106→ E41[4]→ p72→ E56</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Language</td>
    <td>This field is used to indicate the language of the documented bibliographic item.</td>
    <td>→ P72→ E56</td>
  </tr>
</table>


The model provides means for tracking identifiers and titles, as well as linguistic classification of the item.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/eab554ea-8b6f-4e30-a9df-1343750dafe3.png)

### Description

Bibliographic items, will often have an ‘abstract’ describing them as well as other potential texts such as critiques. The descriptions descriptors allow for the open ended representation of such free text descriptions of the bibliographic item.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Type</td>
    <td>This field is used to indicate the type of description given of the documented instance of bibliographic item.</td>
    <td>→ P129i→ E73[5]→ P2→ E55</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Author</td>
    <td>This field is used to indicate the author of the description given of the documented instance of bibliographic entity</td>
    <td>→ P129i-→ E73[5]→ P94i→ E65[6]-p14→ E39</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the creation of the description of the documented instance of bibliographic item.</td>
    <td>→ P129i-→ E73[5]→ P94i→ E65[6]→ P4→ E52[7]→ P82a→ xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the description of the documented instance of bibliographic item.</td>
    <td>→ P129i-→ E73[5]→ P94i→ E65[6]→ p4→ E52[7]→ P82b→ xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description</td>
    <td>This field is used to indicate a description of the documented instance of bibliographic item.</td>
    <td>→ P129i-→ E73[5]→ has:value→ Literal
→ P129i-→ E73[5]→ p2→ E55"Description"
→ P129i→ E73[5]→ p72→ E56</td>
  </tr>
</table>


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/c70ea493-3c24-4f65-b550-e22a061d820c.png)

### Parthood

With regards to parthood a simple pattern is modelled here. A bibliographic item should also indicate if it belongs to a greater bibliographic item in order to enable the tracing of the relevant volumes and professionals. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Part of</td>
    <td>This field is used to indicate the belonging of the particular bibliographic item to a larger bibliographic unit, such as the relation between a chapter and a book, an article and a journal issue etc.</td>
    <td>→ P106i→ F24[8]
→ P106i→ F24[8]→ p2→ E55</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/0adf04a1-22f3-45ff-a9c7-9899ff0b39a6.png)

### Existence

The publication period of a bibliographic item helps establish its particular identity. The dates and place are important to understand which edition of a work we speak of and refer to. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>Publication</td>
    <td>Publication Place</td>
    <td>This field is used to indicate the place of birth of the documented bibliographic item.</td>
    <td>→ R24i→ F30[9]→ P7→ E53</td>
  </tr>
  <tr>
    
    <td>Publication</td>
    <td>Publication Date - Earliest</td>
    <td>This field is used to indicate the earliest known date for the birth of the documented bibliographic item.</td>
    <td>→ R24i→ F30[9]→ P4→ E52[10]→ P82a→ xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Publication</td>
    <td>Publication Date - Latest</td>
    <td>This field is used to indicate the latest known date for the birth of the documented bibliographic item.</td>
    <td>→ R24i→ F30[9]→ P4→ E52[10]→ P82b→ xsd:dateTime</td>
  </tr>
</table>


Note that while ontologically speaking the agency of the creator could be documented as part of this information unit, we have instead clustered this data in the Actors Relations category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/901f87dd-c5c7-4a7d-ab51-f7cfab1be059.png)

### Actor Relations

In this modelling we identify the publisher but also the authors and other contributors via their roles as creators the bibliographic item. These relations are important in identifying the correct bibliographic item.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>Publication</td>
    <td>Publisher</td>
    <td>This field is used to indicate the publisher of the bibliographic item.</td>
    <td>→ R24i→ F30[9]→ P01→ PC14[11]→ P02→ E39
→ R24i→ F30[7]→ P01→ PC14[11]→ P14.1→ E55"Publisher"</td>
  </tr>
  <tr>
    
    <td>Authorship</td>
    <td>Author</td>
    <td>This field is used to indicate authors, contributors and other producers of the content of the bibliographic item.</td>
    <td>→ R24i→ F30[9]→ P01→ PC14[11]→ P02→ E39</td>
  </tr>
  <tr>
    
    <td>Authorship</td>
    <td>Role</td>
    <td>This field is used to indicate the role of the author, conitrbutor and other producers of content of the bibliographic item in creating that content.</td>
    <td>→ R24i→ F30[9]→ P01→ PC14[11]→ P14.1→ E55</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/033a1e23-05a1-4271-b778-3caadec6bc3d.png)

### Substance

The standard information available with regards to the substance of a bibliographic item relates to the dimensions of the volume that carries it. These can be recorded as dimensions.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Number of Pages</td>
    <td>This field is used to indicate the number of pages in a volume using free text.</td>
    <td>→ p43→ E54[12]→ p129i→ E73→ rdfs:hasvalue→ Literal
→ p43→ E54[12]→ P2→ E55"Page Numbers"</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/d11ac12f-b313-4a7d-bf5c-3b56bc0d0ccb.png)

### Aboutness

The use of the bibliographic item to the researcher lies in its role as an information carrier which bears a certain information object which can be consulted in order to get evidence with regards to some phenomena in the past or present. Thus the representative aspect of the bibliographic item is of prime documentary concern. In this category there is a categorization of the pertinence of the information object with regards to major real world referents: time, space and topic. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Temporal Reference</td>
    <td>This field is used to indicate the temporal coverage associated with the documented bibliographic item. It is meant to capture the temporal area to which this item can be associated as having relevance.</td>
    <td>→ p129→ E4</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Physical Geographic Reference</td>
    <td>This field is used to indicate the geographic coverage associated with the documented bibliographic item. It is meant to capture the geographic area to which this item can be associated as having relevance.</td>
    <td>→ p129→ E53</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Subject Reference</td>
    <td>This field is used to indicate the subject of representation of the documented archival item. It is meant to capture general subject areas, not particular individual items represented.</td>
    <td>→ p129→ E55</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/eb9a7c48-cd04-48b6-ab1a-1a9d72b2440b.png)

### Item Information

The documentation of physical holdings allows the optional tracking of individual physical holdings held by institutions and where they are held, in order to aid scholars in retrieving copies of bibliographic items.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>F24/E33 Publication Expression→ p2→ E55"Bibliographic Item"</th>
  </tr>
  <tr>
    
    <td>ID</td>
    <td>Item Identifier</td>
    <td>This field is used to indicate the identification number for a library item carrying this bibliographic item.</td>
    <td>→ p128i→ E22[13]→ p1→ E42</td>
  </tr>
  <tr>
    
    <td>Actor Relation</td>
    <td>Item Owner</td>
    <td>This field is used to indicate the institution possessing the library item carrying this bibliographic item.</td>
    <td>→ p128i→ E22[13]→ p51→ E39</td>
  </tr>
  <tr>
    
    <td>Location</td>
    <td>Present Item Location - Shelf</td>
    <td>This field is used to indicate the shelf location at which a bibliographic item can be found.</td>
    <td>→ p128i→ E22[13]→ p53→ E53[14]→ p1→ E41
→ p128i→ E22[13]→ p53→ E53[14]→ P2→ E55"Shelf Location"
→ p128i→ E22[13]→ p53→ E53[14]→ P89→ E53[15]</td>
  </tr>
  <tr>
    
    <td>Location</td>
    <td>Present Item Location - Institution</td>
    <td>This field is used to document the institution at which the documented artwork is presently located.</td>
    <td>→ p128i→ E22[13]→ p53→ E53[15]→ P74i→ E74[16]
→ p128i→ E22[13]→ p53→ E53[15]→ P74i→ E74[16]→ p2→ E55["Institution"]
→ p128i→ E22[13]→ p53→ E53[15]→ P2→ E55"Institutional Location"</td>
  </tr>
  <tr>
    
    <td>Location</td>
    <td>Present Item Location - Institution Address</td>
    <td>This field is used to document the address of the institution at which the documented artwork is presently located.</td>
    <td>→ p128i→ E22[13]→ p53→ E53[15]→ P1→ E41[17]
→ p128i→ E22[13]→ p53→ E53[15]→ P1→ E41[17]→ P2→ E55"Address"
→ p128i→ E22[13]→ p53→ E53[15]→ P2→ E55"Institutional Location"</td>
  </tr>
  <tr>
    
    <td>Location</td>
    <td>Present Item Location - Institutionn coordinates</td>
    <td>This field is used to indicate the coordinates for the institution at which the documented is presently located.</td>
    <td>→ p128i-E22[13]→ p53→ E53[15]→ P168→ geo:wkt
→ p128i-E22[13]→ p53→ E53[15]→ P2→ E55"Institutional Location"</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f0df58b7-fccb-421e-b40d-353e098af4c7.png)

