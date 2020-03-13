# Event Reference Data Model

**Author**: George Bruseker, Nicola Carboni

**Version**: 1.0

The event reference data model provides a list of standard fields that are typically present in the general description of an event, taken in the sense of planned public or social occasions, organized towards some purpose. Examples of events would be workshops, meetings, conferences, congresses and so on. The aim of this reference model is to cover basic descriptors that are typically employed in the documentation of an event. This reference model aims to remain at a general level description, providing a consolidated, high-level reference data model of most commonly reused descriptors for an event as such and to provide for these, in turn, a set of standard semantic mappings to the CIDOC CRM. Moreover, each field is marked with regards to its potential functionality with regards to instance matching between overlapping datasets. This level of modelling is seen as a necessary basic reference point on which to build more complex documentation. This reference data model aims to serve a number of functions including: 

1. to support the creation of semantic data entry forms that will create ‘born semantic’ data streams

2. to serve as a reference guide in designing eventually compatible data structures for feeding into larger aggregations of Cultural Heritage data

3. to guide mapping processes of extant data sources with common mapping patterns

4. to be adopted by institutions acting as aggregation hubs in order to create consistent re-expressions of extant reference information in a common CIDOC-CRM based expression.

## Sources

The documented schema for structuring events data, in the sense of planned occasions, documented historically are not generally available or in use, despite the fact that such data is regularly collected in bespoke systems. In order to have reference schema from which to build the model, we looked at work on the more general question of periods and documentation of time along with the schema.org schema for events:

<table>
  <tr>
    <th>Acronym</th>
    <th>Source Name</th>
    <th>Official Access Point</th>
    <th>Schema Documentation</th>
    <th>Maintained by</th>
  </tr>
  <tr>
    <td>PeriodO</td>
    <td></td>
    <td>http://perio.do</td>
    <td>http://perio.do/technical-overview/#period-collections</td>
    <td>UNC</td>
  </tr>
  <tr>
    <td>Chronontology</td>
    <td></td>
    <td>http://chronontology.dainst.org/</td>
    <td></td>
    <td>DAI</td>
  </tr>
  <tr>
    <td>Schema.org</td>
    <td>Schema.org</td>
    <td>http://schema.org</td>
    <td></td>
    <td>Schema.org</td>
  </tr>
</table>


The overlap of general modelling of periods with the question of events is not large. Therefore, the reference model presented was generated on the basis also of tacit knowledge with regards to fields deployed in non-open documentation schemas for documenting events.

## Model Sections Description

The fields used to describe an event can be functionally grouped according to higher level units in order to allow for an easier approach to the entry and navigation of the data by information category. The information categories identified have been enumerated in the following table.

<table>
  <tr>
    <th>#</th>
    <th>Name</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Names and Classifications</td>
    <td>This category gathers together descriptors used for assigning names and types to an event, both at present and historically. </td>
  </tr>
  <tr>
    <td>2</td>
    <td>Description</td>
    <td>This category is used to gather together information regarding significant descriptions given of an event by known authors/sources.</td>
  </tr>
  <tr>
    <td>3 </td>
    <td>Parthood</td>
    <td>This category is used to bring together information relevant to the mereological relations between an event and its parts.</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Existence</td>
    <td>This category gathers together descriptors relevant to the temporal extent of an event.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Participation</td>
    <td>This category gathers together descriptors relevant to tracking the significant entities that played a role in the event. This has to do both with tracking the participation of actors and their roles in events, but also the use of and creation of documents as the results of events, and the employment of specific tools.</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Intention</td>
    <td>This category gathers together descriptors used for describing the goals and aims of an event.</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Location</td>
    <td>This category gathers together information regarding where an event took place.</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Documentation</td>
    <td>This category gathers together different descriptors that provide reference information with regards to an event.</td>
  </tr>
</table>



### Names and Classifications

