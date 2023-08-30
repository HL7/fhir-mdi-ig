### Description
This US-specific implementation guide (IG) provides guidance on the exchange of information to and from medicolegal death investigation (MDI) information systems. It supports interoperability between the MDI case management systems (CMS) used by medical examiner and coroner offices; forensic toxicology and other laboratory information management systems (LIMS); electronic death registration systems (EDRS) of jurisdictional vital records offices (VROs); and ancillary workflows whose systems have the capability of using Fast Healthcare Interoperability Resources (FHIR). This guide provides MDI CMS developers with the technical details and best practices to standardize MDI fields and interfaces. Stakeholders may use the narrative portions of this guide to inform policies and practices for data exchange between systems contributing to, and using information from, death investigations. This guide can serve as a base for local specifications.

### Technical Overview
This MDI IG is based upon FHIR R4.0.1 and is a U.S. Realm Specification.

The STU 1 version of the specification defines FHIR resources to support two dataflows:
* Death investigation findings sent from an MDI system to an EDRS via a document bundle: Bundle - Document MDI to EDRS
* Forensic toxicology specimen analysis results sent from a forensic toxicology laboratory to an MDI information system via a message bundle: Bundle - Message Toxicology to MDI

The STU 1.1 version provides updates to align with relevant profiles in the [Vital Records Death Reporting (VRDR) FHIR IG](http://hl7.org/fhir/us/vrdr/), STU 2.1 and adds new resources and guidance as described in the [Change Log](change_log.html).

This guide includes the following sections, listed at the top of each page in the menu bar: 
* [Home](index.html): Summary description and technical overview
* [Background](background.html): Information on MDI dataflows and actors, the current work, and relationship to other IGs, as well as likely future MDI FHIR specification development
* [Best Practices](best_practices.html): Guidance on implementation and use of this specification
* [Specification](specification.html): Technical details on implementing the specification
* [Terminology](terminology.html): List of all value sets used in this guide
* [Downloads](downloads.html): Links for downloading the full IG package as well as format-specific definitions files and example files in XML, JSON, and TTL
* [Change Log](change_log.html): List of changes made in each published update
* [Artifacts Index Summary](artifacts.html): List of all FHIR artifacts specified by this guide, with brief descriptions

### Audience
The audience for this IG includes architects and developers of MDI CMS and associated information management systems, such as forensic toxicology LIMS, as well as medical examiners, coroners, death investigators, and other professionals who collect and analyze data for death investigations. Business analysts and policy managers can also benefit from a basic understanding of the use of MDI data exchange to support interoperability.
Implementers of this MDI FHIR standard must have the following US Core profiles implemented for each applicable use case:

**MDI CMS and EDRS** implementing the Bundle - Document MDI to EDRS for transmitting and receiving a Composition - MDI to EDRS:
* [US Core Condition Encounter Diagnosis Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-encounter-diagnosis.html) and/or [US Core Condition Problems and Health Concerns Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)
* [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* [US Core Organization Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core Procedure Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)

**Forensic toxicology laboratories and MDI CMS** implementing the Bundle – Message Toxicology to MDI for transmitting and receiving a DiagnosticReport - Toxicology Lab Result to MDI:
* [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)

### Authors
* HL7 International - Public Health Work Group, [http://www.hl7.org/Special/committees/pher](http://www.hl7.org/Special/committees/pher)
* Cynthia Bush (OD), pdz1@cdc.gov
* Kate Brett (DVS), kmb5@cdc.gov
* Margaret Warner (DVS), mmw9@cdc.gov
* Diana Wright, diana.wright@lantanagroup.com