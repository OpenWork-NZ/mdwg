---
layout: page
type: section
section: Resource Citation
rank: 30
title: Resource Citation
---
#  Resource Citation ★★★★★
*Some of the most basic needs of users of a resource is citation information. This basic information includes title, edition, identifier, dates, responsible parties, etc. In ISO 19115-1 we capture this information in MD_identification.citation.*

- **Path** - *MD_Metadata.identificationInfo>MD_DataIdentification.citation*
- **Governance** -  *Common ICSM, Agency, Domain*
- **Purpose -** *Discovery, identification*
- **Audience -**
  - machine resource - ⭑⭑⭑
  - general - ⭑⭑⭑⭑⭑
  - data manager - ⭑⭑⭑⭑
  - specialist - ⭑⭑⭑
- **Metadata type -** *descriptive*
- *ICSM Level of Agreement* - ⭑⭑⭑⭑

## Definition
**Citation information for the resource.**

### ISO Obligation
- There must be one and only one [1..1] *MD_Metadata,indentificationInfo>MD_Identification.citation* package for the cited resource in the  *[MD_DataIdentification](./class-MD_DataIdentification)* package in a metadata record. this must be of of class *[CI_Citation](./class-CI_Citation)*.

###  ICSM Good Practice
- This element should be populated in all metadata records with a minimum of `title`, `identifier`, `date` and `citedResponsibleParty`.

#### Recommended Sub-Elements
Follow the general guidance for **[CI_Citation](./class-CI_Citation)** with emphasis on the following elements:
- **[title](./ResourceTitle) -** *(type - charStr)*[1..1] Mandatory - name by which the cited resource is known
- **[date](./ResourceDate) -** *(class - [CI_Date](./class-CI_Date))*  [0..\*]  reference date for the cited resource. Should include at a minimum, the creation date for the resource.
- **[edition](./ResourceEdition) -** *(type - charStr)* [0..1] version of the cited resource if appropriate
- **[identifier](./ResourceIdentifier) -** *(class - [MD_Identifier](./class-MD_Identifier))* [0..\*] value uniquely identifying an object within a namespace. Recommend provision of a resolvable URI following the MD_Identifier guidance.
- **[citedResponsibleParty](./ResourceResponsibleParty) -** *(class - CI_Responsibility)*[0..\*] roles, name, contact, and position information for an individual or organisation that is responsible for the resource. It is recommended that a party with the role "Point of Contact" be provided as well as an entry for "publisher".
- **[series](./ResourceSeries) -**  *(class - CI_Series)* [0..1] If needed, information about the series, or aggregate resource, of which the resource is a part should be included.

## Discussion
The citation package contains multiple elements from [CI_Citation](./class-CI_Citation). Only child elements contain content. Follow the links on the child elements above for further discussion. Aspects of the contents of this package may be governed at different levels.

## Recommendations

Therefore - because many of the elements of MD_Identification.citation are mandatory and are important for identification and harvesting of metadata, it is recommended the the guidance provided in each of these six child elements be followed. Other availble [CI_Citation](./class-CI_Citation) elements should be used if needed to properly document your resource. Consult your metadata governance team on such use.

## Also Consider
- **[title](./ResourceTitle)** 
- **[date](./ResourceDate)**
- **[edition](./ResourceEdition)**
- **[identifier](./ResourceIdentifier)**
- **[citedResponsibleParty](./ResourceResponsibleParty)**
- **[series](./ResourceSeries)**


## Examples

<details>

### XML

```
<mdb:MD_Metadata>
....
 <mdb:identificationInfo>
    <mri:MD_DataIdentification>
    ....
       <mri:citation>
          <cit:CI_Citation>
             <cit:title>
                <gco:CharacterString>OpenWork geographical data</gco:CharacterString>
             </cit:title>
             <cit:date>
                <cit:CI_Date>
                   <cit:date>
                      <gco:Date>2019-07-18</gco:Date>
                   </cit:date>
                   <cit:dateType>
                      <cit:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode"
                                           codeListValue="creation"/>
                   </cit:dateType>
                </cit:CI_Date>
             </cit:date>
             <cit:date>
                <cit:CI_Date>
                   <cit:date>
                      <gco:Date>2019-07-18</gco:Date>
                   </cit:date>
                   <cit:dateType>
                      <cit:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode"
                                           codeListValue="publication"/>
                   </cit:dateType>
                </cit:CI_Date>
             </cit:date>
             <cit:edition>
                <gco:CharacterString>Version 0.1</gco:CharacterString>
             </cit:edition>
             <cit:editionDate>
                <gco:Date>2019-07-18</gco:Date>
             </cit:editionDate>
             <cit:identifier>
                <mcc:MD_Identifier>
                   <mcc:code>
                      <gco:CharacterString>9547e07e-6a15-403b-8b19-488778fe0cf0</gco:CharacterString>
                   </mcc:code>
                   <mcc:codeSpace>
                      <gco:CharacterString>http://202.49.243.69:8080/geonetwork/srv/eng/metadata/</gco:CharacterString>
                   </mcc:codeSpace>
                </mcc:MD_Identifier>
             </cit:identifier>
             <cit:citedResponsibleParty>
                <cit:CI_Responsibility>
                   <cit:role>
                      <cit:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"
                                       codeListValue="author"/>
                   </cit:role>
                   <cit:party>
                      <cit:CI_Organisation>
                         <cit:name>
                            <gco:CharacterString>OpenWork Ltd</gco:CharacterString>
                         </cit:name>
                         <cit:contactInfo>
                            <cit:CI_Contact>
                               <cit:address>
                                  <cit:CI_Address>
                                     <cit:electronicMailAddress>
                                        <gco:CharacterString>info@openwork.nz</gco:CharacterString>
                                     </cit:electronicMailAddress>
                                  </cit:CI_Address>
                               </cit:address>
                            </cit:CI_Contact>
                         </cit:contactInfo>
                      </cit:CI_Organisation>
                   </cit:party>
                </cit:CI_Responsibility>
             </cit:citedResponsibleParty>
             <cit:citedResponsibleParty>
                <cit:CI_Responsibility>
                   <cit:role>
                      <cit:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"
                                       codeListValue="publisher"/>
                   </cit:role>
                   <cit:party>
                      <cit:CI_Individual>
                         <cit:name>
                            <gco:CharacterString>Byron Cochrane</gco:CharacterString>
                         </cit:name>
                         <cit:contactInfo>
                            <cit:CI_Contact>
                               <cit:address>
                                  <cit:CI_Address>
                                     <cit:electronicMailAddress>
                                        <gco:CharacterString>byron@openwork.nz</gco:CharacterString>
                                     </cit:electronicMailAddress>
                                  </cit:CI_Address>
                               </cit:address>
                            </cit:CI_Contact>
                         </cit:contactInfo>
                      </cit:CI_Individual>
                   </cit:party>
                </cit:CI_Responsibility>
             </cit:citedResponsibleParty>
          </cit:CI_Citation>
        </mri:citation>
      ....
    </mri:MD_DataIdentification>
  </mdb:identificationInfo>
....
</mdb:MD_Metadata>
```

### UML diagrams
Recommended elements highlighted in Yellow

![ResourceCitation](../images/ResourceCitiationUML.png)

</details>
