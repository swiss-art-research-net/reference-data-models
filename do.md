# Digital Object Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The digital object reference data model provides a list of standard fields that are typically present in the general description of a digital object in a cultural heritage data system. A digital object is meant in the sense of a digitally encoded information object represented as bit sequences that have been encoded with a particular format and can be digitally decoded and represented to an end user of a digital information system. Digital objects are often stored as reference or documentation objects relative to cultural heritage items such as textual descriptions stored as PDFs, documentary images, 3D representations and so on. Digital Objects can also form cultural heritage objects in their own right, though this model does not aim to represent this potential aspect of the digital object. Because of the choice to model, the digital object in its role as a secondary documentary resource, the reference data model has been kept as light as possible. This reference model intends to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for a digital object and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The minimal metadata set for a digital object was abstracted from typical use scenarios in CMS systems related to cultural heritage.

## Model Sections Description

The fields used to describe a digital object can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to a digital object, both at present and historically. </td>
  </tr>
  <tr>
    <td>2 </td>
    <td>Part/Whole</td>
    <td>This category is used to bring together information relevant to the mereological relations between a digital object and its parts.</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Existence</td>
    <td>This category gathers together descriptors relevant to the tracking of the creation of a digital object.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Actor Relations</td>
    <td>This category gathers together descriptors relevant to tracking the significant relations between the digital object and known actors. </td>
  </tr>
  <tr>
    <td>5</td>
    <td>Substance</td>
    <td>This category gathers together descriptors used for stating the measurable attributes of the digital object.</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Representation</td>
    <td>This category gathers together descriptors regarding the representational level recognised to be present in the documented digital object. </td>
  </tr>
  <tr>
    <td>7</td>
    <td>Rights</td>
    <td>This category gathers together information regarding the rights claims on a documented digital object.</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Location</td>
    <td>This category gathers together information regarding the present location of a documented digital object.</td>
  </tr>
  <tr>
    <td>11</td>
    <td>Documentation</td>
    <td>This category gathers together different descriptors that provide reference information with regards to a digital object.</td>
  </tr>
</table>


### Names and Classifications

The attribution of identifiers, names and types to a digital object, as with other entities, is a basic human activity. It is crucial to document these aspects in order to be able to store and retrieve the correct digital object. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>ID</td>
    <td>This field is used to indicate an identifier attributed to the documented instance of digital object.</td>
    <td> → P1 → E42</td>
  </tr>
  <tr>
    <td>IDC</td>
    <td>n/a</td>
    <td>Title</td>
    <td>This field is used to indicate the main name attributed to the documented digital object.</td>
    <td> → P1 → E41   
     → P1 → E41 → P2 → E55['Preferred Title']</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>n/a</td>
    <td>Format</td>
    <td>This field is used to indicate the file format that has been used in the encoding of the digital object.</td>
    <td> → P2 → E55[1]  •   
 → P2 → E55[1] → P2 → E55 "Format Type"</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the formal type of the digital object with regards to its content.</td>
    <td> → P2 → E55</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>n/a</td>
    <td>Conforms to</td>
    <td>This field is used to indicate a formal standard which was used in the creation of the digital object to which it should in principle conform.</td>
    <td> → L11i → D7[3] → P32 → E29/D1</td>
  </tr>
  <tr>
    <td>IDC</td>
    <td>n/a</td>
    <td>Checksum</td>
    <td>This field is use to indicate a checksum for the digital object in order to be able to verify its authenticity.</td>
    <td> → P1 → E42 •   
 → P1 → E42 → P2 → E55 "Checksum"</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/9fd373e8-20bf-4ac4-8e00-a7c41a574f8c.png)

The model provides means for tracking identifiers, titles, and various classifies that enable the identification, retrieval, verification and display/decoding of the digital object.

### Parthood

Digital objects can be further subdivided into particular digital objects or can form an element of a greater digital object. The documentation of parthood allows the tracing of these relations.  

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>has part</td>
    <td>This field is used to indicate parts of the documented digital object.</td>
    <td> → P106 → D1</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>is part of</td>
    <td>This field is used to indicate that a digital object forms part of a greater digital object.</td>
    <td> → P106i → D1</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/25788642-8c63-4fb1-a2c8-4e33076d974b.png)

### Existence

Of essential import in identifying and tracking a digital object are its creation and modification information. The model presented allows the tracking of the machine event which originally created the digital object as well as subsequent machine events of a modifying character of which it was the output. The destruction of the digital object is not modelled as being irrelevant to the use scope of integrated CH reference documentation.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>EP</td>
    <td>Creation</td>
    <td>Creation Date - Early</td>
    <td>This field is used to indicate the earliest date for the creation of the documented digital object.</td>
    <td> → L11i → D7[3] → P4 → E52[4] → P81a → xsd:dateTimeTime •   
 → L11i → D7[3] → P2 → E55 "Creation"</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>Creation</td>
    <td>Creation Date - Late</td>
    <td>This field is used to indicate the latest date for the creation of the documented digital object.</td>
    <td> → L11i → D7[3] → P4 → E52[4] → P81b → xsd:dateTimeTime •   
 → L11i → D7[3] → P2 → E55 "Creation"</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>Modification</td>
    <td>Modification Date - Early</td>
    <td>This field is used to indicate the earliest date for the modification of the documented digital object.</td>
    <td> → L11i → D7[4] → P4 → E52[4] → P81a → xsd:dateTimeTime  
 → L11i → D7[4] → P2 → E55 "Modification"</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>Modification</td>
    <td>Modification Date - Late</td>
    <td>This field is used to indicate the latest date for the modification of the documented digital object.</td>
    <td> → L11i → D7[4] → P4 → E52[4] → P81b → xsd:dateTimeTime •   
 → L11i → D7[4] → P2 → E55 "Modification"</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/a6831cde-3ad6-4c72-8947-b11f7d8e8c40.png)

