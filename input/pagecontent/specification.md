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

**MDI FHIR IG Actors & Roles Table**
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Actor&nbsp;&nbsp;&nbsp;</th>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Data&nbsp;&nbsp;&nbsp;Source for:&nbsp;&nbsp;&nbsp;</th>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Data&nbsp;&nbsp;&nbsp;Consumer of:&nbsp;&nbsp;&nbsp;</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Forensic&nbsp;&nbsp;&nbsp;toxicology LIMS&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle - Message&nbsp;&nbsp;&nbsp;Toxicology to MDI&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br> &nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MDI system&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle -&nbsp;&nbsp;&nbsp;Document MDI to EDRS&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle - Message&nbsp;&nbsp;&nbsp;Toxicology to MDI <br>&nbsp;&nbsp;&nbsp;<br>Bundle -&nbsp;&nbsp;&nbsp;Document MDI to EDRS&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>EDRS&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle -&nbsp;&nbsp;&nbsp;Document MDI to EDRS&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle -&nbsp;&nbsp;&nbsp;Document MDI to EDRS&nbsp;&nbsp;&nbsp;</td>
  </tr>
</tbody>
</table>

# Capability Statements & Claiming Conformance to This Specification
To claim conformance to this specification, FHIR servers SHALL:
* Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or are flagged as Must Support as defined by that profile’s StructureDefinition.
* Conform to this IG’s Server Capability Statement expectations for that profile’s type.

FHIR servers implementing this MDI IG are expected to conform to the [US Core Server CapabilityStatement](https://www.hl7.org/fhir/us/core/CapabilityStatement-us-core-server.html) and have the following capabilities (behaviors) for each actor.

**Forensic toxicology LIMS FHIR server** is responsible for:
* Producing a valid DiagnosticReport - Toxicology Lab Result to MDI
* Producing a valid Bundle Message Toxicology To MDI that includes the DiagnosticReport
* Sending the Bundle Message to an MDI system data consumer

**MDI system FHIR server** is responsible for:
* Consuming a valid Bundle Message Toxicology To MDI received from a forensic toxicology LIMS
* Querying an EDRS for an existing case record
* Receiving a valid Composition - MDI to EDRS from an EDRS data source
* Creating a new valid Composition - MDI to EDRS
* Updating an existing Composition - MDI to EDRS
* Sending a valid Composition - MDI to EDRS to an EDRS data consumer

**Electronic Death Reporting System (EDRS) FHIR server** is responsible for:
* Receiving a query from an MDI system
* Producing and returning a valid Composition - MDI to EDRS to an MDI system
* Receiving and consuming a valid Composition - MDI to EDRS from an MDI system

**MDI FHIR Interactions Summary Table** ([definitions](https://www.hl7.org/fhir/http.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax"></th>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;&nbsp;<br>Forensic toxicology LIMS&nbsp;&nbsp;&nbsp;&nbsp;server implementing Bundle Message Toxicology To MDI&nbsp;&nbsp;&nbsp;&nbsp;</th>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;&nbsp;<br>MDI system server&nbsp;&nbsp;&nbsp;&nbsp;implementing Bundle Message Toxicology To MDI&nbsp;&nbsp;&nbsp;&nbsp;</th>
    <th class="tg-0lax">&nbsp;&nbsp;&nbsp;&nbsp;<br>Server implementing&nbsp;&nbsp;&nbsp;&nbsp;Bundle - Document MDI to EDRS (MDI system or EDRS)&nbsp;&nbsp;&nbsp;&nbsp;</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax" colspan="4">&nbsp;&nbsp;&nbsp;<br>Instance Level Interactions&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>read&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>vread&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>update&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>patch&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>delete&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>history&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="4">&nbsp;&nbsp;&nbsp;<br>Type Level Interactions&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>create&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>search&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>history&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="4">&nbsp;&nbsp;&nbsp;<br>Whole System Interactions&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>capabilities&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>batch/transaction&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>history&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>search&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>yes&nbsp;&nbsp;&nbsp;</td>
  </tr>
</tbody>
</table>

# Conformance to Other Standards
This specification is based on US Core 4.0.0. This IG defines 18 new profiles in total. These profiles are based on a US Core profile where possible. Conformance to US Core profiles is expected in all cases where 1) a US Core Profile exist and 2) where no profile has been defined here. For example, instances of Patients, Practitioners, and Organizations are expected to conform to US Core profiles, respectively.

This specification directly uses six US Core profiles:
* [US Core Condition Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition)
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
* [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-location)
* [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)
* [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)

This specification uses the [Usual Work] (http://hl7.org/fhir/us/odh/StructureDefinition/odh-UsualWork) (Observation) profile defined in the ODH IG; conformance to this profile is expected when conveying Usual Work information.

# Resources and Profiles
This specification defines the following resources. An overview and list of examples is available on the Artifact Index page.

**Profiles for forensic toxicology to MDI exchange use case:**
* Bundle Message Toxicology To MDI
* DiagnosticReport - Toxicology Lab Result to MDI
* Specimen - Toxicology Lab
* MessageHeader - Toxicology to MDI
* Toxicology Lab Observation Result

**Profiles defined for MDI to EDRS exchange use case:**
* Bundle - Document MDI to EDRS
* Composition - MDI to EDRS
* Condition - Cause Of Death
* Condition - Other Contributing To Death
* DocumentReference - MDI Case History
* DocumentReference - MDI Case Notes Summary
* List - Cause of Death Pathway
* Observation - Death Date
* Observation - Death Injury/Event Occurred at Work
* Observation - Decedent Pregnancy
* Observation - How Death Injury Occurred
* Observation - Manner of Death
* Observation - Tobacco Use Contributed To Death

**Extensions:**
* Extension - Tracking Number (for MDI to EDRS exchange use case)
* Extension -Agency Case History Notes (for forensic toxicology to MDI exchange use case)
* Extension – Location (for both use cases)

**ValueSet:**
* ValueSet - Tracking Number Type 	

**Code System:**
* CodeSystem - MDI 	

# Must Support and Missing Data
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
This IG does not define any new FHIR Search capabilities or parameters.

# Privacy and Security
This Implementation Guide is adopting the security considerations from [US Core Security](https://www.hl7.org/fhir/us/core/security.html#security)