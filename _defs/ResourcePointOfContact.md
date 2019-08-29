---
layout: page
type: element
title: Resource Point of Contact 
---
#  Resource Point of Contact  ★★★★★
*One of the most important pieces of information that can be shared in a metadata record is the resource Point of Contact.  By retrieving the means to access the party responsible for questions about the resource, all other information should be able to be obtained even if it is not in the metadata.*

- **Path** - *MD_Metadata.identificationInfo>MD_DataIdentification.pointOfContact*
- **Governance** -  *Agency*
- **Purpose -** *Discovery, Management, Communications*
- **Audience -** 
  - machine resource - ⭑⭑
  - general - ⭑⭑⭑⭑⭑
  - data manager - ⭑⭑⭑⭑⭑
  - specialist - ⭑⭑⭑
- **Metadata type -** *descriptiver*
- *ICSM Level of Agreement* - ⭑⭑⭑⭑

# Definition 
**The name and contact information for the organisation, role and/or individual that serves as the point of contact for the cited resource.**

## ISO Obligation 
- There may be one or more [0..\*] *pointOfContact* packages for the cited resource in the  *[MD_DataIdentification](./class-MD_DataIdentification)* package  for those responsible for the resource. These will be of class *[CI_Responsibility](./class-CI_Responsibility)*.

##  ICSM Good Practice recommendation  
- This element should be populated in all metadata records with a minimum of `role` , `name` (of organisation preferred), `positionName` and `electrronicMailAddress` for rgw primary contact for more information about the cited resource. Use 'partyIdentifier' where possible.

### Recommended Sub-Elements   
Follow the general guidance for [CI_Responsibility](./class-CI_Responsibility).
- One value of `role` should be "Point of Contact", but may be another depending on agency guidance, e.g. if a custodian is also the primary point of contact, *custodian* may be the most appropriate choice for `role`.
- **partyIdentifier -** *(class - [MD_Identifier](./class-MD_Identifier))* [0..\*]   identifier for the party, usual a URI such as an ORCID. Use of this package is recommended when the option exist.
> Note BC 30-7: Do we have some regional alternatives to ORCID to recommend?

# Discussion 
This element exists for the provision of a set of attributes for identification of, and means of communication with , person(s) and organisation(s) associated with the resource. This element refers to the party responsible for the resource itself and the maintenance of this resource. It does not refer to the party responsible for the metadata or the distribution of the resource.

This is a compound element of type CI_ResponsibleParty. At least one should be present. Recommended role value - "PointOfContact" with attached email. Other contacts can be added as required. Other role values are acceptable.

# Recommendations 

Therefore - In order to meet ICSM good practice, in all metadata records, at least one point of contact should be given for the party responsible for the cited resource. These should deefault to role code "Point of Contact".  In addition, for minimal conformity, `name` (of organisation preferred), `positionName` and `electrronicMailAddress` should also be popiulated.
The use of the new `partyIdentifier` element added in the 2018 ammendment to the standard is encouraged by all parties.

## Crosswalk considerations

### ISO19139
See discussion at [CI_Responsibility](./class-CI_Responsibility)

### Dublin core / CKAN / data.govt.nz
Maps to `contact` 
> Note BC 19-7: These map to the same elements as Metadata Contact.  Is this a problem?

### DCAT
Maps to `dcat:contactPoint`

### RIF-CS
Maps to `Related Party`

# Also Consider
- **[Metadata Responsible Party](./MetadataContact)** Contact information for the recommended party to contact about the metadata
- **[Resource Cited Reponsible Party](./ResourceResponsibleParty)** contact information for the parties otherwise responsible for aspects of the the resource creation and maintenance.
- **[DistributionInfo](./DistributionInfo)** Includes Distributor contact information.

# Examples
## XML 
```
<mdb:MD_Metadata>
....
   <mdb:identificationInfo>
      <mri:MD_DataIdentification>
....
	<mri:pointOfContact>
            <cit:CI_Responsibility>
               <cit:role>
                  <cit:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"
                                   codeListValue="custodian"/>
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
                                    <gco:CharacterString>email@mail.com</gco:CharacterString>
                                 </cit:electronicMailAddress>
                              </cit:CI_Address>
                           </cit:address>
                        </cit:CI_Contact>
                     </cit:contactInfo>
                     <cit:individual>
                        <cit:CI_Individual>
                           <cit:name>
                              <gco:CharacterString>Metadata Bob</gco:CharacterString>
                           </cit:name>
                           <cit:positionName>
                              <gco:CharacterString>GIS Guru</gco:CharacterString>
                           </cit:positionName>
                        </cit:CI_Individual>
                     </cit:individual>
                  </cit:CI_Organisation>
               </cit:party>
            </cit:CI_Responsibility>
         </mri:pointOfContact>
....
      </mri:MD_DataIdentification>
   </mdb:identificationInfo>
....
</mdb:MD_Metadata>
```

## UML diagrams
Recommended elements highlighted in Yellow
![Responsibility](../images/ResourcePointOfContactUML.png)
