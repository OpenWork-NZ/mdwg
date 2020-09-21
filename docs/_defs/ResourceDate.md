---
layout: page
type: element
section: Resource Citation
rank: 30
title: Resource Reference Date 
---
# Resource Reference Date ★★★★★
*To manage resource and notification systems such as giving updates to users it is useful to include in our metadata temporal information relating to resource creation, publication, revision, etc.*

| | |
| --- | --- |
| **Element Name** | *date* |
| **Parent** | *[MD_Metadata.identificationInfo>MD_Identificationcitation>CI_Citation](./ResourceCitation)* |
| **Class/Type** | *CI_Date* |
| **Governance** | *Agency, Domain* |
| **Purpose** | *Discovery, Identification* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ |
| | general - ⭑ ⭑ ⭑ |
| | resource manager - ⭑ ⭑ ⭑ ⭑ ⭑ |
| | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *descriptive* |
| **ICSM Level of Agreement** | ⭑⭑⭑ |

## Definition
**A named and dated event associated with the cited resource (in ISO 8601 format)**

### ISO Obligation

- There can be zero to many [0..`*`] *resource reference date* entries for the cited resource in the *[MD_Identification.citation](./ResourceCitation)* package of class *[CI_Date](./class-CI_Date)* in a metadata record. One of these must be of `dateType` *creation*. The resource may be of type Data *[MD_DataIdentification](./class-MD_DataIdentification)* or of type Service *[SV_ServiceIdentification].



## Discussion

There should be at least one instance of a resource reference date in a metadata record (dateType - creation), but there should be multiple - including *publication* and as many *lastUpdate* entries as needed

The CI_DateType CodeList contains 16 values. Which values are of most import needs further discussion. The ability to crosswalk easily with CKAN and DCAT is of high concern. These external catalogues commonly have a single date field. Which dateType we map to this field is of interest in discussions regarding the recommended dateTypes used.

Relation of Metadata dateInfo to resource reference date needs to be discussed. The resource reference date is documented as the date that should be used for the discovery of resources other than services. (For services MD_Metadata.identificationInfo>SV_ServiceIdentification.citation>CI_Citation.date is used.)

When does the metadata dataInfo require updating? For instance, is it okay to not update the metadata dataInfo when the resource reference date is updated if nothing else has changed? Our good practice guide should address these and related issues.

## Recommendations

Therefore - to provide an idea of the age, validity and other time dependant properties of a resource, it is important to capture the important events that happened or will happen to a particular resource in the resource reference date element. One of these important events must be of `dateType` "creation". Creation is a significant date in regards to copyright. Other important date types are "publication" and "lastUpdate".

### Recommended Sub-Elements

It is recommended that `Resource Date` include - 

- **date** - (Mandatory) the reference DateTime for the metadata record.
- **dateType** - Highly recommended. There should be multiple entries for the resource reference date in a metadata record. These should include `dateType` entries for:
 - **Creation date** - This is important for intellectual property and other reasons
 - **Publication date** - Is the most common date type captured by an agency
 - **Update date** - Allows notifications and resource management. All updates to metadata should also include the date of last revision to the metadata. This is not an automated process.


## Also Consider

- **[Metadata Date](./MetadataDate)** - for dates related to the metadata record itself and not the cited resource
- **[CI_Date -](./class-CI_Date)** for general information about the class CI_Date
- **[Resource Citation](./ResourceCitation)** - parent to this element

## Other discussion

> **Date and DateTime:**
When is it okay to use Date as opposed to DateTime?

> **DCAT:**
encoded using the relevant ISO 8601 Date and Time compliant string [DATETIME] and typed using the appropriate XML Schema datatype [XMLSCHEMA11-2]

## Crosswalk considerations

<details>

### Dublin core / CKAN / data.gov.au

Maps to `date (publication, update)`

### DCAT

Maps to `dct:issued* and *dct:modified`

### RIF-CS

Maps to `Date`

</details>

## Examples

<details>

### XML
```
</mdb:MD_Metadata>
....
  <mdb:identificationInfo>
   <mri:MD_DataIdentification>
     <mri:citation>
      <cit:CI_Citation>
      ....
        <cit:date>
         <cit:CI_Date>
           <cit:date>
            <gco:Date>2018-06-11</gco:Date>
           </cit:date>
           <cit:dateType>
            <cit:CI_DateTypeCode 
            codeList="https://schemas.isotc211.org/19115/resources
            /Codelist/cat/codelists.xml#CI_DateTypeCode" 
            codeListValue="creation"/>
           </cit:dateType>
         </cit:CI_Date>
        </cit:date>
        <cit:date>
         <cit:CI_Date>
           <cit:date>
            <gco:Date>2019-06-11</gco:Date>
           </cit:date>
           <cit:dateType>
            <cit:CI_DateTypeCode 
            codeList="https://schemas.isotc211.org/19115/resources
            /Codelist/cat/codelists.xml#CI_DateTypeCode" 
            codeListValue="lastUpdate"/>
           </cit:dateType>
         </cit:CI_Date>
        </cit:date>
        ....
      </cit:CI_Citation>
     </mri:citation>
     ....
   </mri:MD_DataIdentification>
  </mdb:identificationInfo>
....
</mdb:MD_Metadata>
```

\pagebreak

### UML diagrams
Recommended elements highlighted in yellow

![resourceDate](../images/ResourceDateUML.png)

</details>

\pagebreak

