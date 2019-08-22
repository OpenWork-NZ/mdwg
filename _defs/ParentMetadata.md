---
layout: page
type: element
title: Metadata Identifier
---
#  Parent Metadata ★★
*When a metadata record inherits information from a parent record, it is important to capture sufficient information so that this parent record can be found an the hierarchy preserved.*

- **Path** - *MD_Metadata.parentMetadata*
- **Governance** -  *Agency, Domain*
- **Purpose -** *discovery, data management*
- **Audience -** 
  - machine resource - ⭑⭑⭑
  - general - ⭑⭑⭑
  - data manager - ⭑⭑⭑⭑⭑
  - specialist - ⭑⭑⭑⭑
- **Metadata type -** *discovery, administrative*
- *ICSM Level of Agreement* - ⭑⭑

# Definition 
**Citation to a parent metadata record, to enable construction of hierarchical relations.**

## ISO Obligation 
- There may be zero or one [0..1] *MD_Metadata.parentMetadata* entries for the cited resource in the  *[MD_Metadata](https://www.loomio.org/d/AniV8zO3/class-md_metadata)* package of class *[CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation)* in a metadata record.  

## ICSM Good Practice  
- The element `parentMetadata` should be populated to sufficient level to allow discovery if the metadata has a child relationship to another metadata record.

### Recommended Sub-Elements   
Follow the general guidance for [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation)

# Discussion 
There currently exists very little guidance for what qualifies as a parent metadata and when this element should be used. This could work well for feature level metadata where the parent is a dataset and the child a feature. Or a map series where the series is the parent and the tiles the children. Does the parent child hierarchical relation exist between the resources or the metadata records? (One metadata record could inherit attributes from a parent without such a relation between the resources being documented.)
The cardinality rules only allow one parent, but it is concievable that a metadata record could inherit parts from multiple  parents.

## Outstanding Issues
> **What qualifies a metadata record as a parent?**
If we include this as a recommended element, the MDWG should provide some guidance as to what qualifies as a parent metadata record. This is a CI_Citation element so it has the all the capabilities of that package. We need to decide which fields are necessary given that a requirement should be a link to the parent metadata record.


# Recommendations 
TBD - insufficient clarity exist as to what qualifies a metadata record as "parent". Use cases need to be defined to illustrate yet to be determined good practice for parentMetadata.

## Crosswalk considerations

### RIF-CS
Maps to `RelatedInfo/relation='partOf'`

# Also Consider
- **[AssociatedResource](https://www.loomio.org/d/HGSVeBfw/md_identification-associatedresource-definition) -** Used when the resource is part of a larger whole
- **[additionalDocumentation -](https://www.loomio.org/d/At7CL4Fv/md_identification-additionaldocs-definition)**  other documentation associated with the resource, e.g. related articles, publications, user guides, data dictionaries.
- **[resourceLineage -](https://www.loomio.org/d/ifwCE2kg/md_identification-resourcelineage-definition)** Information about the provenance, source(s), and/or the production process(es) applied to the resource.
- **[browseGraphic -](https://www.loomio.org/d/MDiF0QYb/md_identification-browsegraphic-definition)**  associates to a large number of packages to provide linkage to associated image files, such as business or product icons and logos
- **[supplementalInformation -](https://www.isotc211.org/hmmg/HTML/ConceptualModels/index.htm?goto=1:12:2:4095)**   a free text field that is defined as "any other descriptive information about the resource". 


# Examples

## Example Current Use

## XML -
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
                  <gco:CharacterString>8668cb6b-b594-4394-8e2c-f554bace859f</gco:CharacterString>
               </mcc:code>
            </mcc:MD_Identifier>
         </cit:identifier>
         <cit:onlineResource>
            <cit:CI_OnlineResource>
               <cit:linkage>
                  <gco:CharacterString>https://geodata.nz/geonetwork/srv/eng/catalog.search#/metadata/8668cb6b-b594-4394-8e2c-f554bace859f</gco:CharacterString>
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
                  <cit:CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode"
                                             codeListValue=""/>
               </cit:function>
            </cit:CI_OnlineResource>
         </cit:onlineResource>
      </cit:CI_Citation>
  </mdb:parentMetadata>
....
</mdb:MD_Metadata>
```

## UML diagrams
Recommended elements highlighted in Yellow
![ParentMetadata](https://loomio-uploads.s3.amazonaws.com/documents/files/000/199/911/original/1559192315135)
