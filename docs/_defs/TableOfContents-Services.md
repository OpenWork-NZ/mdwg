---
layout: page
rank: 5
type: section
section: Table of Contents
title: Table of Contents - Services
guides: [Services]
save_guide: Services
header: ICSM ISO19115-1 Metadata Best Practice Guide
---
#  ICSM Metadata Services Best Practice - Table of Contents

When creating metadata for services, most of the data resource metadata best practice guidance applies. But there are notable differences. Most of these differences are contained in the *IdentificationInfo* section

New elements specific to Service Metadata are highlighted in **Bold**

Elements with specific guidance for Services are in **_Bold Italic_**

### Guidance
- [Introduction](./MetadataForServicesGuide)
- [Pattern guide](./PatternGuide)
- [Template](./Template)

### Metadata for Metadata
- Package - [Metadata Info](./class-MD_Metadata )  
  - [Metadata Identifier](./MetadataIdentifier)  *Mandatory.*
  - [Metadata Linkage](./MetadataLinkage)  *Highly Recommended.*
  - [Metadata Date](./MetadataDate)  *Highly Recommended.*
  - [Metadata Responsible Party](./MetadataContact)  *Mandatory.*
  - [Metadata Default Locale](./MetadataLocale)  *Highly Recommended.*
  - **_[MetadataScope](./MetadataScope)_** *Mandatory.* For Service metadata, Resource Scope = *Service*
  - [Metadata Legal Constraints](./MetadataLegalConstraints) *Recommended.*
  - [Metadata Security Constraints](./MetadataSecurityConstraints) *Recommended.*
  - [Metadata Standard](./MetadataStandard) *Highly Recommended.*

  
### Metadata for Service Resources
- Package - [Service Identification Information](./ServiceIdentification)
    - [Resource Default locale](./ResourceLocale)
    - [Abstract](./Abstract)  *Mandatory.*
    - [Purpose](./Purpose)  *Highly Recommended.*
    - [Status](./Status)  *Highly Recommended.*
    - [Topic Category](./TopicCategory)  *Highly Recommended.*
    - [Spatial resolution](./SpatialResolution)  *Highly Recommended.*
    - [Resource Point of Contact  role = 'pointOfContact'](./ResourcePointOfContact) *Highly Recommended.*
    - [Additional Docs](./AdditionalDocs)  *Recommended.* If any
    - [Spatial Representation Type](./SpatialRepresentationType)  *Recommended.*
  - **[serviceType](./ServiceType)**  *Mandatory.* Plus at least one of:
  - **[serviceTypeVersion](./ServiceTypeVersion)**
  - **[profile](./ServiceProfile)**  CI_Citation
  - **[serviceStandard](./ServiceStandard)**  CI_Citation
  - **[couplingType](./CouplingType)** *Highly Recommended.* Options = `tight`, `loose`, `mixed`
  - **[coupledResource](./CoupledResource)** *Highly Recommended* when *CouplingType* is `tight`. Includes:  
    - ScopedName - *Mandatory*
    - ResourceReference - includes:
      - Title - *Mandatory*
      - OnlineResource - *Highly Recommended.* Metadata URL for related data
  - **[ContainsOperations](./ContainsOperations)** class - SV_ContainsOperation   Contains:
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
  - [Associated Resource](./AssociatedResources)   class - MD_AssociatedResource
  - [BrowseGraphic](./BrowseGraphic)  Class - MD_BrowseGraphic  - Perhaps a logo for the service or oganisation 
- Package - [Service Citation](./ResourceCitation) 
  - [Title](./ResourceTitle) *Mandatory.*
  - [Resource Identifier (uri)](./ResourceIdentifier) *Highly Recommended.*
  - [Resource Date](./ResourceDate) *Highly Recommended.*
  - [Resource Edition](./ResourceEdition) *Recommended.* If applicable
  - [Series](./ResourceSeries) *Recommended.* If applicable
  - [Cited Responsible party (author, creator, contributor, publisher)](./ResourceResponsibleParty) *Highly Recommended.*
  - **_[OnlineResource](./class-CI_OnlineResource)_**  Should provide the landing page for the service
- **_Package - [Keywords](./Keywords)_** *Mandatory.* Package - MD_Keywords  including:  
  - **Service Keywords** *Mandatory.* for service metadata
  - ABS Field of Research
  - Other keywords
- Package - [Maintenance](./Maintenance) -  MD_MaintenanceInformation   
  - Frequency of update - of the service
  - scope for maintenance
  - Package - Resource Constraint Information
	- [Resource Constraints](./ResourceOtherConstraints) - Includes:
	  - UseLimitations
	  - Releasibility
	  - OtherConstraints
	- [Resource Legal Constraints](./ResourceLegalConstraints) - Includes
	  - Legal constraints
	  - Reference for legal
	- [Resource Security Constraints](./ResourceSecurityConstraints) Includes
	  - Security constraints
	  - Reference for security
- Package - [Extents](./ResourceExtent)  
  - [GeoExtent](./GeographicExtent)
	- [Extent Geographic Description](./ExtentGeographicDescription)
	- [Extent Bounding Box](./ExtentBoundingBox)
  - [Extent Vertical](./VerticalExtent)
  - [Extent Temporal](./TemporalExtents) 
- Package - [ReferenceSystemInfo](./SpatialReferenceSystem)   Package - MD_ReferenceSystem
- **_Package -[Distribution Information](./DistributionInfo)_**   Package - MD_Distribution - Option for service endpoint location
  - Format - What the Online resource provides e.g. API, Webmap
  - Distributor - could contain information about who hosts the service
  - Online Resource - *Highly Recommended* when using  *distributionInfo* for a service. The URL of the service

### Classes 
- [CI_Citation](./class-CI_Citation)
- [CI_Date](./class-CI_Date)
- [CI_OnlineResource](./class-CI_OnlineResource)
- [CI_Responsibility](./class-CI_Responsibility)
- [MD_BrowseGraphic](./class-MD_BrowseGraphic)
- [MD_Constraints](./class-MD_Constraints)
- [MD_DataIdentification](./class-MD_DataIdentification)
- [MD_Metadata](./class-MD_Metadata)
- [MD_Identification](./class-MD_Identification)
- [MD_Identifier](./class-MD_Identifier)
- [MD_LegalConstraints](./class-MD_LegalConstraints)
- [MD_Scope](./class-MD_Scope) 
- [MD_SecurityConstraints](./class-MD_SecurityConstraints)
- [PT_Locale](./PT_Locale)

**>> [*Patterns Explained*](./PatternGuide)**

\pagebreak
