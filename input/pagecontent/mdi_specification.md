This page describes normative content of the specification. For an introduction to FHIR, please visit [HL7’s FHIR Summary](https://www.hl7.org/fhir/summary.html) as well as the overviews [for developers](https://www.hl7.org/fhir/overview-dev.html) and [for clinicians](https://www.hl7.org/fhir/overview-clinical.html). Also, refer to [“Getting Started with FHIR”](https://www.hl7.org/fhir/modules.html).

### FHIR Exchange Paradigms Supported
* RESTful API - Optional for all systems
* Document Bundle - Required for MDI CMS & EDRS
* Message Bundle - Required for Forensic Toxicology LIMS & MDI CMS

### Actors & Roles
This specification requires two roles in any data exchange:
* **Data Source**: An application that exposes a FHIR document bundle or message bundle to a data consumer. This can be thought of as the server in a client/server interaction.
* **Data Consumer**: An application that consumes a FHIR document bundle or message bundle. This can be thought of as the client in a client/server interaction.

***MDI Implementation Guide Actors & Roles Summary Table***
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:2px 2px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:2px 2px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax"><b>Actor</b></th>
    <th class="tg-0lax"><b>Data Source for:</b></th>
    <th class="tg-0lax"><b>Data Consumer of:</b></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Forensic Toxicology LIMS</td>
    <td class="tg-0lax">Bundle - Message Toxicology to MDI </td>
    <td class="tg-0lax">&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">MDI CMS</td>
    <td class="tg-0lax">Bundle - Document MDI and EDRS <br>Bundle - Message Death Certificate Review <br>Bundle - Document Death Certificate Review</td>
    <td class="tg-0lax">Bundle - Message Toxicology to MDI <br>Bundle - Document MDI and EDRS <br>Bundle - Message Death Certificate Review <br>Bundle - Document Death Certificate Review</td>
  </tr>
  <tr>
    <td class="tg-0lax">EDRS</td>
    <td class="tg-0lax">Bundle - Document MDI and EDRS <br>Bundle - Message Death Certificate Review <br>Bundle - Document Death Certificate Review</td>
    <td class="tg-0lax">Bundle - Document MDI and EDRS <br>Bundle - Message Death Certificate Review <br>Bundle - Document Death Certificate Review</td>
  </tr>
</tbody>
</table>

### Capability Statements & Claiming Conformance to This Specification
To claim conformance to this specification, FHIR servers SHALL be able to populate all profile data elements that have a minimum cardinality >= 1 and/or are flagged as MustSupport as defined by that profile’s StructureDefinition.

### Conformance to Other Standards
This MDI FHIR IG is based on US Core 5.0.1 and directly references and/or further profiles:

**US Core:**
* [US Core Condition Encounter Diagnosis Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis)
* [US Core Condition Problems and Health Concerns Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns)
* [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab)
* [US Core DocumentReference Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference)
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* [US Core Organization Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)
* [US Core RelatedPerson Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson)

**Vital Records Death Reporting (VRDR):**
* [Autopsy Performed Indicator](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator)
* [Birth Record Identifier Child](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-birth-record-identifier-child) 
* [Birth Record Identifier Infant](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-birth-record-identifier) 
* [Cause Of Death Part 1](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1)
* [Cause of Death Part 2](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2)
* [Death Certification Procedure](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification)
* [Death Certifier](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-certifier.html)
* [Death Date](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date)
* [Death Location](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-location)
* [Decedent](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent.html) 
* [Decedent Age](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-age.html) 
* [Decedent Disposition Method](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-disposition-method.html) 
* [Decedent Education Level](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-education-level.html) 
* [Decedent Father](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-father.html) 
* [Decedent Military Service](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-military-service.html) 
* [Decedent Mother](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-mother.html) 
* [Decedent Pregnancy](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status)
* [Decedent Spouse](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-spouse.html) 
* [Decedent Usual Work](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work)
* [Disposition Location](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-disposition-location.html) 
* [Examiner Contacted](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-examiner-contacted.html) 
* [Fetal Death Record Identifier](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-fetal-death-record-identifier) 
* [Funeral Home](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home) 
* [Injury Incident](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident)
* [Injury Location](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-location)
* [Manner of Death](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death)
* [Mortician](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician) 
* [Surgery Date](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-surgery-date)
* [Tobacco Use Contributed To Death](http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-tobacco-use-contributed-to-death)


**Vital Records Common Library (VRCL):**
* [Observation - Emerging Issues Vital Records](http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Observation-emerging-issues-vr)
* [Observation - Input Race and Ethnicity Vital Records](http://hl7.org/fhir/us/vr-common-library/StructureDefinition/input-race-and-ethnicity-vr)
* [Patient - Vital Records](http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Patient-vr)
* [Practitioner - Vital Records](http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Practitioner-vr)

### Resources and Profiles
This specification defines the following resources. An overview and list of examples is available on the [Artifacts Index Summary](artifacts.html).

**Profiles for Death Certificate development:**
* Bundle - Document MDI and EDRS
* Composition - MDI and EDRS
* MDI Cause Of Death Part 1

**Profiles for forensic toxicology to MDI CMS exchange:**
* Bundle - Message Toxicology to MDI
* MessageHeader - Toxicology to MDI
* DiagnosticReport - Toxicology Lab Result to MDI
* Specimen - Toxicology Lab
* Observation - Toxicology Lab Result

**Administrative profile for exchanging PDF documents:**
* DocumentReference - MDI Report

**Profiles for Death Certificate Review:**
* Bundle - Message Death Certificate Review
* MessageHeader - Death Certificate Review
* Bundle - Document Death Certificate Review
* Composition - Death Certificate Review
* Observation - Medical Information Data Quality
* Observation - Personal Information Data Quality
* Observation - Communicable Disease
* Observation – Embalmed
* Organization – Crematorium

**Extensions:**
* Cremation Clearance Authorization Status
* Cremation Clearance Coroner Status
* Cremation Clearance Signature Status
* Death Certificate Status
* Medical Examiner Certification Affirmation 
* Tracking Number

**Value Sets:**
* Certified Workflow example
* Cremation Clearance Observations example
* Cremation Clearance Signed example
* Cremation Clearance Status example
* Death Certificate Review Observations example
* Death Certificate Review Reason example
* Embalmed example
* Medical Data Quality Review example
* Medical Examiner Certification Affirmation example
* Personal Data Quality Review example
* Registration example
* Tracking Number Type

**Code Systems:**
* Death Certificate Review Example
* Medicolegal Death Investigation Codes

### MustSupport and Missing Data
Systems claiming to conform to an MDI profile SHALL support the elements in the profile as defined below. This guide adopts the following definitions of MustSupport for all direct transactions between the data source systems and data consumer systems.

**Data Source Systems:**
* As part of the sending of a Message Bundle or Document Bundle, the Data Source system SHALL be capable of including all elements defined in the profiles that have a MustSupport flag and SHALL populate all elements with a MustSupport flag if the information exists.
* In situations where information on a particular data element is not present, the Data Source system SHALL NOT include the data element in the resource instance if the cardinality is 0..n.
* If the information does not exist and the cardinality of the element is >= 1..*, the Data Source system SHALL follow the [US Core Missing Data guidance](https://www.hl7.org/fhir/us/core/general-guidance.html#missing-data).

**Data Consumer Systems:**
* Data Consumer systems SHALL be capable of processing resource instances containing required and allowed data elements without generating an error or causing the application to fail.
* Data Consumer systems SHOULD be capable of processing (display, store, etc.) the data elements based on the utility of the specific element to the receiver.
* When receiving a transaction from a Data Source system, the Data Consumer system SHALL interpret missing data elements within resource instances as data not present in the Data Source system.
* Data Consumer systems SHALL be able to process resource instances containing data elements asserting missing information without generating an error or causing the application to fail.

### Search
This IG defines a new FHIR Search parameter: [MDI Tracking Number Search](http://hl7.org/fhir/us/mdi/SearchParameter/mdi-tracking-number-search)