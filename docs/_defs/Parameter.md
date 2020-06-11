---
layout: page
rank: 40
type: element
section: Service Metadata
title: Parameter
---
# Parameter  ★★★ 

*Once a service operation has been discovered, potential users need to know the parameters that are required for this interface in sequence. Provision of the specifics of the operation parameters allows such evaluation and use.*

|  |  |
| --- | --- |
| **Element Name** | *parameter* |
| **Parent** |  *[MD_Metadata.identificationInfo>SV_ServiceIdentification](./ServiceIdentification)* |
| **Class/Type** | *SV_Parameter* |
| **Governance** |  *Domain, Agency* |
| **Purpose** | *Evaluation, Use* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ ⭑ |
|  | general - ⭑ ⭑|
|  | resource manager - ⭑ ⭑ |
|  | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *structural* |
| **ICSM Level of Agreement** | ⭑ ⭑ |

## Definition  
**the parameters that are required for a service operation interface, in sequence**

### ISO Requirements

This is an ISO optional element. There may be zero or many [0..\*] *parameter* instances of class *SV_Parameter* associated to service operation (*containsOperations*, class *SV_OperationMetadata*) entries for the cited resource.  If parameter order is important, then these should be recorded in the proper sequence.

## Discussion  
It is useful when documenting a service to document the particular parameters that the service operations need and expect, if any. This documentation must include the parameter technical details including *name*, *direction*, *optionality*, and *repeatability*.  A description of the purpose of the parameter is useful for users to evaluate the utility of such operations.

As many of the services we may call will have operations that summarise the operations that the service provides it may be better to document this one service in order not to duplicate or cause confusion. GetCapabilities would be an example of this as would an OpenAPI endpoint as implemented in OGC API common based services. These operations typically require no parameters, but the operations they describe will contain the necessary parameters.

## ICSM Recommendations 

Therefore - If a potential client of a service is to use such service, descriptions of the functionality and use of the parameters required by these operations shoud be documented in metadata of a geospatial service. When used, this element has several mandatory subelements as described below.

### Recommended Sub-Elements 

- **name -** *(class - MemberName)* [1..1] - Mandatory. The name, as used by the service for this parameter 
- **direction -** *(codelist - SV_ParameterDirection)* [1..1] - Mandatory. Indication if the parameter is an input to the service, an output or both 
- **description -** *(type - charStr)* [0..1] - A narrative explanation of the role of the parameter
- **optionality -** *(type - Boolean)* [1..1] - Mandatory. Indication if the parameter is required (True or False)
- **repeatability -** *(type - Boolean)* [1..1] - Mandatory. Indication if more than one value of the parameter may be provided (True or False)


### Related Codelists

#### SV_ParameterDirection - codelist

When describing the service parameters, the *direction* for each paramenter must be described from the *SV_ParameterDirection* codelist. Available values are:

* **in** - The parameter is an input parameter to the service instance
* **out** - The parameter is an output parameter to the service instance
* **in/out** - The parameter is both an input and output parameter to the service instance

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

## Crosswalk Considerations 

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
