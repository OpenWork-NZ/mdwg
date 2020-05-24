---
layout: page
rank: 40
type: page
section: Service Metadata
title: Service Type Version
---
# Service Type Version  ★★ 

*When describing Spatial Servives in a metadata record, it is useful to capture the type and version of the service in its commonly know name so as those who may wish to use the service can determine its campatibility to the desired purpose.*

|  |  |
| --- | --- |
| **Element Name** | *serviceTypeVersion* |
| **Parent** |  *[MD_Metadata.identificationInfo>SV_ServiceIdentification](./ServiceIdentification)* |
| **Class/Type** | *characterString* |
| **Governance** |  *Domain, Agency* |
| **Purpose** | *Discovery, Evaluation, Use* |
| **Audience** |- machine resource - ⭑ ⭑ |
|  | general - ⭑ ⭑ ⭑|
|  | resource manager - ⭑ ⭑ ⭑|
|  | specialist - ⭑ ⭑ ⭑ |
|**Metadata type** | *descriptive* |

- *ICSM Level of Agreement* - ⭑⭑⭑ 

## Definition  
**The version of the service, supports searching based on the version of serviceType**

### ISO Requirements

There may be zero to many  [0..\*] *serviceTypeVersion* entries for the cited resource for a  *[SV_ServiceIdentification](./ServiceIdentification)* package of type *characterString*  in a metadata record.

## Discussion  
Many tools may be able to connect to and make use of only particular versions of a spatial service. For instance, some GIS tools may be able to consume WFS 1.1.0 but not WFS 2.0.0. Or the reverse may be true. Providers of services should provide this information to those who may want to connect to such.

Detailed citation of such services, including linkages to the service standard itself or profile of such, should be captured in *[SV_ServiceIdentification.serviceStandard](./ServiceStandard)* or *[SV_ServiceIdentification.profile](./ServiceProfile)*.

## ICSM Recommendations 

Therefore - It is recommended that the *ServiceTypeVersion* be populated in service metadata records in such a way that discovery of services that adhere to a specific service type version can be found and filtered.

## Also Consider
There are any locations where service type and version infromation may be captured. Choose appropriately.

**[Service Type](./ServiceType)** The mandatory *serviceType* element should be populated with a value from managed controled vocabulary containing names for generic types of services. While ISO 19115-1 descibes these values as very specific (e.g. ‘discovery’, ‘view’, ‘download’, ‘transformation’, or ‘invoke') in practice, somewhat generic terms for spatial service standards are often used (e.g. OGC Web Map Service, OGC Web Coverage Service, Atom feed)

**[Service Standard](./ServiceStandard)** When a service conforms to a particular service standard that standard to which the service adheres should be cited

**[Service Profile](./ServiceProfile)**  When a service conforms to a particular profile of a service standard, the profile to which the service adheres should be cited (instead of the Service Standard)

**[Keywords (services)-](./Keywords)**  To enable ease of discovery, a service metadata record should contain at least one keyword of type *service*. The value of such keywords should refer to the service taxonomy defined in ISO 19119.

## Outstanding Issues

> **CORE ISSUE:**  
There is an appearent incongruity in the definition of ServiceType and ServiceTypeVersion. While ServiceType is described as contain values of a very general nature, download, view, etc., ServiceTypeVersion is defined as a refinement of ServiceType. But generic terms like "download" do not have versions. In practice ServiceType is often populated with more specific terms like "OGC WMS" and ServiceTypeVersion may be "OGC WMS 1.4".

> **{Issue Name}**
{Issue discussion points and items which need resolution}


#### Other discussion 
{from other sources of note - other standards and implementations. In Markdown Notes format. Such as:}

> **{DCAT Notes}** -
{Discussion of issue}

> **{From data.govt.au}** -
{Discussion of issue}

## Crosswalk considerations 

#### ISO19139 
{Discussion of issues, if any, to guide migration from ISO19139}

#### Dublin core / CKAN / data.gov.au {if any}
{mapping to `DC element` and discussion}

#### DCAT 
{mapping to `DCAT element` and discussion, if any}

#### RIF-CS
{mapping to `RIF-CS element` and discussion, if any}



## Examples

### GA
{example - if any useful}

### ABARES
{example - if any useful}

### Others
{### who - example - if any useful}}

### XML -

```
<mdb:MD_Metadata>
....
  {<in context xml/>}
....
</mdb:MD_Metadata>
```

### UML diagrams
{Captured from official ISO documentation at https://www.isotc211.org/hmmg/HTML/ConceptualModels/index.htm?goto=1:12:2:4095}
Recommended elements highlighted in Yellow

![{Name}]({path to UML diagram image})

\pagebreak
