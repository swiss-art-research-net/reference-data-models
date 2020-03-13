# Built Work Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The built work reference data model provides a list of standard fields that are generally present in the general description of a built work in a national built heritage data register. Built work is taken here in the sense of a - typically - immovable building, or significant individual part thereof, made for some human use-function such as habitation. The fuller documentation of a built work would establish the relation of the physical work to the series of intellectual and social processes related to the production of such works, such as architectural plans, meetings, construction episodes, detailed use and modification history, specific topological relations and so on. This reference model does not intend to cover such specificities but to remain at a more general level, providing a consolidated, high-level reference data model of most commonly used descriptors for a built work and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

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
    <td>EU-Chic</td>
    <td>EU Cultural Heritage Identity Card</td>
    <td>http://euchic.eu</td>
    <td>http://euchic.eu/index.php/news/entry/chiceberg/</td>
    <td>EU-Chic</td>
  </tr>
  <tr>
    <td>BWR</td>
    <td>Built Work Registry</td>
    <td>http://builtworksregistry.org</td>
    <td></td>
    <td>Institute of Museum and Library Services (IMLS)</td>
  </tr>
  <tr>
    <td>MIDAS</td>
    <td>MIDAS Heritage</td>
    <td>http://www.heritage-standards.org.uk/midas-heritage/</td>
    <td>http://heritage-standards.org.uk/wp-content/uploads/2015/10/MIDAS_Heritage_2012_update-_v5.doc</td>
    <td>English Heritage</td>
  </tr>
  <tr>
    <td>CARARE</td>
    <td></td>
    <td>http://pro.carare.eu/doku.php?id=start</td>
    <td>http://pro.carare.eu/doku.php?id=support:metadata-schema</td>
    <td></td>
  </tr>
  <tr>
    <td>POLIS DTD</td>
    <td>Guide to Interoperationality of Cultural Heritage Information</td>
    <td>https://www.ics.forth.gr/CULTUREstandards/paradotea.htm</td>
    <td></td>
    <td>ICS-FORTH</td>
  </tr>
  <tr>
    <td>Schema.org</td>
    <td>Schema.org</td>
    <td>http://schema.org</td>
    <td></td>
    <td>Schema.org</td>
  </tr>
</table>


## Model Sections Description

The fields used to describe a built work can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to a built work, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Description</td>
    <td>This category is used to gather together information regarding significant descriptions given of a built work by known authors/sources.</td>
  </tr>
  <tr>
    <td>3 </td>
    <td>Parthood</td>
    <td>This category is used to bring together information relevant to the mereological relations between a built work and its parts.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Existence</td>
    <td>This category gathers together descriptors relevant to the tracking of the construction and destruction of a built work.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Actor Relations</td>
    <td>This category gathers together descriptors relevant to tracking the significant relations between the built work and known actors. Primary of such relations are those of the architect and builders of the built work. </td>
  </tr>
  <tr>
    <td>6</td>
    <td>Substance</td>
    <td>This category gathers together descriptors used for stating the physical constitutional features of the documented built work.</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Events</td>
    <td>This category gathers together information about significant documented events that a built work typically may go through in the course of it existence.</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Location</td>
    <td>This category gathers together information regarding the present location of a documented built work.</td>
  </tr>
  <tr>
    <td>9</td>
    <td>Designation Status</td>
    <td>This category gathers together information regarding the designated statuses assigned to a built work.</td>
  </tr>
  <tr>
    <td>10</td>
    <td>Documentation</td>
    <td>This category gathers together different descriptors that provide reference information with regards to a built work.</td>
  </tr>
</table>


### Names and Classifications

