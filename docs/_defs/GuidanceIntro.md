---
layout: page
rank: 10
type: page
section: Guidance
title: Introduction
guides: [Metadata, Services]
---

# Introduction

This guide is intended to provide a resource for those wishing to implement the AS/NZS ISO 19115.1:2015 metadata standard (including the 2018 Amendment No.1 and the 2020 Amendment No.2) in the Australia and New Zealand region. While this has been the officially endorsed metadata standard for Australia and New Zealand since 2015, consistency of implementation and the slow development of tools to support this standard have been problems. The development of this document has been undertaken to alleviate these issues and to provide a basis for further work.

This guide is meant to be a living document. At times it does not always provide strong guidance on the use of an element as [MDWG](https://www.icsm.gov.au/what-we-do/metadata-working-group) discussion about the element usage has need to continue and mature. This document is meant to evolve as use and understanding of the standard matures. It is meant to be an online active resource that can be referenced and grow as needed.

As we are human, absolute agreement about the use of the metadata and elements is not achievable.  But we can narrow the difference in understanding through the use of definitions and guidance.

## General Guidance
Metadata is often defined as "Data about resources" - in this case, data about spatial service resources. This best practice guide represents a consensus about creating metadata for spatial services in Australia and New Zealand.

It may be useful to think of this metadata standard, ISO 19115-1, as a language - a vocabulary and a grammar - that even a machine can understand. We select from this language the words and structures we need to communicate what we need to about a spatial resource. Because it is highly structured, we can compare combine and contrast this with other similarly structured data. As with any language there exists dialects. Think of this as as a guide to the Australian and New Zealand dialect of ISO 19115-1.

An external best practice pattern to which we should endeavour to adhere is the web built on linkages. These linkages are expressed as unique identifiers known as URLs or Resolvable URIs. Where identifiers exist, they should resolve to a location on the web. Two basic questions for us to keep in mind when creating metadata become, "Can I create an identifier and linkage to unambiguously describe this aspect of my resource?" and “To what should these identifiers resolve?”  The answers depend on the situation. If we can answer the first question in the affirmative, then this strengthens the authority of our metadata and makes it easier to maintain - similar to normalising a database and providing a known one point of truth. In the second question, this often prompts the question of, “should this identifier link me to the resource or the metadata for that resource?”  If it is for the resource, what should the endpoint of that link be?

### Linking to documents vs data. 
The web is called the web because it is built on linking documents. This ability should be used whenever possible. But linking human-readable documents like web pages and PDFs is different than linking to data and service resources. To what we link becomes much more nuanced. Do we really want to link to a spatial data resource that may be over a terabyte in size or a file, the contents of which is binary data that our browser knows not what to do with? Unless specifically told otherwise, web users expect links to deliver human-readable documents.

### Consider the Audience
What do I need to say about this resource so that people understand what it is and how it may fit their needs? 

What needs to be said and documented may vary by the audience to whom you are speaking. Keep your primary audience in mind. Usually, the audience is best thought of as those who are most likely to make use of your spatial service. These may likely be people in your same or similar domain. These are your high-value users. Make sure you support their needs.

Let the question, “what does my audience need to know about this spatial resource?” guide your selection of elements which to populate. This question should also be used to guide how one populates these elements. However, in such a structured language, most elements except abstract, purpose and a few others, the contents of particular metadata elements is less of an issue.

Do not forget that there are other unknown potential users of your service. Let software create simplified versions of what you are saying present this to the general audience as much as feasible. CSW will automatically create a simplified Dublin Core version of your metadata for a more general audience.

Finally, keep in mind that the most important audience may be yourself or your organisation. Write metadata that is useful to you when you find this service and need to use and fix it 5 or 10 years later or need to hand it off to a colleague.

\pagebreak

## Background to this Paper

On the 13th June 2018, the Australian and New Zealand, Location Information Metadata Working Group (ANZ MDWG) was re-established by request of the [ANZLIC](https://www.anzlic.gov.au/) – the Spatial Information Council (ANZLIC) and the Intergovernmental Committee on Surveying and Mapping ([ICSM](https://www.icsm.gov.au/)).

The working group will support a wider understanding and consistent application of location information metadata, based on agreed standards.

## Terms of Reference

- Actively monitor and assess the impact of future changes to metadata standards, in order to advise ANZLIC on policy impacts and stakeholders on the scale and impact of technical changes, through the managed knowledge of current national capabilities in metadata.
- Create and maintain a roadmap documenting what the MDWG is going to undertake and when.
- Develop, and manage a series of best practice resources (profiles, applications, websites (ANZLIC and ICSM), FAQs, models) to assist both general and technical audiences in understanding, implementing and managing the latest versions of metadata standards.
- Engage with interested industry organisations (SIBA, ESRI, etc.) to communicate working group developments and directions.
- Provide advice to spatial communities on the value, implementation and management of metadata and associated systems.
- Provide a forum for metadata custodians to share and exchange knowledge related to implementing, maintaining and updating metadata frameworks.
- Provide a forum for inward and outward communication between international (ISO and OGC peak bodies), other interest groups (Australian Government Linked Data Working Group, GeoNetwork community of practice etc.) to inform and seek feedback from core foundation spatial data custodians.
- Govern associated metadata tools, models, vocabularies, and resources, which are published on by ICSM and or ANZLIC.
- Report to ICSM and ANZLIC on key activities, and metadata developments.

**>> [*Table of Contents*](./TableOfContents)**

\pagebreak