The attribution of names and types to events, as with other entities, is a basic human activity. A chief factor in disambiguating events lies in understanding the various names and identifiers that have been given to them at different moments in their individual histories. Historical events often receive different names according to the groups naming it, as well as receiving different kinds of names according to contexts (such as abbreviations and so on). Likewise, additional classifiers of the event, such as how it has been formally categorized, give important distinguishing characteristics.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier</td>
    <td>This field is used to indicate an identifier attributed to the documented event.</td>
    <td> → P1 → E42[1]</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Type</td>
    <td>This field is used to indicate the type of an identifier attributed to the documented event.</td>
    <td> → P1 → E42[1] → P2 → E55["Identifier Type"]</td>
  </tr>
  <tr>
    <td>ID Attribution</td>
    <td>Identifier Provider</td>
    <td>This field is used to indicate the institution providing the documented event it's ID.</td>
    <td> → P1 → E42[1] → P37i → E15 → P14 → E39</td>
  </tr>
  <tr>
    <td>Identifier Attribution</td>
    <td>Identifier Source</td>
    <td>This field is used to indicate the source based on which the identifer was attributed to the object.</td>
    <td> → P1 → E42[1] → P37i → E15 → P16 → E73</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>Name</td>
    <td>This field is used to indicate the main name attributed to the documented instance of event.</td>
    <td> → P1 → E41[2]   
    → P1 → E41[2] → P2 → E55['Preferred Name']</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>Name Language</td>
    <td>This field is used to indicate the language of the name attributed to the documented entity.</td>
    <td> → P1 → E41[2] → P72 → E56</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the formal type of event a documented instance of event is classified as.</td>
    <td> → P2 → E55[3] •   
 → P2 → E55[3] → P71 → E32</td>
  </tr>
  <tr>
    <td>Alternative Name</td>
    <td>Alternative Name</td>
    <td>This field is used to indicate additional names under which the documented instance of event is known. This can be linked to the additional name type and earliest and latest date of use of that name.</td>
    <td> → P1 → E41[4]</td>
  </tr>
  <tr>
    <td>Alternative Name</td>
    <td>Alternate Name Type</td>
    <td>This field is used to indicate the type of alternate name that is attributed to the documented instance of event.</td>
    <td> → P1 → E41[4] → P2 → E55</td>
  </tr>
  <tr>
    <td>Alternative Name</td>
    <td>Alternate Name Use Period - Earliest</td>
    <td>This field is used to indicate the earliest known date for use of an alternate name for the documented instance of event.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Alternative Name</td>
    <td>Alternate Name Use Period - Latest</td>
    <td>This field is used to indicate the latest known date for use of an alternate name for the documented instance of event.</td>
    <td> → P1 → E41[4] → R64i → F52[5] → P4 → E52[6] → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Alternative Name</td>
    <td>Alternative Name - Used by</td>
    <td>This field is used to indicate the actor by whom the alternate name attributed to the instance of event is/was used.</td>
    <td> → R63i → F52[5] → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Type</td>
    <td>This field is used to indicate the type of event that occurred.</td>
    <td> → P2 → E55</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/73756569-a57b-4dc6-ac72-697caefb2985.png)

The model provides means for tracking identifiers, present and past name use, names and well known typological attributions of the event.

### Description

Events are the subjects of innumerable descriptions that provide a wide range of information with regards to what took place during the event and how, as well as providing interpretations of its significance and import. Such descriptions are of use in a scholarly understanding of an event just in case we are able to track the provenance of such elocutions in a systematic fashion. Such an aim drives the need for the tracking of description information as a separate category. The descriptors necessary for this task are documented in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description</td>
    <td>This field is used to indicate a description of the documented instance of event.</td>
    <td> → 129i → E73[9] → rdf:value → rdf:Literal •   
    → 129i → E73[9] → P72 → E56</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Type</td>
    <td>This field is used to indicate the type of description given of the documented instance of event.</td>
    <td> → P129i → E73[9] → P2 → E55</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Author</td>
    <td>This field is used to indicate the author of the description given of the documented instance of event.</td>
    <td> → P129i → E73[9] → P94i → E65 → p14 → E39</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Earliest</td>
    <td>This field is used to indicate the earliest date for the creation of the description of the documented instance of event.</td>
    <td> → P129i → E73[9] → P94i → E65 → P4 → E52 → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Description Date - Latest</td>
    <td>This field is used to indicate the latest date for the creation of the description of the documented instance of event.</td>
    <td> → P129i → E73[9] → P94i → E65 → p4 → E52 → P82b → xsd:dateTime</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/515e6179-7b96-4f52-9b79-60c9177bac2e.png)