The attribution of names and types to built work, as with other entities, is a basic human activity. A chief factor in disambiguating built works lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Likewise, additional classifiers of the built work, such as how it has been formally classified, give important distinguishing characteristics.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented built work.</td>
    <td> → P1 → E42[1]</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented built work.</td>
    <td> → P1 → E42[1] → P2 → E55["Identifier Type"]</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the institution providing the documented built work it's ID.</td>
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
    <td>This field is used to indicate the main name attributed to the documented instance of built work.</td>
    <td> → P1 → E41[2]   •   
 → P1 → E41[2] → P2 → E55['Preferred Name']</td>
  </tr>
  <tr>
    <td></td>
    <td>Name Language</td>
    <td>This field is used to indicate the language of the name attributed to the documented entity.</td>
    <td> → P1 → E41[2] → P72 → E56</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the formal type of object a documented instance of built work is.</td>
    <td> → P2 → E55[3]   •   
 → P2 → E55[3] → P71 → E32</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternative Name</td>
    <td>This field is used to indicate additional names under which the documented instance of built work is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td> → P1 → E41[4]</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented instance of built work.</td>
    <td> → P1 → E41[4] → P2 → E55</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Language</td>
    <td>This field is used to indicate the language of the alternate name attributed to the documented built work.</td>
    <td> → P1 → E41[4] → P72 → E56</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of an alternate name for the documented instance of built work.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Alternate Name</td>
    <td>Alternate Name Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of an alternate name for the documented instance of built work.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Alternative Name - Used by</td>
    <td>This field is used to indicate the actor by whom the alternate name attributed to the instance of built work is/was used.</td>
    <td> → R63i → F52[5] → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Style</td>
    <td>This field is used to associate the documented instance of built work to a style which it can be classified with or for which it is exemplary.</td>
    <td> → P2 → E55[6]   •   
 → P2 → E55[6] → P2 → E55 "Style"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Style Attributor</td>
    <td>This field is used to associate the documented instance of built work to a style which it can be classified with or for which it is exemplary.</td>
    <td> → P2 → E55[6} → P141i → E17 [77] → P14 → E39
 → P140i → E17[77]</td>
  </tr>
</table>


The model provides means for tracking identifiers, present and past name use, names and well known typological attributions of the built work.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/ab1c0739-bb7e-4322-b6de-dd64a8861778.png)

### Description

Built works are the subjects of innumerable descriptions that provide a wide range of information with regards to the aesthetic and historical importance of the work, *inter alia*. Such descriptions are of use in a scholarly understanding of a built work just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary to this task are documented in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description</td>
    <td>This field is used to indicate a description of the documented instance of built work.</td>
    <td> → P129i → E73[9] → rdf:value → rdf:literal    •   
 → P129i → E73[9] → P2 → E55 "Description"   •   
 → P129i → E73[9] → P72 → E56</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Type</td>
    <td>This field is used to indicate the type of description given of the documented instance of built work.</td>
    <td> → P129i → E73[9] → P2 → E55</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Author</td>
    <td>This field is used to indicate the author of the description given of the documented instance of built work.</td>
    <td> → P129i → E73[9] → P94i → E65 → p14 → E39</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the creation of the description of the documented instance of built work.</td>
    <td> → P129i → E73[9] → P94i → E65 → P4 → E52 → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the description of the documented instance of built work.</td>
    <td> → P129i → E73[9] → P94i → E65 → p4 → E52 → P82b → xsd:dateTimeTime</td>
  </tr>
</table>


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/a7cc9ec0-0e54-41d6-974c-bb5dddea0700.png)

### Parthood

Built works may require documentation not just as a whole, but with regards to their parts. This information category gathers together the basic descriptors typically deployed to this end. The parthood relations of built works are both highly important information in understanding of this type of work and also highly complex to document. In this base model, we represent simply the relation of belonging of one Built Work to another. An extended model would take account of mereological and topological relations in a much richer way. At the basic reference level, however, this level of detail is not necessary.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Parts</td>
    <td>This field is used to indicate parts of the documented instance of built work.</td>
    <td> → P46 → E22</td>
  </tr>
</table>


 

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/c522e388-c72f-4187-ab2b-2c54e1b2e272.png)

### Existence

Of essential importance in identifying and tracking built works is information pertaining to their existence, particularly regarding their construction and destruction dates. For this reason, we have clustered descriptors relevant to such information in a common ‘existence’ category. These are described in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>Production</td>
    <td>Construction Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the construction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P4 → E52[111] → P82a → xsd:dateTimeTime   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>Production</td>
    <td>Construction Date - Latest</td>
    <td>This field is used to indicate the latest date for the construction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P4 → E52[111] → P82b → xsd:dateTimeTime   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>Production</td>
    <td>Production Place</td>
    <td>This field is used to indicate the place of the construction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P7 → E53  
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the destruction of the documented instance of built work.</td>
    <td> → P13i → E6[11] → P4 → E52[112] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction Date - Latest</td>
    <td>This field is used to indicate the latest date for the destruction of the documented instance of built work.</td>
    <td> → P13i → E6[11] → P4 → E52[112] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Destruction</td>
    <td>Destruction place</td>
    <td>This field is used to indicate the place of the destruction of the documented instance of built work.</td>
    <td> → P13i → E6[11] → P7 → E53</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Destruction period</td>
    <td>This field is used to indicate the historical period in which the destruction of the documented instance of built work occured.</td>
    <td> → P13i → E6[11] → P10 → E4</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Construction period</td>
    <td>This field is used to indicate the historical period in which the construction of the documented instance of built work occured.</td>
    <td> → P108i → E12[10] → P10 → E4   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
