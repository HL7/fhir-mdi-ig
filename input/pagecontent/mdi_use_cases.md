The use cases described here do not make any assumptions about whether implementing systems are using FHIR Messaging or FHIR RESTful API. Implementations of this MDI FHIR IG will vary, and some may use a FHIR API rather than FHIR Messaging. In those cases, a MessageHeader and a Document Bundle can be exchanged without a Message Bundle wrapper. For more information, see [Relationship between Messaging and REST](https://hl7.org/fhir/messaging.html#endpoints) and [FHIR Exchange Module](http://hl7.org/fhir/exchange-module.html). Document Bundles may be exchanged between systems and persisted in document storage and management systems. See [FHIR Documents](http://hl7.org/fhir/documents.html) and [FHIR Bundles](http://hl7.org/fhir/R4/bundle.html) for additional guidance.

### Death Case Record Creation and Update for Death Certificate
Death data for a case record can be exchanged bidirectionally between an MDI case management system (CMS) and an EDRS via a document bundle. This is the base use case for gathering information needed to develop a death certificate.

*Scenario A:*
1.	Case record originates in the MDI CMS
2.	MDI CMS sends data to EDRS in Document Bundle
3.	EDRS completes death certificate with information from other sources (funeral home, etc.)

*Scenario B:*
1.	Case record originates in EDRS
2.	EDRS sends data to MDI CMS in Document Bundle
3.	MDI CMS updates case record with MDI information
4.	MDI CMS sends updated case record in new Document Bundle to EDRS
5.	EDRS completes death certificate

**FHIR Resources:**
* Bundle - Document MDI and EDRS: Document bundle profile providing a FHIR “wrapper” to contain a composition document.
* Composition - MDI and EDRS: Composition profile representing a data document exchanged between an MDI CMS and an EDRS that includes death investigation findings, such as:
  * Circumstances of death
  * Death date and certification of death
  * Cause and manner of death
  * Additional information, such as autopsy results, medical history, etc.

The Composition - MDI and EDRS provides the Extension - Tracking Number for including case or file numbers used by various systems to identify the case. One Composition can have multiple tracking numbers with additional tracking numbers added over time, e.g., MDI CMS case number added to a file with an EDRS record number.

The Composition - MDI and EDRS uses many of the same profiles as (i.e., references) the VRDR & VRCL FHIR IGs. One exception is the MDI Cause Of Death Part 1, which is based on the VRDR Cause Of Death Part 1 profile, but requires a performer, which is the cause of death certifier (coroner or medical examiner).

**Examples:**
* Bundle - MDI and EDRS - Freeman: Document bundle for the Freeman example case.
* MDI and EDRS Composition - Freeman: Completed data document composition for the Freeman example case record.
* MDI and EDRS Composition - draft: Draft data document, with status = preliminary, and author and attester = "Temporarily Unknown", using the data-absent-reason extension.
* MDI Cause of Death Part 1 – Freeman: Observation with practitioner

### Transmission of Forensic Toxicology Diagnostic Findings from LIMS to MDI CMS
Data from a forensic toxicology laboratory information management systems (LIMS) can be sent to an MDI CMS via a diagnostic report and message bundle.

**FHIR Resources:**
* Bundle - Message Toxicology to MDI: Message bundle profile providing a FHIR “wrapper” to contain a message header and a diagnostic report from a forensic toxicology laboratory.
* MessageHeader - Toxicology to MDI: Message header profile indicating that a diagnostic report is the focus of the message.
* DiagnosticReport - Toxicology Lab Result to MDI: Diagnostic report profile providing forensic toxicology findings (Observation - Toxicology Lab Result) on specimens (Specimen - Toxicology Lab).

**Examples:**
* Bundle - Message Toxicology to MDI - Freeman: Message bundle for the Freeman example case.
* MessageHeader - Toxicology to MDI - Freeman: Message header specifying the focus of the message and providing source and endpoint example information.
* DiagnosticReport - Toxicology Lab Result to MDI - Freeman: Diagnostic report for the Freeman example case.
* Specimen & lab result observation examples are listed on the Artifacts page under [Other Example](https://build.fhir.org/ig/HL7/fhir-mdi-ig/branches/master/artifacts.html#other-examples)


### Exchange of a PDF Report within the MDI Community
A PDF report, such as an Autopsy Report or Investigator’s Narrative, can be exchanged between an MDI CMS and another FHIR-enabled data system. The content may be included as inline base64 encoded data or be provided by direct reference (e.g., URL). 

**FHIR Resource:** DocumentReference - MDI Report: The document type is required and is constrained by US Core to a LOINC value whose SCALE is DOC in the LOINC database or is the HL7 v3 Code System NullFlavor concept 'unknown'.

**Examples:**
* DocumentReference - MDI Report - Autopsy Report example: Example autopsy report included as a base-64 encoded PDF. 
* DocumentReference - MDI Report - Investigator's Narrative example: Example investigator’s narrative referenced by example URL.


### Transmission of a Death Certificate for Review
Death certificate information may be exchanged for review in several cases:
* **Data Quality Improvement**: Querying for information needed to properly code and classify the cause of death for data quality improvement. “Cause-of-death querying is a process by which the State health department contacts the medical certifier who completed the cause-of-death statement and asks for clarification or further information so that resulting mortality statistics may be as complete and accurate as possible.” (https://www.cdc.gov/nchs/data/dvs/Instruction_Manual_revise20_2013.pdf) 
* **Cremation Clearance** (also known as "cremation authorization"): Many states and jurisdictions require cremation clearance from a medical examiner / coroner to make sure the physical evidence is not needed for any further inquiries into the death. The rules about when cremation clearance is required vary among jurisdictions, but typically it is needed when the cause and manner of death information for the death certificate is provided by an attending physician or other provider, rather than the jurisdiction's medical examiner / coroner.

*Data Quality Improvement Use Case Steps:*
1.	EDRS sends the death certificate to MDI case management system (CMS) for review.
2.	Medical examiner / coroner reviews death certificate information, particularly the cause and manner of death
3.	MDI CMS sends response with additional information.

*Cremation Clearance Use Case Steps* - The cremation clearance workflow starts after the death certificate is largely complete. A typical workflow, at a high level, includes:
1.	Next of kin (or other authorized person or organization) requests cremation be the method of disposal and signs a cremation clearance request (CCR).
2.	Funeral home provides death certificate information and submits the CCR to the jurisdiction's vital records office (VRO) electronic death record system (EDRS).
3.	EDRS sends the CCR with the death certificate to MDI case management system (CMS) for review.
4.	Medical examiner / coroner reviews death certificate information, particularly the cause and manner of death, and makes a determination.
5.	MDI CMS sends to EDRS a cremation clearance authorization document with the status of the request.

This IG provides FHIR messaging artifacts for exchanging document bundles containing the death certificate information for review and additional information for cremation clearance, if needed.

**FHIR Resource:**
* Bundle - Message Death Certificate Review: Message bundle profile providing a FHIR “wrapper” to contain a message header and a document bundle for death certificate review workflows.
* MessageHeader - Death Certificate Review: Message header profile indicating that a document bundle is the focus of the message, the reason for the message (e.g., cremation clearance), and additional information about the status of the death certificate.
* Bundle - Document Death Certificate Review: Document bundle profile providing a FHIR “wrapper” to contain a composition document.
* Composition - Death Certificate Review: Composition profile containing Death Certificate components defined in the Vital Records Death Reporting (VRDR) FHIR Implementation Guide as the first sections. Additional sections represent information often used for cremation clearance workflows and data quality reviews.
* Observation - Communicable Disease
* Observation - Embalmed
* Observation - Medical Information Data Quality
* Observation - Personal Information Data Quality 

This implementation guide does not define FHIR resources for other aspects of the cremation clearance workflow, such as fee payment.

**Examples:**
* Death Certificate Review example for death data review request (example 1): Death data review request example
* Death Certificate Review example for death data review response (example 2): Death data review response example
* Death Certificate Review example for cremation clearance request (example 3): Cremation clearance request example
* Death Certificate Review example for cremation clearance response (example 4): Cremation clearance response example
* Observation - Communicable Disease: example 1
* Observation - Embalmed: example 1
* Observation - Medical Information Data Quality: example 1
* Observation - Personal Information Data Quality: example 1