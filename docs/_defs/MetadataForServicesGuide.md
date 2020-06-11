---
layout: page
rank: 20
type: page
section: Guidance
title: Metadata For Services Best Practices
---

# ICSM ISO19115-1 Metadata for Services Best Practices

This document was compiled by [OpenWork Ltd (OWL)](http://openwork.nz) on behalf of and with guidance and contributions from the [ICSM Metadata Working Group (MDWG)](https://www.icsm.gov.au/what-we-do/metadata-working-group). The purpose of this document is to capture the consensus best practice guidance for the use of recommended ISO 19115-1 metadata elements for organisataion in the Australia / New Zealand regionwhen documenting geospatial service. Further this guidance will aid the migration from the retired [ANZLIC](https://www.anzlic.gov.au/) Metadata Profile of ISO 19115:2003 to the currently endorsed ISO 191125-1:2014 (including Amd.1:2018).

Thiss guidance is a point in time best bractice guide and will be updated as requirement and capabilities evolve. This will be done in a structure version fashion. It is anticipated that new versions of this guidance will be released annually as a PDF document. Incremental changes, managed by the MDWG Technical group in byweekly meetings, will be versioned in a GitHub repository and reflected in the web pages view of this document.

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

- Lead Author: Byron Cochrane - OpenWork Ltd - byron@openwork.nz
- Irina Bastrakova - Geoscience Australia - irina.bastrakova@ga.gov.au
- Jenny Mahuika - Terrestrial Ecosystem Research Network (TERN) - j.mahuika@uq.edu.au
- Evert Bleys - ISO TC211 - ejbleys@gmail.com
- Melanie Barlow - Australian Research Data Commons (ADRC)- melanie.barlow@ardc.edu.au
- Aaron Sedgmen - Geoscience Australia - Aaron.Sedgmen@ga.gov.au

\pagebreak

## Introduction
Metadata is often defined as "Data about resources" - in this case, data about spatial service resources. This best practice guide represensents a consensus about creating metadata for spatial services in Australia and New Zealand.

It may be useful to think of this metadata standand, ISO 19115-1, as a language - a vocabulary and a grammar - that even a machine can understand. We select select from this language the words and structures we need to communicate what we need to about a spatial resource. Because it is highly structured, we can compare combine and contrast this with other simularly  structured data. As with any language there exists dialects. Think of this as as a guide to the Australian and New Zealand dialect of ISO 19115-1.

An external best practice pattern to which we should endeavour to adhere is the web built on linkages. These linkages are expressed as unique identifiers known as URLs or Resolvable URIs. Where identifiers exist, they should resolve to a location on the web. Two basic question for us to keep in mind when creating metadata become, "Can I create an identifier and linkage to unabmigously describe this aspect of my resource?" and “To what should these identifiers resolve?”  The answers depend on the situation. If we can answer the first question in the affirmative, then this strengthens the authority of our metadata and makes it easier to maintain - similar to normalising a database and providing a known one point of truth. In the second question, this often prompts the question of, “should this identifier link me to the resource or the metadata for that resource?”  If it is for the resource, what should the end point of that link be?

### Linking to documents vs data. 
The web is called the web because it is built on linking documents. This ability should be used whenever possible. But linking human readable documents like web pages and PDFs is different than linking to data and service resources. To what we link becomes much more nuanced. Do we really what to link to a spatial data resource that may be over a terabyte in size or a file, the contents of which is binary data that our browser knows not what to do with? Unless specifically told otherwise, web users expect links to deliver human readable documents.

### Consider the Audience
What do I need to say about this resource so that people understand what it is and how it may fit their needs? 

What needs to be said and documented may vary by the audience to whom you are speaking. Keep your primary audience in mind. Ususally, the audience is best thought of as those who are most likely to make use of your spatial service. These may likely be people in your same or similar domain. These are your high value users. Make sure you support their needs.

Let the question, “what does my audience need to know about this spatial resource?” guide your selection of elements which to populate. This question should also be used to guide how one populates these elements. However, in such a structured language, most elements with the exception of abstract, purpose and a few others, the contents of particular metadata elements is less of an issue.

Do not forget that there are other unknown potential users of you service. Let software create simplified versions of what you are saying present this to general audience as much as feasible. CSW will automatically create a simplified Dublin Core version of your metadata for a more general audience.

Finally, keep in mind that the most important audience may be in fact yourself or your own organisation. Write metadata that is useful to you when you find this service and need to use and fix it 5 or 10 years later or need to hand it off to a colleague.

## ICSM Specific Recommendations for Service Metadata

When creating metadata for services, most of the data resource metadata best practice guidance applies. But there are notable differences. Most of these differences are contained in the *IdentificationInfo* section

New elements specific to Service Metadata are highlighted in **Bold**

Elements with specific guidance for Services are in **_Bold Italic_**

- ### Metadata for Metadata
  - [Metadata for Metadata](./class-MD_Metadata )  
    - [Metadata Identifier](./MetadataIdentifier)  *Mandatory.*
    - [Metadata Linkage](./MetadataLinkage)  *Highly Recommended.*
    - [Metadata Date](./MetadataDate)  *Highly Recommended.*
    - [Metadata Responsible Party](./MetadataContact)  *Mandatory.*
    - [Metadata Default Locale](./MetadataLocale)  *Highly Recommended.*
    - [Metadata Legal Constraints](./MetadataLegalConstraints) *Recommended.*
    - [Metadata Security Constraints](./MetadataSecurityConstraints) *Recommended.*
    - [Metadata Standard](./MetadataStandard) *Highly Recommended.*  
    - **_[MetadataScope](./MetadataScope)_** *Mandatory.* For Service metadata, Resource Scope = *Service*

- ### General Identification Metadata Applicable to Services
  - [Metadata for Resources](./class-MD_Identification)    
      - [Abstract](./Abstract)  *Mandatory.*
      - [Purpose](./Purpose)  *Highly Recommended.*
      - [Status](./Status)  *Highly Recommended.*
      - [Topic Category](./TopicCategory)  *Highly Recommended.*
      - [Spatial resolution](./SpatialResolution)  *Highly Recommended.*
      - [Resource Point of Contact  role = 'pointOfContact'](./ResourcePointOfContact) *Highly Recommended.*
      - [Additional Docs](./AdditionalDocs)  *Recommended.* If any
      - [Spatial Representation Type](./SpatialRepresentationType)  *Recommended.*
  
  - #### CI_Citation  Package - [Service Citation](./ResourceCitation) Sub-elements 
    - [Title](./ResourceTitle) *Mandatory.*
    - [Identifier (uri)](./ResourceIdentifier) *Highly Recommended.*
    - [Date (creation)](./ResourceDate) *Highly Recommended.*
    - [Date (revision)](./ResourceDate) *Highly Recommended.* If applicable
    - [Date (issued)](./ResourceDate) *Highly Recommended.*
    - [Edition](./ResourceEdition) *Recommended.* If applicable
    - [Series](./ResourceSeries) *Recommended.* If applicable
    - [Cited Responsible party (author, creator, contributor, publisher)](./ResourceResponsibleParty) *Highly Recommended.*
    - **_[OnlineResource](./class-CI_OnlineResource)_** - Should provide the landing page for the service

- ### Service Specific Metadata in **[Service Identification](./ServiceIdentification)** 
  - **[serviceType](./ServiceType)**  - *Mandatory.* Plus at least one of:
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

- ### Other Metadata Packages 
  - [Associated Resource](./AssociatedResources)   class - MD_AssociatedResource  
  - [BrowseGraphic](./BrowseGraphic)  Class - MD_BrowseGraphic  - Perhaps a logo for the service or oganisation 
  - **_[Keywords](./Keywords)_** *Mandatory.* Package - MD_Keywords  including:  
    - **Service Keywords** *Mandatory.* for service metadata
    - ABS Field of Research
    - Other keywords
  - [Maintenance](./Maintenance) Package -  MD_MaintenanceInformation   
    - Frequency of update - of the service
    - scope for maintenance
  - [Resource Constraints](./class-MD_Constraints)   Consider what "Service Constraints" guidance is needed e.g.:
    - Use Limitations
    - Legal and Reference for Legal
    - Security and Reference for Security
    - Releasability
    - Other Constraints  
  - [Extents](./ResourceExtent)  Package -  EX_Extent  
    - [GeoExtent](./GeographicExtent) class - EX_GeographicExtent  
       - [geographic description](./ExtentGeographicDescription)
       - [bounding box](./ExtentBoundingBox)
    - [vertical extent](./VerticalExtent) class - EX_VerticalExtent  
    - [temporal extent](./TemporalExtents) class - EX_TemporalExtent  
  - [ReferenceSystemInfo](./SpatialReferenceSystem)   Package - MD_ReferenceSystem  
  - **_[Distribution Information](./DistributionInfo)_**   Package - MD_Distribution - Option for service endpioint location
    - Format - What the Online resource provides e.g. API, Webmap
    - Distributor - could cntain information about who hosts the service
    - Online Resource - *Highly Recommended* when using  *distributionInfo* for a service. The URL of the service

### Outstanding Issues

Some issues reamain unresolved and without clear consensus in the MDWG. Most of these are element specific and are discussed under those individual elements. But some are more broad.

#### How to Best Capture Link to Service Resource
Core to any metadata record is access to the described resource. The ISO 19115-1 standard provides somewhat different advice for data and services resources about how to best capture linkage to the resource described by a metadata record (as opposed to linkages to the metadata).  There are several options where service linkage may be expressed in a ISO19115-1 metadata record. The MDWG has not come to agreement as to a consistent approach. Inside the resource citation package, the `identifier` and `onlineResource` may both provide this functionality. The package `DistributionInfo` is of course a common way to capture such information - particularly for data resources, but is prehaps a less logical place when describing service resources. For service resources.`ContainsOperations` is another common location for resource access information. Further discussion and guidance is needed to resolve this issue in order to support machine readability and reduce confusion.

#### Link to Tightly Coupled Data
There are numerous ways the related data resource may be captured in a service metadata record (e.g. operatesOn, operatedDataset, or even a sibling MD_DataIdentification package. The choice of coupledResource is made for the following reasons. ISO 19115-1 recommends coupledResource as minimum metadata required for the discovery of service resources. The options operatesOn, SV_CoupledResource.resource and a sibling identificationInfo/MD_DataIdentification all require a MD_Identifier package. This would create metadata records that identify more than one resource. ICSM guidance is that such a situation be avoided as it could confuse other catalogues that expect a one-to-one relationship between metadata resources and resources.
It has been resolved that it will be best practice to use `CoupledResource>ReourceReference>onlineResource>Linkage` to hold linkage to metadata for tightly coupled resources. 


## Metadata required for the discovery of service resources
### As described in ISO 19115-1 Table F.2

The guidance produced here is meant to be a flexible resource. The element discussions are stored as separate files in a git repository and as such can be incorporated into web documents as needed for a particular purpose. They also may be cloned  or forked from the gihub repository at [https://github.com/icsm-au/metadata-working-group](https://github.com/icsm-au/metadata-working-group) and modified for a particular communities purpose.

Below is a example of how one might use a particular collection of best practice guidance documents to support a particular purpose. In this case is a list of elements as described in ISO 19115-1 Table F.2 of the minimum metadata required for the discovery of service resources

| **Element** | **Class** |
| --- | --- |
| [Metadata reference information:](./MetadataIdentifier) |  (MD_Metadata.metadataIdentifier) |
| [Service title:](./ResourceTitle) | (MD_Metadata .identificationInfo>SV_ServiceIdentification.citation>CI_Citation.title) |
| [Reference date:](./ResourceDate) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation>CI_Citation.date) |
| [Resource identifier:](./ResourceIdentifier) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation>CI_Citation.identifier>MD_Identifier) |
| [Responsible party:](./ResourceResponsibleParty) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.pointOfContact>CI_Responsibility) |
| [Geographic location:](./ResourceExtent) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.extent>EX_Extent.geographicElement> EX_GeographicExtent> EX_GeographicBoundingBox –or- EX_GeographicDescription) | 
| [Service topic category:](./TopicCategory) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.topicCategory>MD_TopicCategoryCode) |
| [Resource abstract:](./Abstract) | (MD_Metadata.identificationInfo>SV_ServiceIdentification. abstract) |
| [On-line Link:](./class-CI_OnlineResource) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation>CI_Citation.onlineResource>CI_OnlineResource) |
| [Keywords:](./Keywords) | (MD_Metadata.identificationInfo>SV_ServiceIdentification>MD_Keywords) |
| [Constraints on access and use:](./class-MD_Constraints) | (MD_Metadata>SV_ServiceIdentification>MD_Constraints.useLimitations and/or MD_LegalConstraints and or MD_SecurityConstraints) |
| [Metadata date stamp:](./MetadataDate) | (MD_Metadata.dateInfo) |
| [Metadata point of contact:](./MetadataContact) | (MD_Metadata.contact>CI_Responsibility) |
| [Resource type:](./MetadataScope) | (MD_Metadata.metadataScope>MD_Scope.resourceScope) |
| [Coupled Resource:](./CoupledResource) | (MD_Metadata>SV_ServiceIdentification.coupledResource>SV-CoupledResource) |
| [Coupled resource type:](./CouplingType) | (MD_Metadata>SV_ServiceIdentification.couplingType>SV-CouplingType) |
