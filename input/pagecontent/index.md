<div class="note-to-balloters" markdown="1">
**For Implementers:**
* Implementers wishing to test the MDI IG STU 1.1 content with the harmonization of MDI and VRDR should refer to the 2.0.0-snapshot1 - Pre-publication Snapshot at [https://hl7.org/fhir/us/mdi/2.0.0-snapshot1/](https://hl7.org/fhir/us/mdi/2.0.0-snapshot1/)

**For Jan-2025 Ballot Reviewers:**

This STU2 build of MDI reflects two sets of changes from STU 1.1:
* Refactoring of content driven by the harmonization of vital records FHIR implementation guides, as described in the [Vital Records Common Library (VRCL) Jan-2024 ballot](https://hl7.org/fhir/us/vr-common-library/2024Jan/vr_ig_harmonization.html). For this MDI FHIR IG, this involved introduction of a dependency on the [Vital Records Death Reporting STU3 FHIR IG](https://hl7.org/fhir/us/vrdr/) and on [VRCL STU2](https://hl7.org/fhir/us/vr-common-library/). This harmonization was balloted in May 2024.  (1st STU2 ballot)
* New content supporting additional workflows, to be balloted January 2025. (2nd STU2 ballot)

See the [change log](mdi_change_log.html) for an updated list of changes.
  
</div><!-- note-to-balloters -->

### Description
This US-specific implementation guide (IG) provides guidance on the exchange of information to and from medicolegal death investigation (MDI) information systems. It supports interoperability between the MDI case management systems (CMS) used by medical examiner and coroner offices; forensic toxicology and other laboratory information management systems (LIMS); electronic death registration systems (EDRS) of jurisdictional vital records offices (VROs); and ancillary workflows whose systems have the capability of using Fast Healthcare Interoperability Resources (FHIR). This guide provides MDI CMS developers with the technical details and best practices to standardize MDI fields and interfaces. Stakeholders may use the narrative portions of this guide to inform policies and practices for data exchange between systems contributing to, and using information from, death investigations. This guide can serve as a base for local specifications.

### Relation to Other Standards
This MDI IG is based upon FHIR R4.0.1 and is a U.S. Realm Specification. It re-uses or further constrains FHIR resources published in the following FHIR IGs:
* [Vital Records Death Reporting (VRDR) FHIR IG – STU 3](https://hl7.org/fhir/us/vrdr/) (2024-10-16), which supports reporting deaths by state registrars to the National Center for Health Statistics (NCHS) 
* [Vital Records Common Library (VRCL) FHIR IG – STU 2](https://hl7.org/fhir/us/vr-common-library/) (2024-10-11)
* [US Core Implementation Guide – STU 5.0.1](https://hl7.org/fhir/us/core/STU5.0.1/) (2022-01-13), which aligns with  U.S. Core Data for Interoperability (USCDI) v2, July 2021
* [Occupational Data for Health (ODH) FHIR IG -  STU 1.3](https://hl7.org/fhir/us/odh/) (2022-10-06)

### Overview
This guide includes the following sections, listed at the top of each page in the menu bar:
* [Home](index.html): Summary description and overview
* [Background](mdi_background.html): Information on MDI dataflows and actors, the current work, and likely future MDI FHIR specification development
* [Use Cases](mdi_use_cases.html): Descriptions of MDI data exchange scenarios supported by this IG
* [Best Practices](mdi_best_practices.html): Guidance on implementation and use of this specification
* [Security Recommendations](mdi_security_recommendations.html): Description of a minimum level of security when implementing the MDI IG
* [Specification](mdi_specification.html): Technical details on implementing the specification
* [Downloads](mdi_downloads.html): Links for downloading the full IG package as well as format-specific definitions files and example files in XML, JSON, and TTL
* [Changes](mdi_change_log.html): List of changes made in each published update
* [Content Transformation](mdi-content-transitions.html): Tables of changes to resource locations during harmonization between the MDI, VRDR, and VRCL FHIR IGs.]
* [Artifacts](artifacts.html): List of all FHIR artifacts specified by this guide, with brief descriptions

### Audience
The audience for this IG includes architects and developers of MDI CMS and associated information management systems, such as forensic toxicology LIMS, as well as medical examiners, coroners, death investigators, and other professionals who collect and analyze data for death investigations. Business analysts and policy managers can also benefit from a basic understanding of the use of MDI data exchange to support interoperability.

### Authors
* HL7 International - Public Health Work Group, [http://www.hl7.org/Special/committees/pher](http://www.hl7.org/Special/committees/pher)
* Cynthia Bush (OD), pdz1@cdc.gov
* Kate Brett (DVS), kmb5@cdc.gov
* Margaret Warner (DVS), mmw9@cdc.gov
* Diana Wright, diana.wright@lantanagroup.com