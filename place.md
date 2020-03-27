# Place Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The place reference data model provides a list of standard fields that are often found present in the general description of a place. Place here is interpreted as a geometric extent used for locating entities relative to a reference space. The scope of entities that this reference model aims to cover are places as typically documented in gazetteers. Examples of places would be Edmonton (the inhabited city), Alberta (the administrative district), Canada (the country). The aim of this reference model is to cover basic descriptors that are typically employed in the documentation of a place, usually by a gazetteer. This reference model aims to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for a place as such and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## 
Sources

There are many good and well known schema for structuring place data. As a reference for this modelling work, we made use of the TGN, Geonames and Schema.org. The latter two especially are highly reused resources in the historical and cultural heritage field and provide an initial view of the basic complexities to be faced.

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</td>
  </tr>
  <tr>
    <td>Geonames</td>
    <td></td>
    <td>https://www.geonames.org/</td>
    <td>http://download.geonames.org/export/dump/readme.txt</td>
    <td>GeoNames Team</td>
  </tr>
  <tr>
    <td>Getty Thesaurus of Geographic Names</td>
    <td></td>
    <td>http://www.getty.edu/research/tools/vocabularies/tgn/</td>
    <td>http://www.getty.edu/research/tools/vocabularies/tgn/tgn_xml_dd.pdf</td>
    <td>Getty</td>
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

The fields used to describe a place can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to a place, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Description</td>
    <td>This category is used to gather together information regarding significant descriptions given of a place by known authors/sources.</td>
  </tr>
  <tr>
    <td>3 </td>
    <td>Parthood</td>
    <td>This category is used to bring together information relevant to the mereo-topological relations between a place and its parts.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Substance</td>
    <td>This category gathers together information regarding geospatial documentation of the extent of a place.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Documentation</td>
    <td>This category gathers together different descriptors that provide reference information with regards to a place.</td>
  </tr>
</table>




### Names and Classifications

The attribution of names and types to  a place, as with other entities, is a basic human activity. A chief factor in disambiguating places lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Historical places often receive different names according to the groups naming it, as well as receiving different kinds of names according to contexts and during different historical moments. Likewise, additional classifiers of a place, such as how it is has been formally classified, give important distinguishing characteristics. Because the type of a place is a socially related factor, dependent on how the place is appropriated/used in human interaction, the type of a place may change over time. In the model we add the possibility for describing this shift.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E53 Place</th>
  </tr>
  <tr>
    
    <td>ID Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented place.</td>
    <td>->P1->E42[1]</td>
  </tr>
  <tr>
    
    <td>ID Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented place.</td>
    <td>->P1->E42[1]->P2->E55["Identifier Type"]</td>
  </tr>
  <tr>
    
    <td>ID Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the institution providing the documented place it's ID.</td>
    <td>->P1->E42[1]->P37i->E15[2]->P14->E39</td>
  </tr>
  <tr>
    
    <td>ID Attribution</td>
    <td>Identifier Source</td>
    <td>This field is used to indicate the source based on which the identifier was attributed to the object.</td>
    <td>->P1->E42[1]->P37i->E15[2]->p16->E73</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Name</td>
    <td>This field is used to indicate the main name attributed to the documented instance of place.</td>
    <td>->P1->E41[3]
->P1->E41[3]->P2->E55['Preferred Name']</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Name Language</td>
    <td>This field is used to indicate the language of the name given to the place.</td>
    <td>->p1->E41[3]->p72->E56</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Place Type</td>
    <td>This field is used to indicate the formal type of place a documented instance of place is classified as.</td>
    <td>->P2->E55[4]
->P2->E55[4]->P71->E32</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Place Type Qualifying Description</td>
    <td>This field is used to provide a description of the place type in free text.</td>
    <td>->p41i->E17[5]->p42->E55[4]
