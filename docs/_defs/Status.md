---
layout: page
type: element
section: Data Identification
rank: 50
title: Resource Status
---
# Resource Status ★★★★
*In order to quickly find, categorise and evaluate the fitness of a resource to our needs it is useful to include in our metadata a high-level description of the progress status of the resource our metadata describes.*

| | |
| --- | --- |
| **Element Name** | *status* |
| **Parent** | *[MD_Metadata.identificationInfo>MD_Identification](./class-MD_Identification)* |
| **Class/Type** | *[MD_ProgressCode](http://wiki.esipfed.org/index.php/ISO_19115_and_19115-2_CodeList_Dictionaries#MD_ProgressCode)* |
| **Governance** | *Common ICSM* |
| **Purpose** | *Discovery, Management* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ |
| | general - ⭑ ⭑ ⭑ ⭑ |
| | resource manager - ⭑ ⭑ ⭑ ⭑ |
| | specialist - ⭑ ⭑ ⭑ |
| **Metadata type** | *Descriptive, Administrative* |
| **ICSM Level of Agreement** | ⭑ ⭑ ⭑ |

## Definition
**The status of the resource populated from a domain of values** 

### ISO Obligation

- There can be zero to many [0..\*] *status* entries for the cited resource in the *[MD_DataIdentification](./class-MD_DataIdentification)* package selected from codelist *[MD_ProgressCode](http://wiki.esipfed.org/index.php/ISO_19115_and_19115-2_CodeList_Dictionaries#MD_ProgressCode)*.

## Discussion

According to the ISO model, a resource may exist in many states. Not all values are mutually exclusive. This element is optional and has only been lightly discussed. As it has been determined a valuable element we may want to increase these recommendations. 

The resource may be data or service, [MD_DataIdentification](./class-MD_DataIdentification)* or *[SV_ServiceIdentification](./ServiceIdentification).

## Recommendations

Therefore - The status of a resource is valuable information to those who may want to use it. It is recommended that the status field be populated and regularly updated as needed. At least one instance of this element should be populated in all metadata records.

As the harvesting of metadata to more general-purpose catalogues is desirable, some thought needs to be given to crosswalk with boolean values (CKAN) or those that only accept one occurrence of this element.
Values for this element must come from the MD_ProgressCode codelist. 

### Possible Values for **status** *(codelist - MD_ProgressCode)*

- *completed -* has been completed
- *historicalArchive -* stored in an offline storage facility
- *obsolete -* no longer relevant
- *onGoing -* continually being updated
- *planned -* fixed date has been established upon or by which the resource will be created or updated
- *required -* needs to be generated or updated
- *underDevelopment -* currently in the process of being created
- *final -* progress concluded and no changes will be accepted
- *pending -* committed to, but not yet addressed
- *retired -* item is no longer recommended for use. It has not been superseded by another item
- *superseded -* replaced by new
- *tentative -* provisional changes likely before resource becomes final or complete
- *valid -* acceptable under specific conditions
- *accepted -* agreed to by the sponsor
- *notAccepted -* rejected by sponsor
- *withdrawn -* removed from consideration
- *proposed -* suggested that development needs to be undertaken
- *deprecated -* resource superseded and will become obsolete, use only for historical purposes

## Outstanding Issues

> **Abstract Class - MD_Identification**
SpatialRepresentationType is one of many elements belonging to the abstract class MD_Identification. MD_Identification is only instantiated as MD_DataIdentification or SV_ServiceIdentification. At this stage we are not addressing service metadata, we are assuming all metadata is for data resources. At a later time, when we include Service metadata guidance, a separate discussion of MD_Identifier should be made.

> **CKAN**
It has been indicated that CKAN records in its related field boolean values for this item. Boolean does not map well to ISO domain values. Some options in the MD_ProgressCode are noncompatible some are compatible. Clarification and validation would be useful.

## Crosswalk considerations

### Dublin core / CKAN / data.gov.au

Maps to `data status`

## Examples

<details>

### XML -
```
<mdb:MD_Metadata>
....
  <mdb:identificationInfo>
   <mri:MD_DataIdentification>
   ....
     <mri:status>
      <mri:status>
      <mcc:MD_ProgressCode 
      codeList="https://schemas.isotc211.org/19115/resources/Codelist/cat
      /codelists.xml#MD_ProgressCode" 
      codeListValue="underDevelopment"/>
     </mri:status>
     <mri:status>
      <mcc:MD_ProgressCode 
      codeList="https://schemas.isotc211.org/19115/resources/Codelist/cat
      /codelists.xml#MD_ProgressCode" 
      codeListValue="tentative"/>
     </mri:status>
     ....
   </mri:MD_DataIdentification>
  </mdb:identificationInfo>
....
</mdb:MD_Metadata>
```
\pagebreak

### UML diagrams
Recommended elements highlighted in yellow

![status](../images/StatusUML.png)

</details>

 

