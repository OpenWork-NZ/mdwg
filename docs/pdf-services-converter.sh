#! /bin/sh
cd _defs
pandoc MetadataForServicesGuide.md \
    class-MD_Metadata.md MetadataIdentifier.md MetadataLinkage.md MetadataDate.md \
      MetadataContact.md MetadataLocale.md MetadataLegalConstraints.md \
      MetadataSecurityConstraints.md MetadataStandard.md MetadataScope.md \
    class-MD_Identification.md Abstract.md Purpose.md Status.md TopicCategory.md \
      SpatialResolution.md ResourcePointOfContact.md AdditionalDocs.md SpatialRepresentationType.md \
    ResourceCitation.md ResourceTitle.md ResourceIdentifier.md ResourceDate.md \
      ResourceEdition.md ResourceSeries.md ResourceResponsibleParty.md class-CI_OnlineResource.md \
    ServiceIdentification.md ServiceType.md ServiceTypeVersion.md ServiceProfile.md \
      ServiceStandard.md CouplingType.md CoupledResource.md ContainsOperations.md Parameter.md \
    AssociatedResources.md ResourceFormat.md BrowseGraphic.md Keywords.md \
      Maintenance.md class-MD_Constraints.md ResourceExtent.md GeographicExtent.md \
        ExtentGeographicDescription.md ExtentBoundingBox.md VerticalExtent.md TemporalExtents.md \
      SpatialReferenceSystem.md DistributionInfo.md \
   -V mainfont="Open Sans" -V titlepage=true -V titlepage-color=ddddff \
     -V logo=../images/logo.png -V title="ICSM ISO19115-1 Metadata for Services Best Practices" \
     -V header-center="Metadata for Services Best Practices" \
     -V header-right="12th Jun 2020" -V footer-left="OpenWork" -V footer-center="Byron Cochrane" \
   --latex-engine=xelatex --template ../eisvogel.tex -o ../services.pdf

