---
layout: page
rank: 20
type: page
section: Guidance
title: Metadata For Services
---

{% for def in site.defs %}{% if def.section == "Service Metadata" %}
* [{{def.title}}]({{def.url|relative_url}})
{% endif %}{% endfor %}

## ICSM Recommendations 
### Metadata for Metadata
- [Metadata for Metadata](./class-MD_Metadata )  
- [Metadata Identifier](./MetadataIdentifier)  
- [Metadata Linkage](./MetadataLinkage)  
- [Metadata Date](./MetadataDate)  
- [Metadata Responsible Party](./MetadataContact)  
- [Metadata Default Locale](./MetadataLocale)  
- [Metadata Legal Constraints](./MetadataLegalConstraints) - Includes:  
      - Legal Constraints
      - Reference for Legal
- [Metadata Security Constraints](./MetadataSecurityConstraints) - Includes:  
      - Security Constraints
      - Reference For Security
- [Metadata Standard](./MetadataStandard) To be fixed - missing element  
- [Parent Metadata](./parentMetadata)  Needed for services?
- [MetadataScope](./MetadataScope)  Resource Scope  

### General Identification Metadata
- [Metadata for Resources](./class-MD_Identification)    
    - [Abstract](./Abstract)  
    - [Purpose](./Purpose)  
    - [Status](./Status)  
    - [Topic Category](./TopicCategory)  
    - [Spatial resolution](./SpatialResolution)  
    - [Resource Point of Contact  role = 'pointOfContact'](./ResourcePointOfContact)
       - role = 'originator', 'author'
       - role = 'contributor'
       - role = 'publisher'
- [Additional Docs](./AdditionalDocs)  
    [Spatial Representation Type](./SpatialRepresentationType)  

### Service Specific Metadata
- [Metadata for Services](./ServiceIdentification)
    - [serviceTypeVersion](./ServiceTypeVersion)  
    - accessProperties  - needed?
    - [couplingType](./CouplingType)  
    - [coupledResource](./CoupledResource)  
      - ScopedName
      - ResourceReference - includes
          - Title
          - OnlineResource
    - [profile](./ServiceProfile)  CI_Citation
    - [serviceStandard](./ServiceStandard)  CI_Citation
    - [ContainsOperations](./ContainsOperations) class - SV_OperationMetadata    
       - operationName  
       - distributedComputingPlatform  DCP List
       - operationDescription  
       - invocationName  
       - connectPoint  CI_OnlineResource
       - [parameter](./Parameter) class - SV_Parameter
           - name  
           - direction  
           - description  
           - optionality  
           - repeatability  

### Other Metadata Packages (To Review)

- [Associated Resource](./AssociatedResource)   class - MD_AssociatedResource  - Needed    
- [Format](./ResourceFormat) Needed?  
- [BrowseGraphic](./BrowseGraphic)  Class - MD_BrowseGraphic  
- [Keywords](./Keywords)  Package - MD_Keywords  
      - Service Keywords
      - ABS Field of Research
      - Other keywords
- [Maintenance](./Maintenance) Package -  MD_MaintenanceInformation   
      - Frequency of update
      - scope for maintenance
- [Resource Constraints](./class-md_constraints)   Do we need separate "Service Constraints"?
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
- [Distribution Information](./DistributionInfo)   Package - MD_Distribution   
      - Format
      - Distributor
      - Online Resource
      - Offline Resource

### CI_Citation  Package - [Service Citation](./ServiceCitation) Sub-elements to be reviewed
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
- [OnlineResource](./class_CI_OnlineResource)

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
- [On-line Link:](./class_CI_OnlineResource) (MD_Metadata.identificationInfo >SV_ServiceIdentification. citation>CI_Citation.onlineResource>CI_OnlineResource)
- [Keywords:](./Keywords)  (MD_Metadata.identificationInfo >SV_ServiceIdentification>MD_Keywords)
- [Constraints on access and use:](./class-md_constraints) (MD_Metadata>SV_ServiceIdentification>MD_Constraints.useLimita- tions and/or MD_LegalConstraints and or MD_SecurityConstraints)
- [Metadata date stamp:](./MetadataDate) (MD_Metadata.dateInfo)
- [Metadata point of contact:](./MetadataContact) (MD_Metadata.contact > CI_Responsibility)
- [Resource type:](./MetadataScope) (MD_Metadata.metadataScope> MD_Scope.resourceScope)
- [Coupled Resource:](./CoupledResource) (MD_Metadata>SV_ServiceIdentification.coupledResource>SV-CoupledResource)
- [Coupled resource type:](./CouplingType) (MD_Metadata>SV_ServiceIdentification.couplingType>SV-CouplingType)
