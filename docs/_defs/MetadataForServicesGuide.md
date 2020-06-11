---
layout: page
rank: 20
type: page
section: Guidance
title: Metadata For Services Best Practices
---

# ICSM ISO19115-1 Metadata for Services Best Practices

This document was compiled by [OpenWork Ltd (OWL)](http://openwork.nz) on behalf of and with guidance and contributions from the [ICSM Metadata Working Group (MDWG)](https://www.icsm.gov.au/what-we-do/metadata-working-group). The purpose of this document is to capture the consensus best practice guidance for the use of recommended ISO 19115-1 metadata elements for organisataion in the Australia / New Zealand regionwhen documenting geospatial service. Further this guidance will aid the migration from the retired [ANZLIC](https://www.anzlic.gov.au/) Metadata Profile of ISO 19115:2003 to the currently endorsed ISO 191125-1:2014 (including Amd.1:2018).

\pagebreak

## Acknowledgements

### ICSM Metadata Working Group 

- Chair :  Irina Bastrokova - irina.bastrakova@ga.gov.au
- Secretariat:  Andrew Whiting - andrew.whiting@ga.gov.au
- Secretariat:  Graham Logan - graham.logan@ga.gov.au
- ANZLIC:  Brian Sloan  - Brian.Sloan@ga.gov.au
- ANZLIC:  Ann Beaumaris  - Ann.Beaumaris@industry.gov.au
- ICSM: Executive Officer -  Lesley Waterhouse - lesley.waterhouse@ga.gov.au

### Contributors

- Lead Author: Byron Cochrane - OpenWorks Ltd - byron@openwork.nz
- Irina Bastrakova - Geoscience Australia - irina.bastrakova@ga.gov.au
- Jenny Mahuika - Terrestrial Ecosystem Research Network (TERN) - j.mahuika@uq.edu.au
- Evert Bleys - ABARES - ejbleys@gmail.com
- Melanie Barlow - Australian Research Data Commons (ADRC)- melanie.barlow@ardc.edu.au
- Aaron Sedgmen - Geoscience Australia - Aaron.Sedgmen@ga.gov.au

\pagebreak

## ICSM Recommendations 

When creating metadata for services, most of the dataset metadata best practice guidance applies. But there are notable differences. Most of these differences are contained in the *IdentificationInfo* section

New elements specific to Service Metadata are highlighted in **Bold**

Elements with specific guidance for Services are in **_Bold Italic_**

### Metadata for Metadata
- [Metadata for Metadata](./class-MD_Metadata )  
  - [Metadata Identifier](./MetadataIdentifier)  *Mandatory.*
  - [Metadata Linkage](./MetadataLinkage)  *Highly Recommended.*
  - [Metadata Date](./MetadataDate)  *Highly Recommended.*
  - [Metadata Responsible Party](./MetadataContact)  *Mandatory.*
  - [Metadata Default Locale](./MetadataLocale)  *Highly Recommended.*
  - [Metadata Legal Constraints](./MetadataLegalConstraints) *Recommended.*
  - [Metadata Security Constraints](./MetadataSecurityConstraints) *Recommended.*
  - [Metadata Standard](./MetadataStandard) *Highly Recommended.* To be fixed - missing element  
  - **_[MetadataScope](./MetadataScope)_** *Mandatory.* Resource Scope = *Service*

### General Identification Metadata
- [Metadata for Resources](./class-MD_Identification)    
    - [Abstract](./Abstract)  *Mandatory.*
    - [Purpose](./Purpose)  *Highly Recommended.*
    - [Status](./Status)  *Highly Recommended.*
    - [Topic Category](./TopicCategory)  *Highly Recommended.*
    - [Spatial resolution](./SpatialResolution)  *Highly Recommended.*
    - [Resource Point of Contact  role = 'pointOfContact'](./ResourcePointOfContact) *Highly Recommended.*
    - [Additional Docs](./AdditionalDocs)  *Recommended.* If any
    - [Spatial Representation Type](./SpatialRepresentationType)  *Recommended.*
  
  #### CI_Citation  Package - [Service Citation](./ResourceCitation) Sub-elements to be reviewed
  - [Title](./ResourceTitle) *Mandatory.*
  - [Identifier (uri)](./ResourceIdentifier) *Highly Recommended.*
  - [Date (creation)](./ResourceDate) *Highly Recommended.*
  - [Date (revision)](./ResourceDate) *Highly Recommended.* If applicable
  - [Date (issued)](./ResourceDate) *Highly Recommended.*
  - [Edition](./ResourceEdition) *Recommended.* If applicable
  - [Series](./ResourceSeries) *Recommended.* If applicable
  - [Cited Responsible party (author, creator, contributor, publisher)](./ResourceResponsibleParty) *Highly Recommended.*
  - **_[OnlineResource](./OnlineResource)_** - the landing page for the service


### Service Specific Metadata
- **[Service Identification](./ServiceIdentification)** 
  - **[serviceType](./ServiceType)**  - *Mandatory.* Plus at least one of:
    - **[serviceTypeVersion](./ServiceTypeVersion)**  
    - **[profile](./ServiceProfile)**  CI_Citation
    - **[serviceStandard](./ServiceStandard)**  CI_Citation
  - **[couplingType](./CouplingType)** *Highly Recommended.* Options = `tight`, `loose`, `mixed`
  - **[coupledResource](./CoupledResource)** *Highly Recommended* when *CouplingType* is `tight`. Includes:  
      - ScopedName - *Mandatory*
      - ResourceReference - includes:
          - Title - Mandatory
          - OnlineResource - *Highly Recommended.* Metadata URL for related data
    - **[ContainsOperations](./ContainsOperations)** class - SV_OperationMetadata   Contains
       - operationName  *Mandatory*
       - distributedComputingPlatform  codelist - DCPList, *Mandatory*
       - operationDescription  *Highly Recommended*
       - connectPoint  class - CI_OnlineResource *Mandatory*
       - **[parameter](./Parameter)** class - SV_Parameter
           - name  *Madatory*
           - direction  *Mandatory*
           - description *Recommended*
           - optionality  *Mandatory*
           - repeatability  *Mandatory*

### Other Metadata Packages (To Review)

- [Associated Resource](./AssociatedResources)   class - MD_AssociatedResource  
- [Format](./ResourceFormat) Needed?  
- [BrowseGraphic](./BrowseGraphic)  Class - MD_BrowseGraphic  
- **_[Keywords](./Keywords)_** *Mandatory.* Package - MD_Keywords  including:  
  - **Service Keywords** *Mandatory.*
  - ABS Field of Research
  - Other keywords
- [Maintenance](./Maintenance) Package -  MD_MaintenanceInformation   
      - Frequency of update
      - scope for maintenance
- [Resource Constraints](./class-MD_Constraints)   Do we need separate "Service Constraints" guidance?
      - Use Limitations
      - Legal
      - Reference for Legal
      - Security
      - Reference for Security
      - releasability
      - otherConstraints
- [Extents](./ResourceExtent)  Package -  EX_Extent  
    - [GeoExtent](./GeographicExtent) class - EX_GeographicExtent  
       - [geographic description](./ExtentGeographicDescription)
       - [bounding box](./ExtentBoundingBox)
    - [vertical extent](./VerticalExtent) class - EX_VerticalExtent  
    - [temporal extent](./TemporalExtents) class - EX_TemporalExtent  
- Lineage    Package - LI_Lineage   - To Be Done
      - Statement
      - Source
- [ReferenceSystemInfo](./SpatialReferenceSystem)   Package - MD_ReferenceSystem  
- **_[Distribution Information](./DistributionInfo)_**   Package - MD_Distribution   Should this be required to provide service endpioint?
      - Format
      - Distributor
      - Online Resource
      - Offline Resource

### CI_Citation  Package - [Service Citation](./ResourceCitation) Sub-elements to be reviewed
- [Title](./ResourceTitle)
- AlternateTitle - To Be Done
- [Identifier (uri)](./ResourceIdentifier)
- [Date (creation)](./ResourceDate)
- [Date (revision)](./ResourceDate)
- [Date (issued)](./ResourceDate)
- [Edition](./ResourceEdition)
- [Series](./ResourceSeries)
- [Cited Responsible party (author, creator)](./ResourceResponsibleParty)
- [Cited Responsible party (contributor)](./ResourceResponsibleParty)
- [Cited Responsible party (publisher)](./ResourceResponsibleParty)
- [OnlineResource](./class-CI_OnlineResource)

### Metadata for Data  MD_DataIdentification  - Needed? Or belong with MD_Identification? Or coupled resource metadata link?
- Spatial Resolution Type  
- CharacterSet  
- Resource Default Locale  


## ISO 19115-1 Table F.2 — Metadata required for the discovery of service resources

- [Metadata reference information:](./MetadataIdentifier)  (MD_Metadata.metadataIdentifier)
- [Service title:](./ResourceTitle) (MD_Metadata .identificationInfo > SV_ServiceIdentification.citation > CI_Citation.title)
- [Reference date:](./ResourceDate) (MD_Metadata.identificationInfo > SV_ServiceIdentification.citation > CI_Citation.date)
- [Resource identifier:](./ResourceIdentifier) (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation > CI_Citation.identifier>MD_Identifier)
- [Responsible party:](./ResourceResponsibleParty) (MD_Metadata.identificationInfo > SV_ServiceIdentification. pointOfContact > CI_Responsibility)
- [Geographic location:](./ResourceExtent) (MD_Metadata.identificationInfo > SV_ServiceIdentification.extent > EX_Extent.geographicElement > EX_GeographicExtent > EX_Geo- graphicBoundingBox –or- EX_GeographicDescription)
- [Service topic category:](./TopicCategory)  (MD_Metadata.identificationInfo > SV_ServiceIdentification.topicCategory > MD_TopicCategoryCode)
- [Resource abstract:](./Abstract)  (MD_Metadata.identificationInfo >SV_ServiceIdentification. abstract)
- [On-line Link:](./class-CI_OnlineResource) (MD_Metadata.identificationInfo >SV_ServiceIdentification. citation>CI_Citation.onlineResource>CI_OnlineResource)
- [Keywords:](./Keywords)  (MD_Metadata.identificationInfo >SV_ServiceIdentification>MD_Keywords)
- [Constraints on access and use:](./class-MD_Constraints) (MD_Metadata>SV_ServiceIdentification>MD_Constraints.useLimita- tions and/or MD_LegalConstraints and or MD_SecurityConstraints)
- [Metadata date stamp:](./MetadataDate) (MD_Metadata.dateInfo)
- [Metadata point of contact:](./MetadataContact) (MD_Metadata.contact > CI_Responsibility)
- [Resource type:](./MetadataScope) (MD_Metadata.metadataScope> MD_Scope.resourceScope)
- [Coupled Resource:](./CoupledResource) (MD_Metadata>SV_ServiceIdentification.coupledResource>SV-CoupledResource)
- [Coupled resource type:](./CouplingType) (MD_Metadata>SV_ServiceIdentification.couplingType>SV-CouplingType)
