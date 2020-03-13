# Artwork Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

## Introduction

The artwork reference data model provides a list of standard fields that are typically present in the general description of an artwork in a cultural heritage data system. The artwork is taken here in the sense of a movable, physical work of some sort such as would be typically inventoried by a museum. Specific documentation of elements of an artwork depends highly upon the kind of artwork it is. This reference model does not intend to cover such specificities but to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for an artwork and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.



## Sources

The decision on which fields to represent was based on a survey of significant, extant data sources of interest to the project. These were:

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</th>
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
    <td>Dublinc Core</td>
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
  <tr>
    <td>VRA Core</td>
    <td>Visual Resources Association core categories</td>
    <td>http://www.loc.gov/standards/vracore/schemas.html</td>
    <td>http://www.loc.gov/standards/vracore/VRA_Core4_Element_Description.pdf</td>
    <td>Visual Resources Association</td>
  </tr>
</table>


## Model Sections Description

The fields used to describe an artwork can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to an artwork, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Description</td>
    <td>This category is used to gather together information regarding significant descriptions given of a work by known authors/sources.</td>
  </tr>
  <tr>
    <td>3 </td>
    <td>Part/Whole</td>
    <td>This category is used to bring together information relevant to the mereological relations between an artwork and its parts.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Existence</td>
    <td>This category gathers together descriptors relevant to the tracking of the creation and destruction of an artwork.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Actor Relations</td>
    <td>This category gathers together descriptors relevant to tracking the significant relations between the artwork and known actors. Primary of such relations are those of creator to the work. </td>
  </tr>
  <tr>
    <td>6</td>
    <td>Substance</td>
    <td>This category gathers together descriptors used for stating the physical constitutional features of the documented artwork.</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Representation</td>
    <td>This category gathers together descriptors regarding the representational level recognised to be present in the documented artwork. </td>
  </tr>
  <tr>
    <td>8</td>
    <td>Events</td>
    <td>This category gathers together information about significant documented events that an artwork may go through.</td>
  </tr>
  <tr>
    <td>9</td>
    <td>Location</td>
    <td>This category gathers together information regarding the present location of a documented artwork.</td>
  </tr>
  <tr>
    <td>10</td>
    <td>Rights</td>
    <td>This category gathers together information regarding the rights claims on a documented artwork.</td>
  </tr>
  <tr>
    <td>11</td>
    <td>Documentation</td>
    <td>This category gathers together different descriptors that provide reference information with regards to an artwork.</td>
  </tr>
</table>


### Names and Classifications

The attribution of names and types to artwork, as with other entities, is a basic human activity. A chief factor in disambiguating artworks lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Likewise, additional classifiers of the artwork, such as how it has been classified as an object as such, give important distinguishing characteristics.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented instance of artwork.</td>
    <td> → P1 → E42[1]</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented person.</td>
    <td> → P1 → E42[1] → P2 → E55 "Identifier Type"</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the institution providing the artwork it's ID.</td>
    <td> → P1 → E42[1] → P37i → E15 → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Title</td>
    <td>This field is used to indicate the main name attributed to the documented artwork.</td>
    <td> → P1 → E41   
   → P1 → E41 → P2 → E55['Preferred Title']</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the formal type of object an artwork is.</td>
    <td> → P2 → E55[3]
 → P2 → E55[3] → P71 → E32</td>
  </tr>
  <tr>
    <td>Alternate Title</td>
    <td>Alternative Title</td>
    <td>This field is used to indicate additional names under which the documented artwork is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td> → P1 → E41[4]</td>
  </tr>
  <tr>
    <td>Alternate Title</td>
    <td>Alternate Title Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented artwork.</td>
    <td> → P1 → E41[4] → P2 → E55</td>
  </tr>
  <tr>
    <td>Alternate Title</td>
    <td>Alternate Title Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of this name for the documented artwork.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Alternate Title</td>
    <td>Alternate Title Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of this name for the documented artwork.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Alternative Title - Used by</td>
    <td>This field is used to indicate the actor by whom the title attributed to the artwork is/was used.</td>
    <td> → R63i → F52[5] → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Style - Movement</td>
    <td>This field is used to associate the documented artwork to a group of actors that collectively form an artistic movement.</td>
    <td> → P140i → E13[8] → P141 → E74
 → P140i → E13[8] → P2 → "P15 is influenced by"</td>
  </tr>