These descriptors should be deployed together in order to provide full context to ‘text blobs’ by means of authorship, type of description as well as the time of articulation.

### Parthood

Events are a typical case of the kind of entity whose accurate documentation may require the breaking down of the event into parts and sub-parts. This information category gathers together the basic descriptors typically deployed to this end. The parthood relations of events help contextualize the meaning of events, as well as to be able to pick out the exact composition of a complex event by breaking it down into smaller subunits (e.g. A conference may break down into sessions and sessions into talks). In this base model, we represent simply the relation of belonging of one event to another. 

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Part of</td>
    <td>This field is used to indicate that the broader period that the documented event falls within.</td>
    <td> → P10i → E5</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Has Part</td>
    <td>This field is used to indicate individually documented sub events which form part of the documented event.</td>
    <td> → P10 → E5</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/baeab779-c904-43d9-b5e9-0dae880537de.png)

### Existence

The existence of an event must be determined by documentary or physical evidence of the past. The documentation of the existence of an event, however, essentially relates to ascribing that event dates, where possible, durations otherwise, and a description of the temporality where none of the above is possible. The descriptors and mappings for these potentialities are documented in the table below.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>Start</td>
    <td>Motivating Event</td>
    <td>This field is used to relate an event to a preceding event which was undertaken in preparation of the documented event.</td>
    <td> → P20i → E5</td>
  </tr>
  <tr>
    <td>Start</td>
    <td>Earliest Possible Start Date</td>
    <td>This field is used to indicate the earliest possible start date for the event.</td>
  <td> → P4 → E52 → P82a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Start</td>
    <td>Latest Possible Start Date</td>
    <td>This field is used to indicate the latest possible date for the event.</td>
    <td> → P4 → E52 → P81a → xsd:dateTime</td>
  </tr>
  <tr>
    <td>End</td>
    <td>Earliest Possible End Date</td>
    <td>This field is used to indicate the earliest possible date for the end of a documented instance of event.</td>
     <td> → P4 → E52 → P81b → xsd:dateTime </td>
  </tr>
  <tr>
    <td>End</td>
    <td>Latest Possible End Date</td>
    <td>This field is used to indicate the latest date for the destruction of the documented instance of event.</td>
    <td> → P4 → E52 → P82b → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Duration</td>
    <td>Maximal Duration - Value</td>
    <td>This field is used to indicate the time value of the maximal known duration of the event.</td>
     <td> → P4 → E52 → P84 → E54 → P90 → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Duration</td>
    <td>Maximal Duration - Unit</td>
    <td>This field is used to indicate the unit of the time value of the maximal known duration of the event.</td>
     <td> → P4 → E52 → P84 → E54 → P91 → E58</td>
  </tr>
  <tr>
    <td>Duration</td>
    <td>Minimal Duration - Value</td>
    <td>This field is used to indicate the time value of the minimal known duration of the event.</td>
     <td> → P4 → E52 → P83 → E54 → P90 → xsd:dateTime</td>
  </tr>
  <tr>
    <td>Duration</td>
    <td>Minimal Duration - Unit</td>
    <td>This field is used to indicate the unit of the time value of the minimal known duration of the event.</td>
     <td> → P4 → E52 → P83 → E54 → P91 → E58</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Time Description</td>
    <td>This field is used to provide the possibility of a free text description of the time span of the documented event itself.</td>
    <td> → P4 → E52 → P129i → E73[9] → rdf:value → rdf:Literal</td>
  </tr>
  <tr>
    <td>Description</td>
    <td>Time Description Author</td>
    <td>This field is used to provide the author the free text description of the time span of the documented event itself.</td>
    <td> → P4 → E52 → P129i → E73[9] → P94i → E65 → p14 → E39</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/2049a0ab-b7a8-434c-8af7-cf0d86856ec1.png)


The above structure allows for the documentation of the begin and end of an event, when known, its duration, as well as linking to motivating events (for example a preparatory meeting), and the plain text description of the temporality of an event.

### Participation

