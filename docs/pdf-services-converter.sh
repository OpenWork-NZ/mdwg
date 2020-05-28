#! /bin/sh
cd _defs
pandoc ContainsOperations.md CoupledResource.md CouplingType.md Parameter.md \
        ServiceCitation.md ServiceIdentification.md ServiceProfile.md \
        ServiceStandard.md ServiceType.md ServiceTypeVersion.md \
    class-MD_Metadata.md MetadataIdentifier.md MetadataLinkage.md \
        MetadataDate.md MetadataContact.md MetadataLocale.md \
        MetadataLegalConstraints.md MetadataSecurityConstraints.md \
        MetadataStandard.md ParentMetadata.md MetadataScope.md \
    class-MD_Identification.md Abstract.md Purpose.md Status.md TopicCategory.md \
            SpatialResolution.md ResourcePointOfContact.md \
        AdditionalDocs.md SpatialRepresentationType.md \
    ServiceIdentification.md ServiceTypeVersion.md CouplingType.md CoupledResource.md \
        ServiceProfile.md ServiceStandard.md ContainsOperations.md Parameter.md \
   -V mainfont="Open Sans" -V titlepage=true -V titlepage-color=ddddff \
     -V logo=../images/logo.png -V title="ICSM ISO19115-1 Metadata Good Practice Guide" \
     -V header-center="Metadata Good Practice Guide" \
     -V header-right="3rd Oct 2019" -V footer-left="OpenWork" -V footer-center="Byron Cochrane" \
   --latex-engine=xelatex --template ../eisvogel.tex -o ../icsm.pdf