</table>


The model provides means for tracking identifiers, present and past name use, titles and well-known artwork classifiers.

![!names and classification](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/917e212a-3381-4250-bef7-0c62472fa7e6.png)

### Description

Artworks are the subjects of innumerable descriptions that provide a wide range of information with regards to the aesthetic and historical importance of a work, *inter alia*. Such descriptions are of use in a scholarly understanding of an artwork and its reception just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary to this task are documented in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description</td>
    <td>This field is used to indicate a description of documented artwork</td>
    <td> → P67i → E73[9] → rdf:value → rdf:Literal   •   
    → P67i → E73[9] → P72 → E56</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Type</td>
    <td>This field is used to indicate the type of description given of the documented work.</td>
    <td> → P67i → E73[9] → P2 → E55</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Author</td>
    <td>This field is used to indicate the author of the description fiven of the documented work.</td>
    <td> → P67i → E73[9] → P94i → E65[10] → P14 → E39</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Earliest</td>
    <td>This field is used to indicate the ealiest date for the creation of the description of the documented work.</td>
    <td> → P67i → E73[9] → P94i → E65[10] → P4 → E52[11] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the description of the documented work.</td>
    <td> → P67i → E73[9] → P94i → E65[10] → P4 → E52[11] → P82b → xsd:dateTime</td>
  </tr>
</table>


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/edcf837d-9e96-468f-958e-029aa136d7e0.png)

### Parthood

Artwork may require documentation not just as a whole, but with regards to its parts. This information category gathers together the basic descriptors typically deployed to this end.  

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Parts</td>
    <td>This field is used to indicate parts of the documented artwork.</td>
    <td> → P46 → E22</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Part Types</td>
    <td>This field is used to indicate part types for the documented artwork.</td>
    <td> → P46 → E22 → P2 → E55</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Part Count</td>
    <td>This field is use to indicate part counts for the documented part types.</td>
    <td> → P57 → rdf:literal</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/d4da3113-8960-4232-be02-86e32f9fc122.png)

### Existence

Of essential import in identifying and tracking artwork is information pertaining to its existence in time, particularly information regarding its creation and destruction. For this reason, we have clustered descriptors relevant to such information in a common ‘existence’ category. These are described in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>Production</td>
    <td>Production Location</td>
    <td>This field is used to indicate the place of the creation of the documented artwork.</td>
    <td> → P108i → E12[12] → P7 → E53</td>
  </tr>
  <tr>
    <td>Production</td>
    <td>Production Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the creation of the documented artwork.</td>
    <td> → P108i → E12[12] → P4 → E52[13] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Production</td>
    <td>Production Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the documented artwork.</td>
    <td> → P108i → E12[12] → P4 → E52[13] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction Location</td>
    <td>This field is used to indicate the place of the destruction of the documented artwork.</td>
    <td> → P13i → E6[14] → P7 → E53</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the destruction of the documented artwork.</td>
    <td> → P13i → E6[14] → P4 → E52[15] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction Date - Latest</td>
    <td>This field is used to indicate the latest date for the destruction of the documented artwork.</td>
    <td> → P13i → E6[14] → P4 → E52[15] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Period</td>
    <td>This field is used to indicate the historical period in which the creation of the documented artwork occured.</td>
    <td> → P108i → E12[16] → P10 → E4</td>
  </tr>
</table>


