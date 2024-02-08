This page describes normative content of the specification. For an introduction to FHIR, please visit [HL7’s FHIR Summary](https://www.hl7.org/fhir/summary.html) as well as the overviews [for developers](https://www.hl7.org/fhir/overview-dev.html) and [for clinicians](https://www.hl7.org/fhir/overview-clinical.html). Also, refer to [“Getting Started with FHIR”](https://www.hl7.org/fhir/modules.html).

### FHIR Exchange Paradigms Supported
* RESTful API - Optional for all systems
* Document Bundle - Required for MDI CMS & EDRS
* Message Bundle - Required for Forensic Toxicology LIMS & MDI CMS

### Actors & Roles
This specification defines three actors:
* **Forensic Toxicology LIMS**: A data source for the Message Bundle that contains the Toxicology Lab Result to MDI Diagnostic Report.
* **MDI CMS**: An application used by medical examiner and coroner offices that is a data consumer of the Message Bundle from the forensic toxicology LIMS and a data source and consumer of the Document Bundle MDI to EDRS.
* **EDRS**: An application used by jurisdictional vital records agencies that is both a data source and a data consumer of the Document Bundle MDI to EDRS.

This specification requires two roles in any data exchange:
* **Data Source**: An application that exposes a FHIR document bundle or message bundle to a data consumer. This can be thought of as the server in a client/server interaction.
* **Data Consumer**: An application that consumes a FHIR document bundle or message bundle. This can be thought of as the client in a client/server interaction.

**MDI Implementation Guide Actors & Roles Summary Table**
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
    <td class="tg-0lax">Bundle - Document MDI to EDRS </td>
    <td class="tg-0lax">Bundle - Message Toxicology to MDI <br>Bundle - Document MDI to EDRS </td>
  </tr>
  <tr>
    <td class="tg-0lax">EDRS</td>
    <td class="tg-0lax">Bundle - Document MDI to EDRS </td>
    <td class="tg-0lax">Bundle - Document MDI to EDRS </td>
  </tr>
</tbody>
</table>

### Capability Statements & Claiming Conformance to This Specification
To claim conformance to this specification, FHIR servers SHALL be able to populate all profile data elements that have a minimum cardinality >= 1 and/or are flagged as MustSupport as defined by that profile’s StructureDefinition.

**Forensic toxicology LIMS server** is responsible for:
* Producing a valid DiagnosticReport - Toxicology Lab Result to MDI
* Producing a valid Bundle - Message Toxicology to MDI that includes the DiagnosticReport
* Sending the Bundle Message to an MDI CMS data consumer

**MDI CMS server** is responsible for:
* Consuming a valid Bundle - Message Toxicology to MDI received from a forensic toxicology LIMS
* Querying an EDRS for an existing case record and receiving a response (Bundle - Document MDI to EDRS) from an EDRS data source
* Updating an existing Bundle - Document MDI to EDRS
* Creating a new valid Bundle - Document MDI to EDRS
* Posting a valid Bundle - Document MDI to EDRS to an EDRS data consumer

**EDRS server** is responsible for:
* Receiving a query from an MDI CMS
* Returning a valid Bundle - Document MDI to EDRS to an MDI CMS
* Receiving and consuming a valid Bundle - Document MDI to EDRS from an MDI CMS


### Conformance to Other Standards
This specification is based on US Core 4.0.0. It defines 16 new profiles in total. These profiles are based on a US Core profile where possible. Conformance to US Core profiles is expected in all cases where 1) a US Core Profile exists and 2) where no profile has been defined by this MDI specification. For example, instances of Patients, Practitioners, and Organizations are expected to conform to US Core profiles, respectively.

This specification uses or references US Core profiles:
* [US Core Condition Encounter Diagnosis Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-encounter-diagnosis.html)
* [US Core Condition Problems and Health Concerns Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)
* [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab)
* [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* [US Core Organization Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)
* [US Core Procedure Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)

### Resources and Profiles
This specification defines the following resources. An overview and list of examples is available on the [Artifacts Index Summary](artifacts.html).

**Profiles defined for MDI CMS and EDRS exchange use case:**
* Bundle - Document MDI to EDRS 
* Composition - MDI to EDRS 
* Observation - Cause of Death Part 1 
* Observation - Contributing Cause of Death Part 2 
* Observation - Death Date 
* Observation - How Death Injury Occurred 
* Observation - Manner of Death 
* Observation - Decedent Pregnancy 
* Observation - Tobacco Use Contributed to Death 
* Observation - Autopsy Performed Indicator 
* Procedure - Death Certification 
* Location - Death 
* Location - Injury 


**Profiles for forensic toxicology to MDI CMS exchange use case:**
* Bundle - Message Toxicology to MDI
* MessageHeader - Toxicology to MDI
* DiagnosticReport - Toxicology Lab Result to MDI
* Specimen - Toxicology Lab
* Observation - Toxicology Lab Result


**Administrative profile for exchanging PDF documents:**
* DocumentReference - MDI Report

**Extensions:**
* Extension - Tracking Number 
* Extension - Date Time 
* Extension - Date Day 
* Extension - Date Month 
* Extension - Date Year 
* Extension - Partial DateTime 


**Value Sets:** 	
* ValueSet - Contributory Tobacco Use 
* ValueSet - Certifier Types 
* ValueSet - Date Establishment Approach 
* ValueSet - Death Pregnancy Status 
* ValueSet - Manner of Death 
* ValueSet - Place of Death
* ValueSet - Tracking Number Type 
* ValueSet - Transportation Incident Role 
* ValueSet - Yes No Unknown 
* ValueSet - Yes No Unknown NotApplicable 

**Code System:**
* CodeSystem - MDI 
* CodeSystem - Death Pregnancy Status 
* CodeSystem - Local Component Codes 


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
This IG does not define any new FHIR Search capabilities or parameters.

### Data Models
***Figure: MDI Profile Relationships***
<table><tr><td><img src="MDI-Comp-structure-500.png" /></td></tr></table>

***Figure: Forensic Toxicology Profile Relationships***
<table><tr><td><img src="Tox-Msg-structure-500.png" /></td></tr></table>