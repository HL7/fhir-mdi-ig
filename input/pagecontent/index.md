# Description
This US-specific implementation guide (IG) provides guidance to FHIR implementers on the exchange of information to and from medicolegal death investigation (MDI) information systems. It supports interoperability between the MDI systems of medical examiner and coroner (ME/C) offices, forensic toxicology and other laboratory information management systems (LIMS), electronic death reporting systems (EDRS) of jurisdictional vital records offices, and ancillary workflows whose systems have the capability of utilizing FHIR. The design intent of this IG is to be a base that can be further specified for exchange of local MDI data.

# Technical Overview
This MDI IG is based upon FHIR R4.0.1 and is a U.S. Realm Specification. 
This version of the IG defines FHIR resources to support two workflows:
* Forensic toxicology specimen analysis results sent from a forensic toxicology laboratory to an MDI information system via a message bundle: Bundle – Message Toxicology to MDI
* Death investigation findings sent from an MDI system to an EDRS via a document bundle: Bundle - Document MDI to EDRS

This IG includes the following sections, listed at the top of each page in the menu bar: 
* [Home](index.html): Summary description and technical overview to this IG.
* [Background](background.html): Information on MDI dataflows and actors, the current work, and relationship to other IGs, as well as likely future MDI IG development.
* [Best Practices](best_practices.html): Guidance on implementation and use of the IG.
* [Specification](specification.html): Technical details on implementing the IG.
* [Terminology](terminology.html): Listing of all value sets used in this guide.
* [Downloads](downloads.html): Links for downloading the full IG package as well as format-specific definitions files and example files in XML, JSON, and TTL.
* [Artfacts Index Summary](artifacts.html): List of all FHIR artifacts specified by this MDI IG, with brief descriptions.

# Audience
The audience for this implementation guide includes architects and developers of MDI and associated information management systems, such as forensic toxicology LIMS, as well as medical examiners, coroners, death investigators, and other professionals who collect and analyze data for medicolegal death investigations. Business analysts and policy managers can also benefit from a basic understanding of the use of MDI data exchange to support interoperability.
Implementers of this MDI FHIR standard must have the following US Core profiles implemented for each applicable use case:

* Forensic toxicology laboratories and MDI systems implementing the Bundle – Message Toxicology to MDI for transmitting and receiving  a DiagnosticReport - Toxicology Lab Result to MDI:
* * [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* * [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* * [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)
* * [US Core Laboratory Result Observation Profile (http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* MDI systems and EDRS implementing the Bundle - Document MDI to EDRS for transmitting and receiving a Composition - MDI to EDRS:
* * [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* * [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* * [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* * [US Core Condition Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition)

# Authors
* HL7 International - Public Health Work group, [http://www.hl7.org/Special/committees/pher](http://www.hl7.org/Special/committees/pher)
* Cynthia Bush (OD), pdz1@cdc.gov
* Kate Brett (DVS), kmb5@cdc.gov
* Margaret Warner (DVS), mmw9@cdc.gov
* Diana Wright, diana.wright@lantanagroup.com