The above structure allows for the documentation of time and place of the creation and destruction of an individual artwork. Note that while ontologically speaking the agency of the creator and destroyer in the events of creation and destruction could be documented as part of this information unit, we have instead clustered this data in the Actors Relations category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/dfee7e95-8b4a-4b58-ba9d-1a4e55e5c20c.png)

### Actor Relations

The connection between artwork and actors provides another important set of descriptors for identifying and tracing an artwork. Particularly, basic interest clusters around the individuals involved in the creation of the artwork and those who own and/or hold the artwork presently. The actor relations information gathers these together.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator</td>
    <td>This field is used to indicate the artist or creator of the documented artwork.</td>
    <td> → P108i → E12[16] → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator Role</td>
    <td>This field is used to indicate the role played by the artist or creator in the creation of the documented artwork.</td>
    <td> → P108i → E12[16] → P14 → P14.1 → E55</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Current Owner</td>
    <td>This field is used to indicate the present owner of the documented artwork.</td>
    <td> → P52 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Current Holder</td>
    <td>This field is used to indicate the current holder of the documented artwork.</td>
    <td> → P49 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Material</td>
    <td>This field is used to indicate the material of which the document artwork consists.</td>
    <td> → P45 → E57</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Technique</td>
    <td>This field is used to indicate the technique used in the production of the documented artwork.</td>
    <td> → P108i → E12[16] → P32 → E55</td>
  </tr>
</table>


These descriptors allow the connection of an artwork to its creator, present owner and holder.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/8343eb90-3aba-4371-9b93-d53ed42471ca.png)

### Substance

The analysis and understanding of an artwork depends also on our knowledge of its materiality and physical characteristics. The category of substance brings together descriptors which are relevant to this form of analysis. Particularly, it groups information having to do with the composition and measurable aspects of the artwork as object. Information regarding the decomposition of the artwork into parts is found in the parthood category.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Material</td>
    <td>This field is used to indicate the material of which the documented instance of built work consists.</td>
    <td> → P45 → E57</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Technique</td>
    <td>This field is used to indicate the technique used in the construction of the documented instance of built work.</td>
    <td> → P108i → E12 → P32 → E55 •   
 → P108i → E12 → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Type</td>
    <td>This field is used to indicate the type of measurement that the dimension of the documented instance of built work is.</td>
    <td> → P39i → E16 → P40 → E54 → P2 → E55</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Value</td>
    <td>This field is used to indicate the value of the measurement of the documented instance of built work.</td>
    <td> → P39i → E16 → P40 → E54 → P90 → xsd:decimal</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Unit</td>
    <td>This field is used to indicate the unit used to express the value of the measurement of the documented instance of built work.</td>
    <td> → P39i → E16 → P40 → E54 → P91 → E58</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Taker</td>
    <td>This field is used to indicate the actor who undertook the measurement of the documented instance of built work.</td>
    <td> → P39i → E16 → P40 → E54 → P14 → E39</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/4df428ea-e0c9-46d0-8cb9-5c5be0bc5415.png)

### Representation

This information category at present is lightly populated but provides the means to gather information relevant to the documentation of what has been documented as represented in an artwork.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Subject</td>
    <td>This field is used to indicate the subject of representation of the documented artwork. It is meant to capture general subject areas, not particular individual items represented.</td>
    <td> → P62 → E1</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/cdaf1d8b-a263-4ec1-877b-b3663bbb86c3.png)

### Events