The use of documenting events in historical studies comes especially in tracing the interaction of actors, ideas and things in time and the evolution of the connections that are created between them. Events are nexuses in which actors, ideas and things participate. They can also be the junction for the creation of new ideas. The descriptors gathered here focus on the typical participants to events in the sense of planned social occasions, especially in a formal context. Therefore they focus on agents and their roles, documents and document production, as well as the use of particular implements (e.g. famous pens) in the carrying out of events.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Actor</td>
    <td>This field is used to indicate actors involved in the documented instance of event.</td>
    <td> → P14 → E39</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Actor Role</td>
    <td>This field is used to indicate the role played by the actors involved in the documented instance of event.</td>
    <td> → P14 → P14.1 → E55</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Objects Employed</td>
    <td>This field is used to indicate objects known to have played a role in the documented event.</td>
    <td> → P16 → E18</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Documents Employed</td>
    <td>This field is used to indicate information objects that are known to have been used during the event. Information objects created during the event can be referenced here. For documenting</td>
    <td> → P16 → E73</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Documents Created</td>
    <td>This field is used to indicate documents that were generated as the result of an event.</td>
    <td> → P17 → E65 → P94 → E73</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Event Plans Employed</td>
    <td>This field is use to associate any documented documents which describe the intended plan for execution of the event, as used in the event for coordinating its execution.</td>
    <td> → P33 → E29</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/a8ffef79-3a53-4ec6-8d80-db0ad8f5d46d.png)

These descriptors should allow the tracing of the participation of different people, ideas and things in various events through time.

### Intention

Events, as planned social occasions and interactions, usually take place with a particular intention in mind. In the case of formal events, such intentions are usually formalized as lists of topics. The description of the reasons motivating an event are essential in its analysis. In this information category, we gather together descriptors for documenting this data.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Subject List</td>
    <td>This field is used to describe the subject matter(s) with which the event was intended to deal, at a categorical level.</td>
    <td> → P17 → E55</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Subject Description</td>
    <td>This field is a free text field for the description of the subject of an event, when the data has not been sorted into categorized lists.</td>
    <td> → P129i → E73 → rdf:value → rdf:Literal •   
 → P129i → E73 → P2 → E55 "Subject Description" •   
 → P129i → E73 → P72 → E56</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/22672968-2bab-48d5-8379-af4181be8030.png)

### Location

The documentation of location aids in tracking the location of occurrence of individual events as well as the dispersion of occurrences geographically. This information category gathers together relevant descriptors for this task.

<table>
  <tr>
    <th>Element Field Collection</th>
    <th>Element name</th>
    <th>Element Description</th>
    <th>E7 Activity</th>
  </tr>
  <tr>
    <td>Location</td>
    <td>Place Name</td>
    <td>This field is used to document the geographic place to which the occurrence of the documented instance of event can be localized.</td>
    <td> → P7 → E53[22] → P1 → E41</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Place Type</td>
    <td>This field is used to document the type of the geographic place to which the occurrence of the document of event has been localized.</td>
    <td> → P7 → E53[22] → P2 → E55</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Place - coordinates</td>
    <td>This field is used to indicate the coordinates of the geographic place to which the occurrence of the documented instance of event is localized..</td>
    <td> → P7 → E53[22] → P168 → geo:wktLiteral</td>
  </tr>
</table>

<br>
![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/23364967-e555-43da-b20f-002d8c4ac02a.png)

### Documentation

This information category unites referential information about the documented event, providing contextual data about it.

<table>
  <tr>
    <td>Element Field Collection</td>
    <td>Element name</td>
    <td>Element Description</td>
    <td>E22 → P2 → E55 "event"</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Citation</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented instance of event.</td>
    <td> → P129i → E73 → rdf:value → rdf:Literal •   
 → P129i → E73 → P2 → E55 "Citation" •   
 → P129i → E73 → P67 → E73 [from Bibliography Entity Type]</td>
  </tr>
  <tr>
    <td>n/a</td>
    <td>Image</td>
    <td>This field is used to indicate bibliographic records that stand as reference documentation for the documented instance of event.</td>
    <td> → P138i → E38/D9</td>
  </tr>
</table>
<br>

![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/0806c035-1961-4ef4-9d93-8382b5e1eeac.png)