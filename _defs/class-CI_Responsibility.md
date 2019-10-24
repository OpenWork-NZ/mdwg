---
layout: page
type: class
section: class
rank: 50
title: CI_Responsibility
header-includes:
 - \usepackage{enumitem}
 - \setlistdepth{9}
 - \setlist[itemize,1]{label=$\bullet$}
 - \setlist[itemize,2]{label=$\bullet$}
 - \setlist[itemize,3]{label=$\bullet$}
 - \setlist[itemize,4]{label=$\bullet$}
 - \setlist[itemize,5]{label=$\bullet$}
 - \setlist[itemize,6]{label=$\bullet$}
 - \setlist[itemize,7]{label=$\bullet$}
 - \setlist[itemize,8]{label=$\bullet$}
 - \setlist[itemize,9]{label=$\bullet$}
 - \renewlist{itemize}{itemize}{9}
---
# class - CI_Responsibility

One of the most important benefits of metadata is to allow people to conect over common interest and needs. In order to provide a standardised way of capturing information describing people and organisations when cited in a metadata record, a shema, by way of the CI_Responsibility is provided. 

- **Governance** -  *ISO*
- **Metadata Type -** *structural*
- *ICSM Level of Agreement* - ⭑⭑

## Definition

**information about the party and their role.**

### ISO Associations (May be found in)

- MD_Metadata.contact
- MD_Identification.pointOfContact
- MD_Usage.userContactInfo
- MD_Constraints.responsibleParty
- MD_Releasability.addressee
- LI_ProcessStep.processor
- MD_MaintenanceInformation.contact
- MD_Distributor.distributorContact
- MD_ExtendedElementInformation.source
- CI_Citation.citedResponsibleParty

### Attributes

CI_Responsibility has at its core three elements:

- **role -** *(codelist - [CI_RoleCode](http://wiki.esipfed.org/index.php/ISO_19115-3_Codelists#CI_RoleCode))*[1..1] Mandatory - function performed by the responsible party. Options are:
  - *resourceProvider -* party that supplies the resource
  - *custodian -* party that accepts accountability and responsibility for the resource and ensures appropriate care and maintenance of the resource
  - *owner -* party that owns the resource
  - *user -* party who uses the resource
  - *distributor -* party who distributes the resource
  - *originator -* party who created the resource
  - *pointOfContact -* party who can be contacted for acquiring knowledge about or acquisition of the resource
  - *principalInvestigator -* key party responsible for gathering information and conducting research
  - *processor -* party who has processed the data in a manner such that the resource has been modified
  - *publisher -* party who published the resource
  - *author -* party who authored the resource
  - *sponsor -* party who speaks for the resource
  - *coAuthor -* party who jointly authors the resource
  - *collaborator -* party who assists with the generation of the resource other than the principal investigator
  - *editor -* party who reviewed or modified the resource to improve the content
  - *mediator -* a class of entity that mediates access to the resource and for whom the resource is intended or useful
  - *rightsHolder -* party owning or managing rights over the resource
  - *contributor -* party contributing to the resource
  - *funder -* party providing monetary support for the resource
  - *stakeholder -* party who has an interest in the resource or the use of the resource
- **extent -** *(class - [Extent](./ResourceExtent))* [0..\*]  spatial or temporal extent of the role
- **party -** *(abstract class - [CI_Party]*(http://wiki.esipfed.org/index.php/CI_Party)* [1..\*]  Required - information about the individual and/or organisation of the party. Instantiated as *CI_Individual* or *CI_Organisation*.
  - **name -** *(type - charStr)* [0..1]   name of the party (individual or organization)
  - **contactInfo -** *(class - CI_Contact)* [0..\*] contact information for the party
      - **phone -** *(type - CI_Telephone)* [0..\*]
      - **address -** *(class - CI_Address)* [0..\*]
        - **deliveryPoint -** *(type - charStr)* [0..\*] address line for the location 
          - Example: Street number and name, suite number, etc
        - **city -** *(type - charStr)* [0..\*] city of the location
        - **administrativeArea -***(type - charStr)* [0..\*] state, province of the location
        - **postalCode -** *(type - charStr)* [0..\*] ZIP or other postal code
        - **country -** *(type - charStr)* [0..\*] country of the physical address
        - **electronicMailAddress -** *(type - charStr)* [0..\*] address of the electronic mailbox of the responsible organisation or individual
        
      - **onlineResource -** *(class - [CI_OnlineResource](./class-CI_OnlineResource))* [0..\*]
      - **contactInstructions -** *(type - charStr)* [0..\*] supplemental instructions on how or when to contact the individual or organisation
      - **contactType -** *(type - charStr)* [0..\*] type of contact
      
    - **partyIdentifier -** *(class - [MD_Identifier](./class-MD_Identifier))* [0..\*]   identifier for the party

#### Associated Classes to CI_Party

- **CI_Individual -** information about the party if the party is an individual
  - **positionName -** *(type - charStr)* [0..1] position of the individual in an organisation

- **CI_Organisation -** information about the party if the party is an organisation
  - **logo -**
  - **individual -** *(class - CI_Individual)* see above

## Discussion

CI_Responsibility is a complex class that provides a good deal of flexibility while maintaining structure enough to provide conformity.  In the ICSM community, the minimum general guidance for CI_Responsibility is to include the `role` , `name` (of organisation preferred), `positionName` and `electronicMailAddress`. Other requirements exists according to purpose for which it appears in the metadata.

As a codelist, `CI_RoleCode` can be extended as needed. To improve consistancy, in most instances this should done under the the auspices of ICSM MDWG.

Citations use CI_Citation and cite the party responsible using CI_Responsibility. CI_Responsibility may be used without CI_Citation. CI_Responsibility is an aggregate of one or more parties (CI_Party). CI_Party may be specified as CI_Individual and/or CI_Organisation.

The the 2018 ammendment to ISO19115-1 the `partyIdentifier` element was added to `CI_Party` to allow the use of Identifiers for people and organisations such OrcID.

## Recommendations

Therefore - to remain in allignment with ICSM good practices, it is recommended that all CI_Responsibility instances follow the general guidance of ISO 19115-1 unless directed otherwise. The mandatory element `role` must be populated in all instances noting the the type and form of the contents in this field is dependent on location in the metadata record. In addition, for minimal conformity, `name` (of organisation preferred), `positionName` and `electronicMailAddress` should also be popiulated.
The use of the new `partyIdentifier` element added in the 2018 ammendment to the standard is encouraged by all parties.

> Note BC 18-7 - MDWG may wish to further standardise the use of CI_Responsibility

### Crosswalk considerations

<details>

#### ISO19139

In iso19115-1 Data type CI_ResponsibleParty (iso19115:2004) changed to type CI_Responsibility. The CI_ResponsibleParty was restructured in order to allow more flexible associations of individuals, organisations, and roles.
The CI_Responsibility/extent element was added in order to allow specificationof the spatial and temporal extent of a role.

</details>

## Examples

<details>

### XML -

```
<mdb:MD_Metadata>
...
      <cit:CI_Responsibility>
         <cit:role>
            <cit:CI_RoleCode 
            codeList="https://schemas.isotc211.org/19115/resources/Codelist
            /cat/codelists.xml#CI_RoleCode" 
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
                              <gco:CharacterString>name@email.org
                              </gco:CharacterString>
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
....
</mdb:MD_Metadata>
```

### UML diagrams

Recommended elements highlighted in Yellow

![Responsibility](https://loomio-uploads.s3.amazonaws.com/documents/files/000/198/726/web/1558404613424)

</details>

\pagebreak
