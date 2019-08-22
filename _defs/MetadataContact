---
layout: page
type: element
title: Metadata Responsible Party
---
#  Metadata Responsible Party ★★★★★
*A contact for the person responsible for a metadata record is useful to curent and future users and managers of the resource and catalogue.*

- **Path** - *MD_Metadata.contact*
- **Governance** -  *Common ICSM, Agency*
- **Purpose -** *Discovery, Management, Communications*
- **Audience -** 
  - machine resource - ⭑⭑
  - general - ⭑⭑⭑⭑⭑
  - data manager - ⭑⭑⭑⭑⭑
  - specialist - ⭑⭑⭑
- **Metadata type -** *administrative*
- *ICSM Level of Agreement* - ⭑⭑⭑⭑

# Definition 

**Name and contact information about the organisation, role and individual who is responsible for the metadata record.**

## ISO Obligation 
- There must be one or more [1..\*] *contact* packages for the cited resource in the  *[MD_Metadata](https://www.loomio.org/d/AniV8zO3/class-md_metadata)* package provided in a metadata record for those responsible for the metadata itself. These will be of class *[CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility)*.

##  ICSM Good Practice recommendation  
- This element should be populated in all metadata records with a minimum of `role` , `name` (of organisation preferred), `positionName` and `electrronicMailAddress`.

### Recommended Sub-Elements   
Follow the general guidance for [CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility).
- One value of `role` should be "Point of Contact".

# Discussion 
This element refers to the party responsible for the metadata record itself and the maintenance of this metadata record. It does not refer to the party responsible for the resource the metadata describes.

This is a compound element of type CI_ResponsibleParty. At least one must be present. Recommended role value - "PointOfContact" with attached email; other roles can be added as required

# Recommendations 

Therefore - In order to meet ICSM good practice, in all metadata records, at least one contact should be given for the party responsible for the metadata itself. One entry should be role code "Point of Contact".  In addition, for minimal conformity, `name` (of organisation preferred), `positionName` and `electrronicMailAddress` should also be popiulated.
The use of the new `partyIdentifier` element added in the 2018 ammendment to the standard is encouraged by all parties.

## Crosswalk considerations

### ISO19139
See discussion at [CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility)

### Dublin core / CKAN / data.govt.nz
Maps to `contact`

### DCAT
Maps to `dcat:contactPoint`

### RIF-CS
Maps to `Related Party`

# Also Consider
- **[Resource Point of Contact](https://www.loomio.org/d/t6o5IsjM/md_idenitification-point_of_contact-definition)** Contact information for the recommended party to contact about the resource
- **[Resource Cited Reponsible Party](https://www.loomio.org/d/VvqjwcIS/md_identification-citation-cited-responsible-party-definition)** contact information for the parties otherwise responsible for aspects of the the resource creation and maintenance.
- **[DistributionInfo](https://www.loomio.org/d/G6oHphty/md_metadata-distribution)** Includes Distributor contact information.

# Examples
## XML -
```
<mdb:MD_Metadata>
...
  <mdb:contact>
    <cit:CI_Responsibility>
      <cit:role>
        <cit:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"
        codeListValue="pointOfContact"/>
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
                    <gco:CharacterString>name@email.org</gco:CharacterString>
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
              <cit:positionName gco:nilReason="missing">
                <gco:CharacterString/>
              </cit:positionName>
            </cit:CI_Individual>
          </cit:individual>
        </cit:CI_Organisation>
      </cit:party>
      </cit:CI_Responsibility>
  </mdb:contact>
....
</mdb:MD_Metadata>
```

## UML diagrams
Recommended elements highlighted in Yellow
![Responsibility](https://loomio-uploads.s3.amazonaws.com/documents/files/000/198/726/web/1558404613424)