->p41i->E17[5]->P129i->E73[6]->hasvalue->XSD:String
->p41i->E17[5]->P129i->E73[6]->p72->E56</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Place Type - Start Date</td>
    <td>This field is used to indicate at what date a place type was specified to hold for a place.</td>
    <td>->p41i->E17[5]->p4->E52[7]->P82a->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Place Type - End Date</td>
    <td>This field is used to indicate at what date a place type was specified to cease to hold for a place.</td>
    <td>->p41i->E17[155]->p4->E52[7]->P82b->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Alternate Title</td>
    <td>Alternative Name</td>
    <td>This field is used to indicate additional names under which the documented instance of place is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td>->P1->E41[8]</td>
  </tr>
  <tr>
    
    <td>Alternate Title</td>
    <td>Alternative Name Language</td>
    <td>This field is used to indicate the language of the additional name given to the place.</td>
    <td>->p1->E41[8]->p72->E56</td>
  </tr>
  <tr>
    
    <td>Alternate Title</td>
    <td>Alternate Name Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented instance of place.</td>
    <td>v b</td>
  </tr>
  <tr>
    
    <td>Alternate Title</td>
    <td>Alternate Name Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of an alternate name for the documented instance of place.</td>
    <td>->P1->E41[8]->R64i->F52[9]>p4->E52[10]->P82a->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Alternate Title</td>
    <td>Alternate Name Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of an alternate name for the documented instance of place.</td>
    <td>->P1->E41[8]->R64i->F52[9]>p4->E52[10]->P82b->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Alternative Name - Used by</td>
    <td>This field is used to indicate the actor by whom the alternate name attributed to the instance of place is/was used.</td>
    <td>->R63i->F52[9]->P14->E39</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Alternative Name - Attributed by</td>
    <td>This field is used to indicate the organization attributing the instance of name use to the place.</td>
    <td>->p141i->E13[11]->p14->E39

->p141i->E13[11]->p141->F52[9]</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Alternative Name - Source</td>
    <td>This field is used to indicate the source on which the organization attributing the instance of name use based their attribution.</td>
    <td>->p141i->E13[11]->p16->E73[12]
->p141i->E13[11]->p16->E73[12]->p2->E55</td>
  </tr>
</table>

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/5385e8cd-e1f7-45d3-95c9-278be659cf69.png)


### Description

Places are the subjects of innumerable descriptions that provide a wide range of information with regards to the meaning and use of a place. Such descriptions are of use in a scholarly understanding of a place just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary to this task are documented in the table below.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E53 Place</th>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description</td>
    <td>This field is used to indicate a description of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->has:value->Literal</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Language</td>
    <td>This field is used to indicate the language of the description of the documented instance of place.</td>
    <td>->p129i->E73/E33[13]->p72->E56</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Type</td>
    <td>This field is used to indicate the type of description given of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->P2->E55</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Author</td>
    <td>This field is used to indicate the author of the description given of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->P94i->E65[14]>-p14->E39</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Date - Earliest</td>
    <td>This field is used to indicate the ealiest date for the creation of the description of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->P94i->E65[14]->P4->E52[15]->P82a->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Description</td>
    <td>Description Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the description of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->P94i->E65[14]-p4->E52[15]->P82b->xsd:dateTime</td>
  </tr>
  <tr>
    <td></td>
    <td>Description</td>
    <td>Description - Source</td>
    <td>This field is used to document the source of the description of the documented instance of place.</td>
    <td>->P129i->E73/E33[13]->P94i->E65[14]->p16->E73</td>
  </tr>
</table>


These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/afffdd31-b84f-4972-9b98-e6b6e0022ce6.png)

### Parthood

The mereo-topological breakdown of places is crucial to understanding the relative relations between places. This information category gathers together the basic descriptors typically deployed to this end. In the study and documentation of place, this is a highly researched topic with extremely fine grained analysis available. In this base model, we represent the relation of one place falling within another. This representation allows both for documentation of contemporaneous containment relations but also the expression of a place falling within another place or containing one at a particular historical time.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E53 Place</th>
  </tr>
  <tr>
    
    <td>Current Parthood</td>
    <td>Part of</td>
    <td>This field is used to indicate that the broader geographic place that the documented place falls within.</td>
    <td>->P89->E53</td>
  </tr>
  <tr>
    
    <td>Current Parthood</td>
    <td>Has Part</td>
    <td>This field is used to indicate individually documented sub places which form part of the documented place.</td>
    <td>->p89i->E53</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically Part of Place</td>
    <td>This field is used to indicate the broader geographic place that the documented place falls within.</td>
    <td>->P161i->E4[16]->p166i->E93[E22]->p10i->E4->p161->E53</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Name at Time of Parthood of Place</td>
    <td>This field is used to indicate the name of the place at the time of being part of another historical place.</td>
    <td>->P161i->E4[16]->p166i->E93[20]->-p10i->F52->R64->E41[25]
