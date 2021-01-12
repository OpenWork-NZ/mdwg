---
layout: page
rank: 20
type: page
section: Guidance
title: Metadata For Services Best Practices
guides: [Metadata, Services]
save_guide: Services
header: ICSM ISO19115-1 Metadata for Services Best Practices
---

# ICSM ISO19115-1 Metadata for Services Best Practices

This document was compiled by [OpenWork Ltd (OWL)](http://openwork.nz) on behalf of and with guidance and contributions from the [ICSM Metadata Working Group (MDWG)](https://www.icsm.gov.au/what-we-do/metadata-working-group). The purpose of this document is to capture the consensus best practice guidance for the use of recommended ISO 19115-1 metadata elements for organisations in the Australia / New Zealand region when documenting geospatial service. Further, this guide will aid the migration from the retired [ANZLIC](https://www.anzlic.gov.au/) Metadata Profile of ISO 19115:2003 to the currently endorsed ISO 191115-1:2014 (including Amd.1:2018).

This guidance is a point in time best practice guide and will be updated as requirement and capabilities evolve. This will be done in a structure version fashion. It is anticipated that new versions of this guidance will be released annually as a PDF document. Incremental changes, managed by the MDWG Technical group in biweekly meetings, will be versioned in a GitHub repository and reflected in the web pages view of this document.

![Geoscience Australia](../images/GA.jpg)  
![ARDC](../images/ARDC.png)  ![DEE](../images/DeptEngEnv.png) 
![TERN](../images/TERN.png)  ![DOD](../images/dod.jpg)  ![AAD](../images/aad.png)  
 ![OpenWork Ltd](../images/openwork.png) 
 
\pagebreak

## Acknowledgements

### ICSM Metadata Working Group 

- Chair :  Irina Bastrokova
- Secretariat:  Graham Logan
- ICSM Chair:  Simon Costello
- ICSM Executive Officer: Lesley Waterhouse

### Contributors

- Lead Author: Byron Cochrane - OpenWork Ltd
- Irina Bastrakova - Geoscience Australia
- Jenny Mahuika - Terrestrial Ecosystem Research Network (TERN)
- Evert Bleys - ISO TC211
- Melanie Barlow - Australian Research Data Commons (ARDC)
- Aaron Sedgmen - Geoscience Australia

\pagebreak

### Outstanding Issues

Some issues remain unresolved and without clear consensus in the MDWG. Most of these are element specific and are discussed under those individual elements. But some are broader.

#### How to Best Capture Link to Service Resource
Core to any metadata record is access to the described resource. The ISO 19115-1 standard provides somewhat different advice for data and services resources about how to best capture linkage to the resource described by a metadata record (as opposed to linkages to the metadata).  There are several options where service linkage may be expressed in an ISO19115-1 metadata record. The MDWG has not agreed to a consistent approach. Inside the resource citation package, the `identifier` and `onlineResource` may both provide this functionality. The package `DistributionInfo` is, of course, a common way to capture such information - particularly for data resources, but is perhaps a less logical place when describing service resources. For service resources.`ContainsOperations` is another common location for resource access information. Further discussion and guidance are needed to resolve this issue to support machine readability and reduce confusion.

#### Link to Tightly Coupled Data
There are numerous ways the related data resource may be captured in a service metadata record (e.g. operatesOn, operatedDataset, or even a sibling MD_DataIdentification package. The choice of coupledResource is made for the following reasons. ISO 19115-1 recommends coupledResource as minimum metadata required for the discovery of service resources. The options operatesOn, SV_CoupledResource.resource and a sibling identificationInfo/MD_DataIdentification all require a MD_Identifier package. This would create metadata records that identify more than one resource. ICSM guidance is that such a situation be avoided as it could confuse other catalogues that expect a one-to-one relationship between metadata resources and resources.
It has been resolved that it will be best practice to use `CoupledResource>ResourceReference>onlineResource>Linkage` to hold linkage to metadata for tightly coupled resources. 

\pagebreak

## Metadata required for the discovery of service resources
### As described in ISO 19115-1 Table F.2

The guidance produced here is meant to be a flexible resource. The element discussions are stored as separate files in a git repository and as such can be incorporated into web documents as needed for a particular purpose. They also may be cloned or forked from the GitHub repository at [https://github.com/icsm-au/metadata-working-group](https://github.com/icsm-au/metadata-working-group) and modified for a particular communities purpose.

Below is an example of how one might use a particular collection of best practice guidance documents to support a particular purpose. In this case, is a list of elements as described in ISO 19115-1 Table F.2 of the minimum metadata required for the discovery of service resources

| **Element**   | **Class** | 
| ------------- | ------------------------ |
| [Metadata reference information:](./MetadataIdentifier) |  (MD_Metadata.metadataIdentifier) |
| [Service title:](./ResourceTitle) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation >CI_Citation.title) |
| [Reference date:](./ResourceDate) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation >CI_Citation.date) |
| [Resource identifier:](./ResourceIdentifier) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation >CI_Citation.identifier >MD_Identifier) |
| [Responsible party:](./ResourceResponsibleParty) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.pointOfContact >CI_Responsibility) |
| [Geographic location:](./ResourceExtent) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.extent >EX_Extent.geographicElement>EX_GeographicExtent >EX_GeographicBoundingBox –or- EX_GeographicDescription) | 
| [Service topic category:](./TopicCategory) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.topicCategory >MD_TopicCategoryCode) |
| [Resource abstract:](./Abstract) | (MD_Metadata.identificationInfo>SV_ServiceIdentification. abstract) |
| [On-line Link:](./class-CI_OnlineResource) | (MD_Metadata.identificationInfo>SV_ServiceIdentification.citation >CI_Citation.onlineResource>CI_OnlineResource) |
| [Keywords:](./Keywords) | (MD_Metadata.identificationInfo>SV_ServiceIdentification>MD_Keywords) |
| [Constraints on access and use:](./class-MD_Constraints) | (MD_Metadata>SV_ServiceIdentification>MD_Constraints.useLimitations and/or MD_LegalConstraints and or MD_SecurityConstraints) |
| [Metadata date stamp:](./MetadataDate) | (MD_Metadata.dateInfo) |
| [Metadata point of contact:](./MetadataContact) | (MD_Metadata.contact>CI_Responsibility) |
| [Resource type:](./MetadataScope) | (MD_Metadata.metadataScope>MD_Scope.resourceScope) |
| [Coupled Resource:](./CoupledResource) | (MD_Metadata>SV_ServiceIdentification.coupledResource>SV-CoupledResource) |
| [Coupled resource type:](./CouplingType) | (MD_Metadata>SV_ServiceIdentification.couplingType>SV-CouplingType) |

\pagebreak