This information category brings together typical events in which an artwork may have been involved through the course of its history. It is meant to cover information concerning the most salient events documented with regards to artworks. At present this enables the documentation of ownership periods and conservation events.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Earliest</td>
    <td>This field is used to indicate the earliest date for an ownership period of the documented artwork.</td>
    <td> → P24i → E8[19] → P4 → E52[20] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Latest</td>
    <td>This field is used to indicate the latest date for an ownership period of the documented artwork.</td>
    <td> → P24i → E8[19] → P4 → E52[20] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Owner</td>
    <td>This field is used to indicate the actor holding ownership over the documented artwork during an ownership period.</td>
    <td> → P24i → E8[19] → P22 → E39</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Description</td>
    <td>This field used to provide a free text description related to an ownership period for the documented artwork.</td>
    <td> → P24i → E8[19] → P70i → E31 → rdf:value → rdf:Literal</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Earliest</td>
    <td>This field is used to indicate the earliest date for a conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[20] → P4 → E52[21] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Latest</td>
    <td>This field is used to indicate the latest date for a conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[20] → P4 → E52[21] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Type</td>
    <td>This field is used to indicate the type of conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[20] → E55</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - technique</td>
    <td>This field is used to indicate the technique used in the conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[21] → P32 → E55</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservator</td>
    <td>This field is used to indicate the actor the carried out the conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[21] → P14 → E21</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event Description</td>
    <td>This field used to provide a free text description related to the conservation event performed on the documented artwork.</td>
    <td> → P31i → E11[21] → P70i → E31[22] •   
 → P31i → E11[21] → P70i → E31[22] → P2 → E55 "Description"</td>
  </tr>
</table>

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/d519e7e7-2069-416e-9277-f25ff6a6cbeb.png)

### Location

The documentation of location aids in tracking individual artworks as well as in understanding their dispersion geographically. This information category gathers together relevant descriptors for this task.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>Location</td>
    <td>Present Location - Institution</td>
    <td>This field is used to document the institution at which the documented artwork is presently located.</td>
    <td> → P53 → E53[24] → P74i → E74[25] •  
p53 → E53[24] → P74i → E74[25] → P2 → E55["Institution"] •  
p53 → E53[24] → P2 → E55 "Institutional Location"</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Present Location - Institution Address</td>
    <td>This field is used to document the address of the institution at which the documented artwork is presently located.</td>
    <td> → P53 → E53[24] → P1 → E41[25] •  
p53 → E53[24] → P1 → E41[25] → P2 → E55 "Address" •  
p53 → E53[24] → P2 → E55 "Institutional Location"</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Present location - coordinates</td>
    <td>This field is used to indicate the coordinates for the institution at which the documented is presently located.</td>
    <td> → P53 → E53[24] → P168 → geo:wktLiteral •  
p53 → E53[24] → P2 → E55 "Institutional Location"</td>
  </tr>
</table>

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/7f1dcef4-30a8-40db-8fda-1ba4570c7363.png)

### Rights

The potential use and re-use of an artwork and its derivatives requires respect for existing rights claims. This information category gathers together the relevant descriptors for tracking this information.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>Rights</td>
    <td>Right Holder</td>
    <td>This field is used to indicate the right holder for the documented artwork.</td>
   <td> → P104 → E30[25] → P105 → E39</td>
  </tr>
  <tr>
    <td>Rights</td>
    <td>Right Type</td>
    <td>This field is used to indicate the type of right which the right holder holds over the documented artwork.</td>
    <td> → P104 → E30[25] → P2 → E55</td>
  </tr>
  <tr>
    <td>Rights</td>
    <td>Right Description</td>
    <td>This field is used to provide a free text description of the right which the right holder holds over the documented artwork.</td>
    <td> → P104 → E30[25] → P67i → E73  
	→ P104 → E30[25] → P67i → E73 → P2 → E55
	→ P104 → E30[25] → P67i → E73 → P72 → E56
    </td>
  </tr>
</table>

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/99552ea4-4c64-47a6-989e-c4d01e998f2b.png)

### Documentation

This information category unites referential information about the documented artwork, providing contextual data about it.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Artwork"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented artwork.</td>
    <td> → P67i → E73[26] → rdf:value → rdf:Literal
 → P67i → E73[26] → P2 → E55 "Citation" •   
 → P67i → E73[26] → P67 → E73 [from Bibliography Entity Type]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Image</td>
    <td>This field document image that reference the described artwork.</td>
    <td> → P138i → E36/D9</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/35ffccdb-95f1-47df-8e99-15f63bd6bdda.png)