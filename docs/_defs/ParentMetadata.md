---
layout: page
type: element
section: Metadata Info
rank: 90
title: Parent Metadata
guides: [Metadata, Services]
---
#  Parent Metadata ★★
*When a metadata record inherits information from a parent record, it is important to capture sufficient information so that this parent record can be found an the hierarchy preserved.*

| | |
| --- | --- |
| **Element Name** | *parentMetadata* |
| **Parent** | *[MD_Metadata](./class-MD_Metadata)* |
| **Class/Type** | *[CI_Citation](./class-CI_Citation)* |
| **Governance** | *Agency, Domain* |
| **Purpose** | *Discovery, Data Management* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ |
| | general - ⭑ ⭑ ⭑ |
| | resource manager - ⭑ ⭑ ⭑ ⭑ ⭑ |
| | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *dicovery, administrative* |
| **ICSM Level of Agreement** | ⭑ ⭑ ⭑ |


## Definition
**Citation to a parent metadata record, to enable construction of hierarchical relations.**

### ISO Obligation
- There may be zero or one [0..1] *MD_Metadata.parentMetadata* entries for the cited resource in the  *[MD_Metadata](./class-MD_Metadata)* package of class *[CI_Citation](https://./class-CI_Citation)* in a metadata record.

## Discussion
There currently exists very little guidance for what qualifies as a parent metadata and when this element should be used. This could work well for feature level metadata where the parent is a dataset and the child a feature. Or a map series where the series is the parent and the tiles the children. Does the parent child hierarchical relation exist between the resources or the metadata records? (One metadata record could inherit attributes from a parent without such a relation between the resources being documented.)
The cardinality rules only allow one parent, but it is concievable that a metadata record could inherit parts from multiple  parents.

### Outstanding Issues

> **What qualifies a metadata record as a parent?**
If we include this as a recommended element, the MDWG should provide some guidance as to what qualifies as a parent metadata record. This is a CI_Citation element so it has the all the capabilities of that package. We need to decide which fields are necessary given that a requirement should be a link to the parent metadata record.


## ICSM Best Practice Recommendations
- The element `parentMetadata` may be populated to sufficient level to allow discovery if the metadata has a child relationship to another metadata record. Before doing so consider if other elements such as 'AssociatedResource' which has more flexiblitiy, is a more appropriate way to capture this information.

### Recommended Sub-Elements

Follow the general guidance for [CI_Citation](./class-CI_Citation)

### Crosswalk considerations

#### RIF-CS

Maps to `RelatedInfo/relation='partOf'`

## Also Consider

- **[AssociatedResource](./AssociatedResources) -** Used when the resource is part of a larger whole
- **[additionalDocumentation -](./AdditionalDocs)**  other documentation associated with the resource, e.g. related articles, publications, user guides, data dictionaries.
- **[resourceLineage -](./ResourceLineage)** Information about the provenance, source(s), and/or the production process(es) applied to the resource.
- **[browseGraphic -](./BrowseGraphic)**  associates to a large number of packages to provide linkage to associated image files, such as business or product icons and logos
- **[supplementalInformation -](https://www.isotc211.org/hmmg/HTML/ConceptualModels/index.htm?goto=1:12:2:4095)**   a free text field that is defined as "any other descriptive information about the resource". 


## Examples

<details>

### Example Current Use

### XML -
```
<mdb:MD_Metadata>
....
   <mdb:parentMetadata>
      <cit:CI_Citation>
         <cit:title>
            <gco:CharacterString>Geographical Data Series</gco:CharacterString>
         </cit:title>
         <cit:identifier>
            <mcc:MD_Identifier>
               <mcc:code>
                  <gco:CharacterString>8668cb6b-b594-4394-8e2c-f554bace859f
                  </gco:CharacterString>
               </mcc:code>
            </mcc:MD_Identifier>
         </cit:identifier>
         <cit:onlineResource>
            <cit:CI_OnlineResource>
               <cit:linkage>
                  <gco:CharacterString>
                  https://geodata.nz/geonetwork/srv/eng/catalog.search#
                  /metadata/8668cb6b-b594-4394-8e2c-f554bace859f
                  </gco:CharacterString>
               </cit:linkage>
               <cit:protocol gco:nilReason="missing">
                  <gco:CharacterString/>
               </cit:protocol>
               <cit:name gco:nilReason="missing">
                  <gco:CharacterString/>
               </cit:name>
               <cit:description gco:nilReason="missing">
                  <gco:CharacterString/>
               </cit:description>
               <cit:function>
                  <cit:CI_OnLineFunctionCode 
                  codeList="https://schemas.isotc211.org/19115/resources
                  /Codelist/cat/codelists.xml#CI_OnLineFunctionCode" 
                  codeListValue=""/>
               </cit:function>
            </cit:CI_OnlineResource>
         </cit:onlineResource>
      </cit:CI_Citation>
  </mdb:parentMetadata>
....
</mdb:MD_Metadata>
```

\pagebreak

### UML diagrams
Recommended elements highlighted in yellow

![ParentMetadata](../images/ParentMetadataUML.png)

</details>

\pagebreak