</table>


The above structure allows for the documentation of time of construction and destruction of a built work as a whole. Note that while ontologically speaking the agency of the architect and builder in the events of construction could be documented as part of this information unit, we have instead clustered this data in the actors Relations category.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/e0f7c534-7d63-4ae5-a389-50b4ccbdea2f.png)

### Actor Relations

The connection between a built work and actors provides another important set of descriptors for identifying and tracing it. Particularly, basic interest clusters around the individuals involved in the creation of the built work and those who own the built work presently. The actor relations information gathers these together.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator</td>
    <td>This field is used to indicate the architect and/or other actors involved in the construction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P01 → PC14 → P02 → E21   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator Role</td>
    <td>This field is used to indicate the role played by the architect and/or other actors involved in the conctruction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P01 → PC14 → P14.1 → E55   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Current Owner</td>
    <td>This field is used to indicate the present owner of the documented instance of built work.</td>
    <td> → P52 → E39</td>
  </tr>
</table>


These descriptors allow the connection of a built work to its creator and present owner.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/59c8557c-2a48-4353-8118-98655d27bdf4.png)

### Substance

The analysis and understanding of a built work depends also on our knowledge of its materiality and physical characteristics. The category of substance brings together descriptors which are relevant to this form of analysis. Particularly, it groups information having to do with the composition and measurable aspects of the built work as an object. Information regarding the decomposition of the built work into parts is found in the parthood category.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator</td>
    <td>This field is used to indicate the architect and/or other actors involved in the construction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P01 → PC14 → P02 → E21   •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Creator Role</td>
    <td>This field is used to indicate the role played by the architect and/or other actors involved in the conctruction of the documented instance of built work.</td>
    <td> → P108i → E12[10] → P01 → PC14 → P14.1 → E55    •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Current Owner</td>
    <td>This field is used to indicate the present owner of the documented instance of built work.</td>
    <td> → P52 → E39</td>
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
    <td> → P108i → E12[10] → P32 → E55 •   
 → P108i → E12[10] → P2 → E55 "Construction"</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Type</td>
    <td>This field is used to indicate the type of measurement that the dimension of the documented instance of built work is.</td>
    <td> → P39i → E16[12] → P40 → E54[13] → P2 → E55</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Value</td>
    <td>This field is used to indicate the value of the measurement of the documented instance of built work.</td>
    <td> → P39i → E16[12] → P40 → E54[13] → P90 → xsd:decimal</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Unit</td>
    <td>This field is used to indicate the unit used to express the value of the measurement of the documented instance of built work.</td>
    <td> → P39i → E16[12] → P40 → E54[13] → P91 → E58</td>
  </tr>
  <tr>
    <td>Dimension</td>
    <td>Dimension Taker</td>
    <td>This field is used to indicate the actor who undertook the measurement of the documented instance of built work.</td>
    <td> → P39i → E16[12] → P40 → E54[13] → P14 → E39</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/a3d803b1-ce95-442c-98fe-c87619391e06.png)

### Events

