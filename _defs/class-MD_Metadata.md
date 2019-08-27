---
layout: page
type: class
title: MD_Metadata
---

# class - MD_Metadata 

*In order to create consistent structured metadata, we need a schema to provide a structure and a class to hold it.  MD_Metadata provides this for ISO19115-1.*

- **Governance** -  *ISO*
- **Metadat Type -** *structural*
- *ICSM Level of Agreement* - ⭑⭑

# Definition 

**Root entity which defines metadata about a resource or resources**

## Child packages  
### MDWG recommended
- **[resourceLineage -](https://www.loomio.org/d/ifwCE2kg/md_identification-resourcelineage-definition)** *(class - Li_Lineage)* [0..\*]
- **[referenceSystemInfo -](https://www.loomio.org/d/4SliNjWE/md_metadata-md_referencesystem-definition)** *(class - MD_ReferenceSystem)*
- **metadataConstraints -** *( abstract class [MD_Constraints](https://www.loomio.org/d/TqdZp04C/class-md_constraints))* [0..\*] see
  - **[Metadata Security Constraints](https://www.loomio.org/d/hovXfng5/md_metadata-md_securityconstraints-definition)**
  - **[Metadata Legal Constraints](https://www.loomio.org/d/G8d21r6z/md_metadata-md_legalconstraints-definition)** 
  
-  **indentificationInfo -** *(abstract class - MD_Identification)* [1..\*] see:
  - **Data Identification -** *(class MD_DataIdentification)* > ?create Entry?
  - **Service Identification -** *(class SV_ServiceIdentification)* > To Be Completed
- **[distributionInfo -](https://www.loomio.org/d/G6oHphty/md_metadata-distribution)** *(class - MD_Distribution)* [0..\*]
  
### Other packages - not yet addressed by MDWG
- **metadataMaintenance -** *(class MD_MaintenanceInformation)* [0..1]
- **spatialRepresentationInfo -** *(abstract class - MD_SpatialRepresentation)* [0..\*]
- **metadataExtensionInfo -** *(class - MD_MetadataExtensionInformation)* [0..\*]
- **applicationSchemaInfo -** *(class - MD_ApplicationSchemaInformation)* [0..\*]
- **portrayalCatalogInfo -** *(class - MD_ProtrayalCatalogueReference)* [0..\*]
- **contentInfo -** *(abstract class - MD_ContentInformation)* [0..\*]
- **dataQualityInfo -** *(class - DQ_DataQuality (from ISO19157))* [0..\*]

## Atributes
### MDWG Recomended Attributes - 
- **[metadataIdentifier -](https://www.loomio.org/d/eAo6MDlO/md_metadata-metadata-identifier)** (*class - [MD_Identifier](https://www.loomio.org/d/zlScHYdN/class-md_identifier)*) [0..1]
- **[dateInfo -](https://www.loomio.org/d/c7m9GKE1/md_metadata-dateinfo)** *(class - [CI_Date](https://www.loomio.org/d/9Q8mJuea/class-ci_date))* [1..\*] 
- **[contact -](https://www.loomio.org/d/Z2mY9yaF/md_metadata-contact-responsible-party-)** *(class - [CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility))* [0..1] 
- **[defaultLocale -](https://www.loomio.org/d/HfkuWCaI/md_metadata-default-locale)** *(class - [PT_Locale](https://www.loomio.org/d/Y8IlUVRL/class-pt_locale))*[0..1]
- **[metadataLinkage -](https://www.loomio.org/d/fXArOlER/md_metadata-metadata-linkage)** *(class - [CI_OnlineResource](https://www.loomio.org/d/rpyv8EnG/class-ci_onlineresource))*[0..\*]
- **[parentMetadata -](https://www.loomio.org/d/lvQGeSKT/md_metadata-parent-metadata)** *(class - [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation)* [0..1]
- **[metadataScope -](https://www.loomio.org/d/6i2CwDIM/md_metadata-md_metadatascope)** *(class - MD_MetadataScope)*[0..\*]
- **metadataStandard -**  *(class - [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation))* [0..\*] AS/NZS ISO 19115-3  > recommnded but not yet detailed by MDWG
- **metadataProfile -**  *(class - [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation))* [0..\*] >  recommnded butnot yet detailed by MDWG

### Other attributes - not yet addressed by MDWG
- **otherLocale -** *(class - [PT_Locale](https://www.loomio.org/d/Y8IlUVRL/class-pt_locale))*[0..\*]
- **alternativeMetadataReference -** *(class - [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation)* [0..\*]
  

# Discussion

The MD_Metadata package defines the schema for describing the complete metadata about a resource and metadata about the metadata itself. It is composed through an aggregate of 12 additional metadata classes as shown above. The MD_Metadata class also contains attributes providing information about the metadata. Those recommnded attributes are covered in other sections as cited above



# Recommendations 

Therefore - It is recommended that all spatial metadata utilise the structure provided by the ISO19115-1 MD_Metadata class and follow the guidance provided.



## UML diagrams

Recommended elements highlighted in Yellow

![image-20190711170142639](/Users/COGS/Library/Application Support/typora-user-images/image-20190711170142639.png)

![image-20190711170734419](/Users/COGS/Library/Application Support/typora-user-images/image-20190711170734419.png)
