---
layout: page
type: page
section: Guidance
title: Guidance Introduction
---

# ICSM ISO19115-1 Metadata Good Practice Guide

### Byron Cochrane - 31 July 2019

## Introduction

This guide is intended to provide a resource for those wishing to implement the AS/NZS ISO 19115.1:2015 metadata standard (including the 2018 Amendment No.1) in the Australia and New Zealand region. While this has been the officially endorsed metadata standard for Australia and New Zealand since 2015, consistency of implementation and the slow development of tools to support this standard have been problems. The development of this document has been undertaken to alleviate these issues and to provide a basis for further work.

This guide is meant to be a living document. At times it does not always provide strong guidance on the use of an element as MDWG discussion about the element usage has need to continue and mature. This document is meant to evolve as use and understanding of the standard matures. It is meant to be an online active resource that can be referenced and grow as needed.

As we are human, absolute agreement about the use of the metadata and elements is not achievable.  But we can narrow the difference in understanding through the use of definitions and guidance.

## Approach

Building on previous work by the Metadata Working Group of the ICSM (MDWG), elements previously identified as important are detailed separately but within the context of metadata records for spatial data resources. This was done using a Pattern Language approach as developed by Christopher Alexander et al in the late 1970s for architecture in the book “A Pattern Language” and later applied to the digital domain most famously in “Design Patterns: Elements of Reusable Object-Oriented Software” (1994) by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides which became the bible for Object Orient Programming. It is a format common in various W3C notes including “Data on the Web Best Practices” and “Spatial Data on the Web Best Practices”.

## Elements as Patterns

A design pattern is a general, reusable solution to a commonly occurring problem within a given context. In our case, these are the elements of ISO19115-1 metadata records.

### Meaningful Name

An entry starts with a meaningful name that provides an anchor to which we can refer. These are associated in our case with the individual element, class or package in the standard. A star rating (1 to 5 stars) indicates the importance or priority of the element in the general ICSM context. In some domains and agencies, these rating will differ. This is followed by a short statement that provides context for the element and why it is useful.

A small table follows that summarises details about the element. These include:
- **Path** -  Which provides clear identification about where the element sits in the structure of a metadata record.
- **Governance** -  Details what body is most likely to make decisions about how the element is used and populated. Common values are ISO, Common ICSM, Domain, Agency. Sometimes these decisions are made at more than one level.
- **Purpose** - Provides the high-level purpose of the element - for what is it most useful? Common values include: Discovery, Evaluation, Use, Management
- **Audience -** describes with a 1 to 5 star rating how important the element is to the select personas.  These personas include:
  - machine resource - for purely digital interactions
  - general - a novice audience
  - resource manager - parties responsible for the management of the data
  - specialist - subject matter specialist who know a great deal about the domain.
- **Metadata type** - Which of the three general metadata types does the element belong, *descriptive*, *structural*, or *administrative*
- *ICSM Level of Agreement* - A 5 star rating as to how close to consensus the MDWG is on the description of this item. A low number of stars usually indicates lack of process progress rather than disagreement.

### Definition

The next section holds a brief in context definition of the element. This is followed by the ISO19115-1 standard rules of cardinality and obligation for the element and the class used to structure the captured information. A brief statement of ICSM Good Practice summarises some further guidance as developed by the MDWG. This includes guidance on the use of the class and its sub-element or at times, siblings.

### Discussion

This section captures the thinking of the MDWG behind the use of this element. The following aspects in this order are considered:
- Why this element is important?
- What we need it for?
- Who should capture this information? 
- Whom is it useful to?
- When should the information be captured? 
Where is it important, with what resource?

Outstanding issues are also captured in this section. This is a living document and we only get to the level of agreement that we can.  Capturing these outstanding differences and lack of understanding, allows us to know where to start on the next bit of work.

### Recommendations

Finally, we come to the recommendations. These are statements capture the what, why, who, when and how MDWG recommend this element be used. They provide an in-context summary of the MDWG guidance and the reasoning behind it.

#### Crosswalks

<details>

Included in the Recommendation section are crosswalk concerns when translating metadata between four different standards: ISO19139, Dublin core/CKAN/data.govt.nz, DCAT, and RIF-CS.

ISO19139 is the previous standard that ISO19115-3 replaced. It is also the parent to widely used metadata profiles such as ANZLIC and MCP. Many geospatial practitioners currently have metadata in this standard and need to know how to migrate.

Dublin core/CKAN/data.govt.nz represents the way that top-level catalogues such as data.gov.au hold their metadata. These are more abbreviated formats focused on data discovery. Knowing how to share metadata with these platforms while not losing the important additional information held in ISO19115-1 is of high importance.

DCAT is a newer metadata standard developed by the W3C and based on linked data principles like RDF and formal ontologies. It can be thought of as a wrapper around other standards that make the sharing of metadata between standards easier through the use of well understood tags. The use of this standard continues to grow and is important for metadata exchange.

RIF-CS stands for Registry Interchange Format - Collections and Services. It is an XML vocabulary for representing metadata about data collections and related entities based on ISO 2146. Similar to how MARC standards are used by library systems to describe books, RIF-CS is used to describe data collections. For example, a RIF-CS record can describe a spreadsheet containing experimental results: it might contain the title, description, creator, keywords, date the experiment was conducted and a URL to obtain the actual spreadsheet. RIF-CS is the format required by Research Data Australia.

</details>

### Related Links

Related links are captured in a section titled “Also Consider”. This section contains references to additional useful information. Usually, these are other elements, packages and classes in this good practice document. But these may also be links to other external related resources.

### Examples

<details>

Each entry closes with an example section.  It is hoped that contents here grow over time as more exemplars are contributed. When available, contributing organisations are cited and the example is given.  Almost all entries include a reference example in XML.  This section and the document closes with a UML diagram captured from the official ISO TC211 conceptual model repository at https://www.isotc211.org/hmmg/HTML/ConceptualModels/.

</details>

## How To Use This Document

An example of how this document might be used to provide guidance by an organisation on the use of ISO19115-1 is given below. This example is of how we might use this to provide a user support for capturing discovery level metadata as guided by the document “AS/NZS ISO 19115.1:2015 Amendment No. 1 appended”. The following was extracted from “Annex F Table F.1 — Metadata for the discovery of geographic datasets and series.”

**Metadata for discovery of geographic datasets - guidance**

| **Metadata element** | **Guidance Link** | 
| --- | --- |
| Metadata reference information: | [Metadata Identifier](./MetadataIdentifier)|
| Resource title: | [Resource Title](./ResourceTitle)|
| Resource reference date: | [Resource Date](./ResourceDate) |
| Resource identifier: | [Resource Identifier](./ResourceIdentifier) |
| Resource point of contact:  | [Resource Point of Contact](./ResourcePointOfContact)|
| Geographic location: | [Extent Bounding Box](./ExtentBoundingBox) |
| Resource language:  | [Resource Default locale](./ResourceLocale)  |
| Resource topic category: | [Topic Category](./TopicCategory)    |
| Spatial resolution:   | [Spatial Resolution](./SpatialResolution) |
| Resource type:  | [Resource Scope](./MetadataScope)  |
| Resource abstract:   | [Abstract](./Abstract) |
| Resource lineage: | [Resource Lineage](./ResourceLineage)  |
| Keywords:   | [Keywords](./Keywords)  |
| Constraints on resource access and use: | [Resource Constraints](./ResourceOtherConstraints)   |
| Metadata date stamp:  | [Metadata Date](./MetadataDate)  |
|Metadata point of contact: | [Metadata Responsible Party](./MetadataContact)  |

