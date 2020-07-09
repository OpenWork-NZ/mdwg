---
layout: page
rank: 40
type: page
section: Guidance
title: Template
---
# {Element or Package Title}  ★★★★★ 
{stars indicate level of ICSM importance / priority}

*{A brief description about the problem this element addresses - why we need it. Where it sits in the metadata hierarchy.}*
|  |  |
| --- | --- |
| **Element Name** | *serviceTypeVersion* |
| **Parent** |  *[MD_Metadata.identificationInfo>SV_ServiceIdentification](./ServiceIdentification)* |
| **Class/Type** | *characterString* |
| **Governance** |  *Domain, Agency* |
| **Purpose** | *Discovery, Evaluation, Use* |
| **Audience** | machine resource - ⭑ ⭑ |
|  | general - ⭑ ⭑ ⭑ |
|  | resource manager - ⭑ ⭑ ⭑ |
|  | specialist - ⭑ ⭑ ⭑ |
| **Metadata type** | *descriptive* |
| **ICSM Level of Agreement** | ⭑ ⭑ ⭑ |

## Definition  
**{In context definition}**

### ISO Requirements

{Verbal description with links of the cardinality (e.g. [1-*]) and obligation of the element and its class}

## Discussion  
{This section captures the thinking behind the use of this element. The following aspects in this order are considered:

- Why this element is import?
- What we need it for?
- Who should capture this information? 
- Whom is it useful to?
- When should the information be captured? 
- Where is it important, with what resource?}

## ICSM Recommendations 

{Therefore - statement about what, why, who, when and how MDWG recommend this element be used}
{A brief statement of MDWG guidance on use of this element}

### Recommended Sub-Elements 
{MDWG recommended sub-elements and how to populate them. May be nested.}

- **{sub-elementName} -** *(type - {name of type})* [{cardinality}] - {brief guidance statement} 
- **{sub-elementName} -** *(codelist - {name of codelist})* [{cardinality}] - {brief guidance statement} 
- **{sub-elementName} -** *(class - {name of class})* [{cardinality}] - {brief guidance statement} -
  - **{sub-elementName for above class} -** *(type - {name of type})* [{cardinality}] - {brief guidance statement} 
  - **{sub-elementName for above class} -** *(codelist - {name of codelist})* [{cardinality}] - {brief guidance statement} 
  - **{sub-elementName for above class} -** *(class - {name of class})* [{cardinality}] - {brief guidance statement} 

## Also Consider
{Links to additional useful information. Usually other elements, packages and classes in this good pratice document. May also link to other external resources.}

**[{element name} -]({path to element})**  {description of importance and utility with any links}

**[{element name} -]({path to element})**  {description of importance and utility with any links}

**[{class name} -]({path to class})**  {description of importance and utility with any links}

## Outstanding Issues
{Unresolved issues of discussion are captured here in Markdown Notes format}

> **CORE ISSUE:**  
{If there is any major issue of concern, Name it and discuss here}

> **{Issue Name}**
{Issue discussion points and items which need resolution}

## Other discussion 
{from other sources of note - other standards and implementations. In Markdown Notes format. Such as:}

> **{DCAT Notes}** -
{Discussion of issue}

> **{From data.govt.au}** -
{Discussion of issue}

## Crosswalk considerations 
<details>
### ISO19139 
{Discussion of issues, if any, to guide migration from ISO19139}

### Dublin core / CKAN / data.gov.au {if any}
{mapping to `DC element` and discussion}

### DCAT 
{mapping to `DCAT element` and discussion, if any}

### RIF-CS
{mapping to `RIF-CS element` and discussion, if any}

## Examples

### GA
{example - if any useful}

### ABARES
{example - if any useful}

### Others
{### who - example - if any useful}}
</details>
### XML -
<details>
```
<mdb:MD_Metadata>
....
  {<in context xml/>}
....
</mdb:MD_Metadata>
```

\pagebreak

### UML diagrams
{Captured from official ISO documentation at https://www.isotc211.org/hmmg/HTML/ConceptualModels/index.htm?goto=1:12:2:4095}
Recommended elements highlighted in yellow

![{Name}]({path to UML diagram image})
</details>
\pagebreak
