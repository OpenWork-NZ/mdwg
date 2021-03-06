---
layout: page
type: element
section: Metadata Info
rank: 50
title: Metadata Default Locale
guides: [Metadata, Services]
---
# Metadata Default Locale ★★★★
*Metadata may be captured in different languages in different locations. For users, it is important that the language of the metadata be known. MD_Metadata.defaultLocale provide a way to record the primary language of the metadata.*

| | |
| --- | --- |
| **Element Name** | *defaultLocale* |
| **Parent** | *[MD_Metadata](./class-MD_Metadata)* |
| **Class/Type** | *[PT_Locale](./PT_Locale)* |
| **Governance** | *Common ICSM* |
| **Purpose** | *Discovery, Data Management* |
| **Audience** | machine resource - ⭑ ⭑ ⭑ |
| | general - ⭑ ⭑ ⭑ |
| | resource manager - ⭑ ⭑ ⭑ ⭑ ⭑ |
| | specialist - ⭑ ⭑ ⭑ ⭑ |
| **Metadata type** | *Discovery* |
| **ICSM Level of Agreement** | ⭑ ⭑ ⭑ |

## Definition
**Language and character set used for documenting metadata.**

### ISO Obligation
- There can be one and only one [1..1] *defaultLocale* entries for the cited resource in the *[MD_Metadata](./class-MD_Metadata)* package in the metadata record of class *[PT_Locale](./PT_Locale)*.

## Discussion

There may be only one default locale identified in one metadata record. This element only describes the default language of the metadata. Any language elements used in the described spatial resource may have a different default language and would be captured in the element [MD_Identification.defaultLocale](./ResourceLocale)
The element "otherLocale" can be used to provide information about alternatively used localised character strings.

## ICSM Best Practice Recommendations

Therefore - in order to provide metadata in a consistent manner for the users in our region, it is recommended that English be chosen as the value for `language` using the ISO 639-2, 3-alphabetic digits code "eng".

### Recommended Sub-Elements

Follow the general guidance for [class - PT_Locale](./PT_Locale)

### Recommended Sibling Elements -

- **otherLocale -** *[class - PT_Locale]* [0..\*] when a metadata record has information in additional languages

## Also Consider

- **MD_Metadata.otherLocale -** *(codelist - PT_Locale)* [0..\*] provides information about alternatively used localised character strings provides information about alternatively used localised character strings
- **[MD_DataIdentification.defaultLocale](./ResourceLocale)** *(codelist - PT_Locale)* [0..1] contains the language and character set used within the resource, such as map labels or other text.
- **MD_DataIdentification.otherLocale -** *(codelist - PT_Locale)* [0..\*] alternate localised language(s) and character set (s) used within the resource

## Crosswalk considerations

<details>

### ISO19139

MD_Metadata/language moved to MD_Metadata/defaultLocale:PT_Locale - Make use of the newly added Language and character set localization package for defining local language and character set.

### Dublin core / CKAN / data.gov.au

Maps to `language`
CKAN has one field for language that maps to both Metadata and Resource language fields. ISO 19115 recommends 639-2 3 letter codes. Data.gov.au recommends IETF RFC4646 2 letter codes as primary. See https://www.loc.gov/standards/iso639-2/faq.html#6 for discussion of the differences

### DCAT

Maps to `dct.language`

### RIF-CS

No identified mapping

</details>


## Examples

<details>

### XML -

```
<mdb:MD_Metadata>
....
  <mdb:defaultLocale>
   <lan:PT_Locale id="EN">
     <lan:language>
      <lan:LanguageCode 
      codeList="http://www.loc.gov/standards/iso639-2/" 
      codeListValue="eng"/>
     </lan:language>
     <lan:characterEncoding>
      <lan:MD_CharacterSetCode 
      codeList="https://schemas.isotc211.org/19115/resources/Codelist/cat
      /codelists.xml#MD_CharacterSetCode" codeListValue="utf8"/>
     </lan:characterEncoding>
   </lan:PT_Locale>
  </mdb:defaultLocale>
....
</mdb:MD_Metadata>
```

\pagebreak

### UML diagrams
Recommended elements highlighted in yellow

![MDdefaultLocale](../images/MetadataLocaleUML.png)

</details>

\pagebreak
