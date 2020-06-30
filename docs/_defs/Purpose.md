---
layout: page
type: element
section: Data Identification
rank: 20
title: Purpose
---
# Purpose ★★★★★
*One of the useful ways to evaluate the fitness of a resource to our needs is to examine the purpose for which the resource was created and how well it fulfilled its intended purpose. The *MD_DataIdentification.purpose* element is designed to hold such information.*

| | |
| --- | --- |
| **Element Name** | *purpose* |
| **Parent** | *[MD_Metadata.identificationInfo>MD_Identification](./class-MD_Identification)* |
| **Class/Type** | *characterString* |
| **Governance** | *Domain, Agency* |
| **Purpose** | *Discovery, Evaluation, Use* |
| **Audience** |- machine resource - ⭑ |
| | general - ⭑ ⭑ ⭑ ⭑ ⭑ |
| | resource manager - ⭑ ⭑ ⭑ ⭑ |
| | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *descriptive* |
| **ICSM Level of Agreement** | ⭑ ⭑ ⭑ ⭑ |

## Definition
**A brief summary of the intentions with which the resource was developed**

### ISO Obligation

- There may be no more than one [0..1] *purpose* entries for the resource in the  *[MD_DataIdentification](./class-MD_DataIdentification)* package of type *character string* in a metadata record.

## Discussion

A purpose statement provides a brief description of the reason a resource was created. Knowing this can give a good guide to the potential usefulness of a resource to other potential users. The resource may be data or service, *[MD_DataIdentification](./class-MD_DataIdentification)* or *[SV_ServiceIdentification](./ServiceIdentification)*.

Consideration needs to be given to the audience and what they need to know about the resource to decide the utility for them.

A purpose statement is generally shorter than an abstract and should be written in a style that your human audience will easily comprehend. The purpose should capture the "why" a dataset was created and to what end it is used. Common language should be used that most people could understand. If there is a need for more technical language to describe the resource, this should be included at the end of the purpose statement.

## ICSM Recommendations
Therefore - keep the purpose statement generally shorter than your abstract and write in a style that your human audience will easily comprehend. Capture the "why" a resource was created and to what end it is used. Use common language that most people could understand. If there is a need for more technical language to describe the resource, this should be included at the end of the purpose statement.

Populate the *purpose* element and provide enough narrative to give the reader a good understanding of the intent for which the resource was created. Use common language as far as possible as the readers may come from a different domain. The contents of a purpose should include as much information as would be useful to indicate the alignment of the original purpose and potential users' requirements.

## Also Consider

- **[Abstract](./Abstract)** provides a somewhat more lengthy verbal summary description of the resource. Some overlap of usage with `purpose` may exist. The MDWG should provide some guidance as to what belongs in `abstract` and what belongs in `purpose`
- **MD_DataIdentification.supplimentalInformation -** provides a description of the resource in the producer's processing environment, including items such as the software, the computer operating system, file name, and the dataset size. 
- **[Resource Lineage](./ResourceLineage)** may contain information related to purpose.

## Outstanding Issues

> **DCAT**
The description may include but is not limited to: an abstract, a table of contents, a graphical representation, or a free-text account of the resource.

> **element - Purpose vs abstract**
Some guidance needs to be developed to guide users as to what belongs in `abstract` and what belongs in `purpose`.

## Crosswalk considerations

<details>

### Dublin core / CKAN / data.gov.au

Maps to *description*?

### DCAT

Maps to *dct.description* (as does *abstract*)

### RIF-CS

Maps to *dct.description*

</details>

## Examples

<details>

### ABARES

> The Australian Surveying and Land Information Group (AUSLIG) has the responsibility for providing topographic mapping information at a national scale. 
AUSLIG has undertaken the Australian Geographic Database program to enhance this topographic map information so it is suitable for use in Geographic Information Systems. 
The data resulting from this program are known as GEODATA. Each GEODATA product incorporates characteristics such as customer focus, national consistency, assured quality and comprehensive documentation.

### TERN

> The purpose of the Cumberland Plain flux station is: to quantify the exchanges of carbon dioxide, water vapour and energy in a dry sclerophyll forest. to characterize the functional behaviour and sensitivity of the different components contributing to the ecosystem carbon balance from sub-daily to multi-annual temporal scales and under climatic variability. to identify the role of hydraulic limitations on constraining ecosystem productivity. to quantify the impact of mistletoe on plant physiological processes and whole ecosystem water vapour and carbon dioxide exchange. to validate remote sensing estimates of different radiation components to obtain accurate regional predictions of fuel moisture and to understand how wood traits and microbial diversity interact to determine rates of wood decay.

### XML -
```
<mdb:MD_Metadata>
....
 <mdb:identificationInfo>
  <mri:MD_DataIdentification>
  ....
   <mri:purpose>
    <gco:CharacterString>
    This is a sample purpose statement reprinted from the document 
    AS/NZS ISO 19115.1:2015:
    This dataset was developed to record information necessary for the 
    administration of the Mining Act.
    </gco:CharacterString>
   </mri:purpose>
  ....
  </mri:MD_DataIdentification>
 </mdb:identificationInfo>
....
</mdb:MD_Metadata>
```

\pagebreak

### UML diagrams
Recommended elements highlighted in yellow

![purpose](../images/PurposeUML.png)

</details>

\pagebreak