This information category brings together typical events in which a built work may have been involved through the course of its history. It is meant to cover information concerning the most salient events documented with regards to built works. At present this enables the documentation of functional use periods, ownership periods and conservation events. 

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>Function</td>
    <td>Use Period - Start</td>
    <td>This field is used to indicate the start of a kind of period of use for the built work.</td>
    <td> → P12i → E5[14] → P4 → E52[15] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Function</td>
    <td>Use Period - End</td>
    <td>This field is used to indicate the end of a period of use for the built work.</td>
    <td> → P12i → E5[14] → P4 → E52[15] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Function</td>
    <td>Use Period - Type</td>
    <td>This field is used to indicate the kind of period of use of the built work.</td>
    <td> → P12i → E5[14] → P2 → E55 "Use Period Type"</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Earliest date of taking of Possession</td>
    <td>This field is used to indicate the earliest date for taking possession of the documented object by some actor.</td>
    <td> → P24i → E8[16] → P4 → E52[17] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Latest Date of taking of Possession</td>
    <td>This field is used to indicate the latest date for taking possession of the documented object by some actor.</td>
    <td> → P24i → E8[16] → P4 → E52[17] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Actor Obtaining Ownership</td>
    <td>This field is used to indicate the actor taking possession of a documented object at some time.</td>
    <td> → P24i → E8[16] → P22 → E39</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Earliest Ceding of Possession</td>
    <td>This field is used to indicate the earliest date for ceding of possession of the documented object by some actor.</td>
    <td> → P24i → E8[16] → P115i → E8[18] → P4 → E52[17] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Latest Ceding of Possession</td>
    <td>This field is used to indicate the latest date for ceding of possession of the documented object by some actor.</td>
    <td> → P24i → E8[16] → P115i → E8[18] → P4 → E52[17] → P82 → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Period Statement - Actor Ceding Ownership</td>
    <td>This field is used to indicate the actor ceding possession of a documented object at some time.</td>
    <td> → P24i → E8[18] → P23 → E39</td>
  </tr>
  <tr>
    <td>Provenance</td>
    <td>Past Ownership Description</td>
    <td>This field used to provide a free text description related to an ownership period for the documented instance of built work.</td>
    <td> → P24i → E8[16] → P70i → E31 → rdf:value → rdf:literal</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Earliest</td>
    <td>This field is used to indicate the earliest date for a conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → P4 → E52[20] → P82a → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Latest</td>
    <td>This field is used to indicate the latest date for a conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → P4 → E52[20] → P82b → xsd:dateTimeTime</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - Type</td>
    <td>This field is used to indicate the type of conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → E55</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event - technique</td>
    <td>This field is used to indicate the technique used in the conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → P32 → E55</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservator</td>
    <td>This field is used to indicate the actor the carried out the conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → P14 → E21</td>
  </tr>
  <tr>
    <td>Conservation</td>
    <td>Conservation Event Description</td>
    <td>This field used to provide a free text description related to the conservation event performed on the documented instance of built work.</td>
    <td> → P31i → E11[19] → P70i → E31[21]  •   
 → P31i → E11[19] → P70i → E31[21] → P2 → E55 "Description"</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/380605b3-c4f6-40a2-9d88-25575e7033c4.png)

### Location

The documentation of location aids in tracking the present location of individual built works as well their dispersion geographically. This information category gathers together relevant descriptors for this task.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>Location</td>
    <td>Location - Institution Address</td>
    <td>This field is used to document the address at which the documented instance of built work is located.</td>
    <td> → P53 → E53[22] → P1 → E41 •   
p53 → E53[22] → P1 → E41 → P2 → E55 "Address"</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Location - coordinates</td>
    <td>This field is used to indicate the coordinates at which the documented instance of built work is presently located.</td>
    <td> → P53 → E53[22] → P168 → geo:wktLiteral</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Location - Cadastral Reference</td>
    <td></td>
    <td> → P53 → E53[22] → P70i → E31 → P1 → E42</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/317a6150-208b-4095-9844-ae220f160ff4.png)

### Designation Status

Characteristic of information gathered relative to built works are various kinds of official designations types that are given to these objects by various agencies. Assignment of such designations is related to various protocols in the assigning institutions and are often accompanied by regulations on the kind of activity that can be undertaken relative to the built work in question. Such designations also provide means of identifying a built work across records. This information category gathers together descriptors relative to this information.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>Designation Status</td>
    <td>Designation Status Number</td>
    <td>This field is used to indicate the identifier assigned to the designation status attributed to the documented instance of built work.</td>
   <td>  → P41i → E17[23] → P141>E42</td>
  </tr>
  <tr>
    <td>Designation Status</td>
    <td>Designation Status Attributor</td>
    <td>This field is used to indicate the attributor of the designtation status of the documented instance of built work.</td>
   <td>  → P41i → E17[23] → P14 → E39</td>
  </tr>
  <tr>
    <td>Designation Status</td>
    <td>Designation Status Type</td>
    <td>This field is used to indicate the type of designation status which applies to the documented instance of built work.</td>
  <td>   → P41i → E17[23] → P42 → E55 "Designation Status"</td>
  </tr>
  <tr>
    <td>Designation Status</td>
    <td>Designation Status Description</td>
    <td>This field is used to provide a free text description of the designation status which holds over the documented instance of built work.</td>
   <td>  → P41i → E17[23] → P129i → E73 → rdf:value → rdf:Literal</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/e4315930-b630-49b2-95ee-9ff58191146a.png)

### Documentation

This information category unites referential information about the documented built work, providing contextual data about it.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E22 → P2 → E55 "Built Work"</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented instance of built work.</td>
    <td> → P129i → E73 → rdf:value → rdf:literal •   
 → P129i → E73 → P2 → E55 "Citation" •   
 → P129i → E73 → P67 → E73 [from Bibliography Entity Type]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Image</td>
    <td>This field document image that reference the described artwork.</td>
    <td> → P138i → E36/D9</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/b2e4e51b-6935-4c62-b002-dfa0c61111d3.png)