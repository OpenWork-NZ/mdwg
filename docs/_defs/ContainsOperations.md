---
layout: page
rank: 40
type: element
section: Service Metadata
title: Contains Operations
---
# Contains Operations  ★★★★ 

*Once a service is discovered, potential users need to know what operations the service provides and on what resources it operates. Provision of the specifics of the operations allows such evaluation and use.*

|  |  |
| --- | --- |
| **Element Name** | *containsOperations* |
| **Parent** |  *[MD_Metadata.identificationInfo>SV_ServiceIdentification](./ServiceIdentification)* |
| **Class/Type** | *SV_OperationMetadata* |
| **Governance** |  *Common ICSM* |
| **Purpose** | *Evaluation, Use* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ ⭑ |
|  | general - ⭑ ⭑ ⭑|
|  | resource manager - ⭑ ⭑ |
|  | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *structural* |

- *ICSM Level of Agreement* - ⭑ ⭑

## Definition  
**provides information about the operations that comprise the service**

### ISO Requirements

This is an ISO optional element. There may be zero or many [0..\*] *containsOperations* entries for the cited resource in the  *[SV_ServiceIdentification](./ServiceIdentification)* package of class *SV_OperationMetadata*  in a metadata record for a service resource.

## Discussion  
It is useful when documenting a service to document the particular operations that the service can be called upon to do.  As many of the services we may call will have operations that summarise the operations that the service provides it may be better to document this one service in order not to duplicate or cause confusion. GetCapabilities would be an example of this as would an OpenAPI endpoint as implemented in OGC API common based services.


## ICSM Recommendations 

Therefore - If a potential client of a service is to use such service, descriptions of the functionality and use of operations provided shoud be documented in metadata of a geospatial service. 

### Recommended Sub-Elements 


- **operationName -** *(type - charStr)* [1..1] - Mandatory. A unique identifier within the service for this interface e.g. GetCapabilities
- **distributedComputingPlatform -** *(codelist - DCPList)* [1..\*] - Mandatory. Distributed computing platforms on which the operation has been implemented 
- **operationDescription -** *(type - charStr)* [0..1] - Free text description of the intent of the operation and the results of the operation
- **invocationName -** *(type - charStr)* [0..1] - The name used to invoke this interface within the context of the DCP. The name is identical for all DCPs.
- **connectPoint -** *(class - [CI_OnlineResource](class-CI_OnlineResource)* [1..\*] - Mandatory. Handle for accessing the service interface. Usually a complete URL. 
- **[parameter -](./Parameter)** *(class - SV_Parameter)* [0..\*] - A description of the parameters that can be provided to the operation. See **[parameter -](./Parameter)** for more information

#### Other Sub-Elements
- **dependsOn** - *(class - SV_OperationsMetadata)*  [0..\*] - Operations that must be completed immediately before current operation is invoked. When multiple, structured as a list for capturing alternate predecessor paths and sets for capturing parallel predecessor paths

### Related Codelists

####  DCPList - codelist

There are 10 options to choose from in the Distributed Computing Platform code list (DCPList). At least one must be chosen when describing a service operation. These are as follows:

* **XML** - eXtensible Markup Language
* **CORBA** - Common Object Request Broker Architecture
* **JAVA** - JAVA programming language
* **COM** - Component Object Model - Microsoft's framework for developing and supporting program component objects
* **SQL** - Structured Query Language - a standard interactive and programming language for getting information from and updating a database
* **SOAP** - Simple Object Access Protocol
* **Z3950** - ISO 23950, an international standard client–server, application layer communications protocol for searching and retrieving information from a database over a TCP/IP computer network.
* **HTTP** - HyperText Transfer Protocol
* **FTP** - File Transfer Protocol
* **webServices** - any web based services


## Outstanding Issues
{Unresolved issues of discussion are captured here in Markdown Notes format}

> **CORE ISSUE:**  
{If there is any major issue of concern, Name it and discuss here}

> **{Issue Name}**
{Issue discussion points and items which need resolution}


#### Other Discussion 
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

## Also Consider
{Links to additional useful information. Usually other elements, packages and classes in this good pratice document. May also link to other external resources.}

**[{element name} -]({path to element})**  {description of importance and utility with any links}

**[{element name} -]({path to element})**  {description of importance and utility with any links}

**[{class name} -]({path to class})**  {description of importance and utility with any links}

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