->P161i->E4[16]->p166i->E93[20]->-p10i->F52->P140->E53[root]
->P161i->E4[16]->p166i->E93[20]->-p10i->F52->R64->E41[25]-P1i->E93[20]</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Type at Time of Parthood of Place</td>
    <td>This field is used to indicate the type of the place at the time of being part of another historical place.</td>
    <td>->P161i->E4[16]->p166i->E93[20]->-p10i->E17->P42->E55
->P161i->E4[16]->p166i->E93[20]->-p10i->E17->P41->E53[root]
->P161i->E4[16]->p166i->E93[20]->-p10i->E17->P42->E55->P2i->E55</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically part of Place - Earliest Date Time</td>
    <td>This field is used to indicate the earliest point during which this instance of place fell within the place that it was historically a part of.</td>
    <td>->P161i->E4[16]->p166i->E93[20]->P160->E52[17]->P82a->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically part of Place - Latest Date Time</td>
    <td>This field is used to indicate the latest point during which this instance of place fell within the place that it was historically a part of.</td>
    <td>->P161i->E4[16]->P166i->E93[20]->P160->E52[17]->P82b->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically Has Part</td>
    <td>This field is used to indicate that the broader geographic place that the documented place falls within.</td>
    <td>->P161i->E4[17]->p10->E4->p161->E53</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Name at Time of Containing Historical Place</td>
    <td>This field is used to indicate the name of the place at the time of containing another historical place.</td>
    <td>->P161i->E4[17]->p1->E41</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Type at Time of Containing Historical Place</td>
    <td>This field is used to indicate the type of the place at the time of containing another historical place.</td>
    <td>->p161i->E4[17]->p2->E55</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically Has Part - Earliest Date Time</td>
    <td>This field is used to indicate the earliest point during which this instance of place fell within the place that it was historically a part of.</td>
    <td>->P161i->E4[17]->P160->E52[18]->P82a->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historically Has Part - Latest Date Time</td>
    <td>This field is used to indicate the latest point during which this instance of place fell within the place that it was historically a part of.</td>
    <td>->P161i->E4[17]->P160->E52[18]->P82b->xsd:dateTime</td>
  </tr>
  <tr>
    
    <td>Historical Parthood</td>
    <td>Historical Coordinates</td>
    <td>This field is used to indicate the historical coordinates of the geographic place to which the occurrence of the documented instance of place is localized..</td>
    <td>->P161i->E4[16]->p166i->E93[E22]->p10i->E4->p161->E53->P168->geo:wkt</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/d3f6952f-d547-4484-903b-aacd0c95ca56.png)

### Substance

Crucial in the documentation of place is the capturing of geometric estimations of its precise coordinates. These coordinates together with the place entity as a whole form the basis for spatial analysis not only of places themselves but also other entities documented using the SARI reference models. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E53 Place</th>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Coordinates</td>
    <td>This field is used to indicate the coordinates of the geographic place to which the occurrence of the documented instance of place is localized..</td>
    <td>->P168->geo:wkt</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f61bd942-7f19-4ac5-88e7-25b4dcf4e0f1.png)


### Documentation

This information category unites referential information about the documented event, providing contextual data about it.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E53 Place</th>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented instance of place.</td>
    <td>->P129i->E73[19]->hasvalue->LITERAL
->P129i->E73[19]->P2->E55"Citation"
->P129i->E73[19]->P67->E73 [from Bibliography Entity Type]</td>
  </tr>
  <tr>
    
    <td>n/a</td>
    <td>Image</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented archival item.</td>
    <td>->P138i->E36/D9</td>
  </tr>
</table>


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/f282f9dc-7da7-4522-9588-ea6a4e79e57a.png)

