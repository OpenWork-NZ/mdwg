---
layout: page
type: class
title: MD_Constraints
---

#  Class - MD_Constraints
*When constraints are palced on a spatial resource or its metadata, it is important to document these.. Potential users need to be informed of rights, restricutions and responsibilities (or lack thereof) that apply to the use of such resources.*

- **Governance** -  *ISO, National*
- **Metadata Type -** *structural*
- *ICSM Level of Agreement* - ⭑⭑

# Definition 

**restrictions on the access and use of a resource or metadata.**

## ISO Associations (May be found in) 
- MD_Metadata.metadataConstraints
- MD_Identification.resourceConstraints
- MD_BrowseGraphic.imageConstraints

### Attributes - 
- **useLimitation -** *(type - charStr)* [0..\*] limitation affecting the fitness for use of the resource or metadata. Example, "not to be used for navigation"
- **constraintApplicationScope -** *(class - [MD_Scope](https://www.loomio.org/d/bEL0fUhA/class-md_scope))* [0..1] the target resource and physical extent for which information is reported
- **graphic -** *(class - [MD_BrowseGraphic](http://wiki.esipfed.org/index.php/MD_BrowseGraphic))* [0..\*]  graphic /symbol indicating the constraint 
- **reference -** *(class - [CI_Citation](https://www.loomio.org/d/Iei80UQH/class-ci_citation))* [0..\*] citation/URL for the limitation or constraint, eg. copyright statement, license agreement, etc 
- **releasability -** *(class - MD_Releasability)*  [0..1]  Requires an addressee or statement - information concerning the parties to whom the resource can or cannot be released
  - **addressee -** *(class - [CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility))* [0..\*]   party to which the release statement applies
  - **statement -** *(type - charStr))* [0..1]   release statement
  - **disseminationConstraints -** *(codelist - [MD_RestrictionCode](http://wiki.esipfed.org/index.php/ISO_19115_and_19115-2_CodeList_Dictionaries#MD_RestrictionCode))* [0..\*] component in determining releasability. 
- **responsibleParty -** *(class - [CI_Responsibility](https://www.loomio.org/d/r5blTcY0/class-ci_responsibility))* [0..\*] party responsible for the resource constraints

## Associated Classes, Codelists and Unions
### MD_Scope - class 
See [MD_Scope](https://www.loomio.org/d/bEL0fUhA/class-md_scope)

### MD_BrowseGraphic - class
- **fileName -** *(type - charStr)* Mandatory when using `MD_BrowseGraphic` - name of the file that contains a graphic that provides an illustration of the resource. 
- **linkage -** *(class - [CI_OnlineResource](https://www.loomio.org/d/rpyv8EnG/class-ci_onlineresource))*  0 to many - link to browse graphic.
- **imageConstraints -** *(class - [MD_Constraints](https://www.loomio.org/d/TqdZp04C/class-md_constraints))*  0 to many - restriction on access and/or use of browse graphic
- **fileType -** *(type - charStr)* f0 to 1 - format in which the illustration is encoded (e.g.: EPS, GIF, JPEG, PBM, PS, TIFF, PDF)
- **extent -** *(class -  [Extent](https://www.loomio.org/d/ilObJX24/md_identification-extent-definition))* Information about the horizontal, vertical and temporal extent of the resource specified by the scope

## Generalisations of MD_Constraints
MD_Constraints may be expressed as:
- **[MD_LegalConstraints](https://www.loomio.org/d/ugevCYJD/class-md_legalconstraints)**
- **[MD_SecurityConstraints](https://www.loomio.org/d/1jaxGSgR/class-md_securityconstraints)**
 

# Discussion
Information about constraints on the access and use of a resource or its metadata is of high importance to document as this information strongly impacts on the usability of the resource to the user. Constraints may be security (*MD_SecurityConstraints*), legal (*MD_LegalConstraints*) or other (*MD_Constraints*).

A restriction may be applicable to a particular aspect of the resource. In this case capture this scope in *constraintApplicationScope* using a value from *MD_Scope*

## Outstanding Issues
> Good Practice examples lacking
There is a need to gain greater consensus as to the general use of MD_Constraints across its instances by the MDWG.

> Distribution Constraints
Currently there are no clear methods to apply different constraints to different distributions. This may be an ISO issue to address. We should develop use cases.

# Recommendations 
## Crosswalk considerations

### ISO19139
- *MD_BrowseGraphic.imageConstraint* - This new element was added in order to allow the specification of constraints on a browse graphic associated with a resource.
- *MD_Constraints.constraintApplicationScope* -  This new element was added in order to allow description of constraints on a resource that vary in space and/or time and/or level.
- *MD_Constraints.graphic* - This new element was added in order to allow inclusion of a logo or other graphic that is associated with a particular constraint. 
- *MD_Constraints.reference* -  This new element was added in order to allow inclusion of a reference to more detailed information about a constraint.
- *MD_Constraints.releasability* -  This new element was added in order to allow specification of constraints that apply to specific people or organizations.
- *MD_Constraints.responsibleParty* - This new element was added in order to allow specification of people or organisations responsible for the constraints.
- *MD_Releasability* - This new class was added to provide information about resource release constraints

# Related Classes
- **[MD_LegalConstraints](https://www.loomio.org/d/ugevCYJD/class-md_legalconstraints) An extension to MD_Constraints for constraints applied for legal reasons.
- **[MD_SecurityConstraints](https://www.loomio.org/d/1jaxGSgR/class-md_securityconstraints) An extension to MD_Constraints for constraints applied for security purposes.

## UML diagrams
Recommended elements highlighted in Yellow
![MD_Constraints](https://loomio-uploads.s3.amazonaws.com/documents/files/000/206/384/original/1563758807496)