### Actor Relations

The connection between a digital object and actors provides another important set of descriptors for identifying and tracing a digital object. In this minimal model, the creator is represented.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>Creator</td>
    <td>This field is used to indicate the creator of the documented digital object.</td>
    <td> → L11i → D7[3] → P14 → E39  
 → L11i → D7[3] → P2 → E55 "Creation"</td>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>Last Modifier</td>
    <td>This field is used to indicate the last modifier of the documented digital object.</td>
    <td> → L11i → D7[4] → P14 → E39  
 → L11i → D7[4] → P2 → E55 "Modification"</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/03126f00-eaee-4329-a773-6cbf96677545.png)


### Substance

The analysis and understanding of a digital object also depend on our knowledge of its measurable characteristics. These are represented through dimensional information that can be collected regarding the object. The model is open as to which dimensions should be recorded.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>SI</td>
    <td>Dimension</td>
    <td>Dimension Type</td>
    <td>This field is used to indicate the type of dimension provided for the digital object.</td>
    <td> → P43 → E54[2] → P2 → E55</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>Dimension</td>
    <td>Dimension Value</td>
    <td>This field is used to indicate the value of the dimension provided for the documented digital object.</td>
    <td> → P43 → E54[2] → P90 → xsd:decimal</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>Dimension</td>
    <td>Dimension Unit</td>
    <td>This field is used to indicate the unit used to express the value of the dimension of the documented digital object.</td>
    <td> → P43 → E54[2] → P91 → E58</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/521215c6-cfc7-4b2f-ab48-4f7f94be64eb.png)



### Representation

This information category allows the documentation, where possible, of the content of the digital object itself as well as a classification of the types of entity, by categorical subject, that the digital object is referenced to.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>EP</td>
    <td>n/a</td>
    <td>represents</td>
    <td>This field is used to indicate the subject of representation of the documented digital object. It is meant to capture general subject areas, not particular individual items represented.</td>
     → P129 → E55</td>
  </tr>
  <tr>
    <td>IDC</td>
    <td>n/a</td>
    <td>has Content</td>
    <td>This field is used to store the string value of the actual digital content as a blob, where appropriate.</td>
    <td>rdf:value → rdf:Literal</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/638fb63d-ce6f-4de8-860b-9bf12b1888e0.png)

### Rights

The potential use and re-use of a digital object and its derivatives require respect for existing rights claims. This information category gathers together the relevant descriptors for tracking this information.

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>SI</td>
    <td>Rights</td>
    <td>right holder</td>
    <td>This field is used to indicate the right holder for the documented digital object.</td>
     → P104 → E30[25] → P75i → E39</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>Rights</td>
    <td>right type</td>
    <td>This field is used to indicate the type of right which the right holder holds over the documented digital object.</td>
     → P104 → E30[25] → P2 → E55</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>Rights</td>
    <td>right description</td>
    <td>This field is used to provide a free text description of the right which the right holder holds over the documented digital object.</td>
    <td> → P104 → E30[25] → P129i → E73[666] → rdf:value → rdfs:Literal   •   
 → P104 → E30[25] → P129i → E73[666] → P72 → E56</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/5deef0bf-b60d-4c11-bfcc-3f070e22eb93.png)


### Location

The documentation of location with regards to a digital object at the level of documentation can be simplified to the storage of an identifier for a retrieval location on a digital storage medium or can refer to a digital storage medium itself. In the context of managing reference information this is sufficient. 

<table>
  <tr>
    <th>Type</th>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>D1 Digital Object</th>
  </tr>
  <tr>
    <td>SI</td>
    <td>n/a</td>
    <td>Locator</td>
    <td>This field is used to indicate a locator identifier indicating a digital access point from which the digital object can be retrieved.</td>
    <td> → P1 → E42[4]</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>n/a</td>
    <td>Locator Type</td>
    <td>This field is used to indicate the kind of locator used to described the digital location of the documented digital object.</td>
    <td> → P1 → E42[4] → P2 → E55</td>
  </tr>
  <tr>
    <td>SI</td>
    <td>n/a</td>
    <td>Stored on</td>
    <td>This field is used to indicate a physical storage mechanism on which the digital object can be found.</td>
    <td>L19i → D13</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/e29b513c-25e2-47ce-9f94-51eb6b74005e.png)