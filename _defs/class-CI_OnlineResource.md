---
layout: page
type: class
title: CI_OnlineResource
---

# class - CI_OnlineResource 

Most metadata contains information about resources that are avaliable online. In order for machines and people to to retrieve such resources cited in a  Metadata record [MD_Metadata](http://link.to.MD_Metadata) , a method of access must be provided.  CI_OnlineResources provides a standard way of describing such access wherever such is documented in a metadata record.

- **Governance** -  *ISO*
- **Metadata type -** *administrative*
- *ICSM Level of Agreement* - ⭑⭑

# Definition 

**information about on-line sources from which the resource, specification, or community profile name and extended metadata elements can be obtained**

## ISO Associations 
- MD_Metadata.metadataLinkage
- MD_DigitalTransferOptions.online
- MD_MetadataExtensionInformation.extensionOnLineResource
- MD_ApplicationSchemaInformation.graphicsFile
- MD_ApplicationSchemaInformation.softwareDevelopmentFile
- SV_OperationMetadata.connectPoint
- CI_Citation.onlineResource
- CI_Contact.onlineResource
- MD_BrowseGraphic.linkage


### ICSM Recommended Sub Element for class CI_OnlineResource 
- **linkage -** (*type - charStr*) [1..1] location (address) for on-line access using a Uniform Resource Locator/Uniform Resource Identifier address or similar addressing scheme 
- **protocol -** *(type - charstr)* [0..1] recommended to document the connection type used.
- **function -** *(codelist - CI_OnlineFunctionCode)* [0..1] (optional) code for function performed by the online resource. Options are:
  - downlaod -  online instructions for transferring data from one storage device or system to another
  - information - online information about the resource
  - offlineAccess - online instructions for requesting the resource from the provider
  - order - online order process for obtaining the resource
  - search - online search interface for seeking out information about the resource
  - completeMetadata - complete metadata provided
  - browseGraphic - browse graphic provided
  - upload - online resource upload capability provide
  - emailService - online email service provided
  - browsing - online browsing provided
  - fileAccess - online file access provided

### Other sub elements
- **applicationProfile -** (*type - charstr*) [0..1] name of an application profile that can be used with the online resource
- **name -** (*type - charstr*) [0..1] name of the online resource
- **description -** (*type - charstr*) [0..1] detailed text description of what the online resource is/does
- **protocolRequest -** (*type - charstr*) [0..1] protocol used by the accessed resource(to be used mainly for POST requests).

# Recommendations 

It is recommended that the MDWG further develop general advise on the use of CI_OnlineResource - particularly concerning the use of the "Other sub elements"
The `function` element, while optional, can ususally be populated through automated means according to the parent element.ß


## UML diagrams

Recommended elements highlighted in Yellow

![CI_OnlineResource](../images/class-CI_OnlineResources.png)! 
