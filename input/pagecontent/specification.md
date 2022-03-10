This page describes normative content of the specification. For an introduction to FHIR, please visit [HL7’s FHIR Summary](https://www.hl7.org/fhir/summary.html) as well as the overviews [for developers](https://www.hl7.org/fhir/overview-dev.html) and [for clinicians](https://www.hl7.org/fhir/overview-clinical.html). Also, refer to [“Getting Started with FHIR”](https://www.hl7.org/fhir/modules.html).

# FHIR Exchange Paradigms Supported
* RESTful API
* Document Bundle
* Message Bundle

# Actors & Roles
This specification defines three actors:
* **Forensic toxicology LIMS**: This is a data source for the Message Bundle that contains the Toxicology Lab Result to MDI Diagnostic Report.
* **MDI system**: This is an application used by ME/Cs and is a data consumer of the Message Bundle from the Forensic Toxicology LIMS and a data source of the Document Bundle MDI to EDRS.
* **Electronic death registration system (EDRS)**: This is an application used by jurisdictional vital records agencies and is both a data source and a data consumer of the Document Bundle MDI to EDRS.

This specification requires two roles in any data exchange:
* Data Source: An application that exposes a FHIR document bundle or message bundle to a data consumer. This can be thought of as the server in a client/server interaction.
* Data Consumer: An application that consumes a FHIR document bundle or message bundle. This can be thought of as the client in a client/server interaction.

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
    <td class="tg-0lax">MDI System</td>
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

# Capability Statements & Claiming Conformance to This Specification
To claim conformance to this specification, FHIR servers SHALL be able to populate all profile data elements that have a minimum cardinality >= 1 and/or are flagged as MustSupport as defined by that profile’s StructureDefinition. FHIR servers implementing this MDI specification are expected to conform to the [US Core Server CapabilityStatement](https://www.hl7.org/fhir/us/core/CapabilityStatement-us-core-server.html) and have the following capabilities (behaviors) for each actor.

**Forensic toxicology LIMS FHIR server** is responsible for:
* Producing a valid DiagnosticReport - Toxicology Lab Result to MDI
* Producing a valid Bundle - Message Toxicology to MDI that includes the DiagnosticReport
* Sending the Bundle Message to an MDI system data consumer

**MDI system FHIR server** is responsible for:
* Consuming a valid Bundle - Message Toxicology to MDI received from a forensic toxicology LIMS
* Querying an EDRS for an existing case record
* Receiving a valid Bundle - Document MDI to EDRS from an EDRS data source
* Creating a new valid Bundle - Document MDI to EDRS
* Updating an existing Bundle - Document MDI to EDRSS
* Sending a valid Bundle - Document MDI to EDRS to an EDRS data consumer

**Electronic Death Reporting System (EDRS) FHIR server** is responsible for:
* Receiving a query from an MDI system
* Producing and returning a valid Bundle - Document MDI to EDRS to an MDI system
* Receiving and consuming a valid Bundle - Document MDI to EDRS from an MDI system

**MDI FHIR Interactions Summary Table** ([definitions](https://www.hl7.org/fhir/http.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:2px 2px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:2px 2px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax"><b>Interaction</b></th>
    <th class="tg-0lax"></i><b>Forensic Toxicology LIMS server implementing Bundle Message Toxicology To MDI</b></th>
    <th class="tg-0lax"></i><b>MDI system server implementing Bundle Message Toxicology To MDI</b></th>
    <th class="tg-0lax"></i><b>Server implementing Bundle - Document MDI to EDRS</b> (MDI system or EDRS)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax" colspan="4"><b><i>Instance Level Interactions</i></b></td>
  </tr>
  <tr>
    <td class="tg-0lax">read</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">vread</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">update</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">patch</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">delete</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">history</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="4"><b><i>Type Level Interactions</i></b></td>
  </tr>
  <tr>
    <td class="tg-0lax">create</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">search</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">history</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="4"><b><i>Whole System Interactions</i></b></td>
  </tr>
  <tr>
    <td class="tg-0lax">capabilities</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">batch/transaction</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">history</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
  <tr>
    <td class="tg-0lax">search</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
    <td class="tg-0lax">yes</td>
  </tr>
</tbody>
</table>


# Conformance to Other Standards
This specification is based on US Core 4.0.0. It defines 16 new profiles in total. These profiles are based on a US Core profile where possible. Conformance to US Core profiles is expected in all cases where 1) a US Core Profile exists and 2) where no profile has been defined by this MDI specification. For example, instances of Patients, Practitioners, and Organizations are expected to conform to US Core profiles, respectively.

This specification directly uses five US Core profiles:
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)

This specification uses the [Usual Work](http://hl7.org/fhir/us/odh/StructureDefinition/odh-UsualWork) (Observation) profile defined in the Occupational Data for Health (ODH) implementation guide; conformance to that ODH profile is expected when conveying Usual Work information.

# Resources and Profiles
This specification defines the following resources. An overview and list of examples is available on the Artifact Index page.

**Profiles defined for MDI to EDRS exchange use case:**
* Bundle - Document MDI to EDRS
* Composition - MDI to EDRS
* List - Cause of Death Pathway
* Observation - Cause of Death Condition
* Observation - Condition Contributing to Death
* Observation - Death Date
* Observation - Death Injury/Event Occurred at Work
* Observation - How Death Injury Occurred
* Observation - Manner of Death
* Observation - Decedent Pregnancy
* Observation - Tobacco Use Contributed to Death

**Profiles for forensic toxicology to MDI exchange use case:**
* Bundle - Message Toxicology to MDI
* MessageHeader - Toxicology to MDI
* DiagnosticReport - Toxicology Lab Result to MDI
* Specimen - Toxicology Lab
* Observation - Toxicology Lab Result

**Extensions:**
* Extension - Tracking Number (for MDI to EDRS exchange use case)
* Extension – Location (for both use cases)

**Value Sets:**
* ValueSet - Contributory Tobacco Use 	
* ValueSet - Date Establishment Methods 	
* ValueSet - Death Pregnancy Status 	
* ValueSet - Manner of Death 	
* ValueSet - Tracking Number Type 	
* ValueSet - Units of Age 	
* ValueSet - Yes, No, Not Applicable

**Code System:**
* CodeSystem - MDI 
* CodeSystem - Death Pregnancy Status 	

# MustSupport and Missing Data
Systems claiming to conform to an MDI profile SHALL support the elements in the profile as defined below. This guide adopts the following definitions of MustSupport for all direct transactions between the data source systems and data consumer systems.

**Data Source Systems**
* As part of the sending of a Message Bundle or Document Bundle, the Data Source system SHALL be capable of including all elements defined in the profiles that have a MustSupport flag and SHALL populate all elements with a MustSupport flag if the information exists.
* In situations where information on a particular data element is not present, the Data Source system SHALL NOT include the data element in the resource instance if the cardinality is 0..n.
* If the information does not exist and the cardinality of the element is >= 1..*, the Data Source system SHALL follow the [US Core Missing Data guidance](https://www.hl7.org/fhir/us/core/general-guidance.html#missing-data).

**Data Consumer Systems**
* Data Consumer systems SHALL be capable of processing resource instances containing required and allowed data elements without generating an error or causing the application to fail.
* Data Consumer systems SHOULD be capable of processing (display, store, etc.) the data elements based on the utility of the specific element to the receiver.
* When receiving a transaction from a Data Source system, the Data Consumer system SHALL interpret missing data elements within resource instances as data not present in the Data Source system.
* Data Consumer systems SHALL be able to process resource instances containing data elements asserting missing information without generating an error or causing the application to fail.

# Search
This implementation guide does not define any new FHIR Search capabilities or parameters.

# Privacy and Security
This Implementation Guide is adopting the security considerations from [US Core Security](https://www.hl7.org/fhir/us/core/security.html#security)