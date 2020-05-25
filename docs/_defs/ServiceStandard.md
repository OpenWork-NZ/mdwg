---
layout: page
rank: 40
type: page
section: Service Metadata
title: Service Standard
---
# Service Standard  ★★★ 

*When documenting a spatial service the details of the standard to which a service adheres should be provided so that once descovered potential users may find further authoritative information about such standard.*

|  |  |
| --- | --- |
| **Element Name** | *serviceStandard* |
| **Parent** |  *[MD_Metadata.identificationInfo>SV_ServiceIdentification](./ServiceIdentification)* |
| **Class/Type** | *CI_Citation* |
| **Governance** |  *Common ICSM* |
| **Purpose** | *Evaluation, Use* |
| **Audience** |- machine resource - ⭑ ⭑ ⭑ |
|  | general - ⭑ ⭑ ⭑ |
|  | resource manager - ⭑ ⭑ ⭑ ⭑ |
|  | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *descriptive* |
| **ICSM Level of Agreement** | ⭑ ⭑ |

## Definition  
**The standard to which the service adheres**

### ISO Requirements

There may be zero or more [0-\*] *serviceStandard* entries for the cited resource for a  *[SV_ServiceIdentification](./ServiceIdentification)* package of class *[CI_Citation](./class-CI_Citation)* in a service metadata record.

## Discussion  
To be complete in the desciption of the standards to which a spatial service adheres, citations, including linkages to official websites and documentation, of such standards should be provided. This will aid potential users in the use of such services or to troubleshoot when the use of such services do not behave as expected.

When the service complies to a particular profile of a standard, it will suffice to complete the sibling *profile* element to the same degree.


## ICSM Recommendations 

Therefore - When a service adheres to particular service standards such standards should be cited in this package. If a particular profile of such standard is implemented it is sufficient to document this in *[SV_ServiceIdentification.profile](./profile).* 

#### Recommended Sub-Elements 
Follow the guidance in *[CI_Citation](./class-CI_Citation)* noting the following element usage:

- **Title -** *(type - charStr)*[1..1] Mandatory -  The well known name of the service standard
- **onlineResource -**  *(class -  [CI_OnlineResource](./class-CI_OnlineResource))* [0..\*] online reference to the cited resource
- **linkage -** (*type - charStr*) [1..1] Mandatory for *class - CI_OnlineResource* - usually the web address to the authoritative documentation for the service

## Also Consider
There are any locations where service type and version infromation may be captured. Choose appropriately.

**[Service Type](./ServiceType)** The mandatory *serviceType* element should be populated with a value from managed controled vocabulary containing names for generic types of services. While ISO 19115-1 descibes these values as very specific (e.g. ‘discovery’, ‘view’, ‘download’, ‘transformation’, or ‘invoke') in practice, somewhat generic terms for spatial service standards are often used (e.g. OGC Web Map Service, OGC Web Coverage Service, Atom feed)

**[Service Type Version](./ServiceTypeVersion)** The version of the service.  Provided to enhance searchability based on the version of serviceType. Could be a shorthand handle like WMS 1.4.1

**[Service Profile](./ServiceProfile)**  When a service conforms to a particular profile of a service standard, the profile to which the service adheres should be cited (instead of the Service Standard)

**[Keywords (services)-](./Keywords)**  To enable ease of discovery, a service metadata record should contain at least one keyword of type *service*. The value of such keywords should refer to the service taxonomy defined in ISO 19119.

## Outstanding Issues
{Unresolved issues of discussion are captured here in Markdown Notes format}

> **CORE ISSUE:**  
{If there is any major issue of concern, Name it and discuss here}

> **Use of StandardVersion vs Profile**
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
