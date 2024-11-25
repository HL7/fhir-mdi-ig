### STU2 Ballots
The 2nd STU2 ballot (Jan. 2025) made the following changes:
* **Added 9 new profiles** for Death Certificate review workflow plus supporting extensions and example codes:
  * Bundle - Message Death Certificate Review
  * MessageHeader - Death Certificate Review
  * Bundle - Document Death Certificate Review
  * Composition - Death Certificate Review 
  * Observation - Medical Information Data Quality 
  * Observation - Personal Information Data Quality 
  * Observation - Communicable Disease
  * Observation - Embalmed
  * Organization - Crematorium
* **Code systems**:
  * Renamed CodeSystem - MDI (CodeSystem-mdi-codes, CodeSystemMDI) to Medicolegal Death Investigation Codes (cs-mdi-codes, MDIcodes) per TSMG guidance
  * Added Death Certificate Review Example (cs-death-cert-review-example, DeathCertReviewExample)
* **Added Use Cases** narrative page and **removed Terminology** narrative pages (no longer needed)

The 1st STU2 ballot (May 2024) of MDI incorporated refactoring, as described in the VRCL, Vital Records FHIR Implementation Guide Harmonization Plan page. Many of the MDI STU1.1 profiles, valuesets, codesystems, and extensions are now found elsewhere. For a detailed description of harmonization changes in the MDI IG, see the Content Transitions page.

### MDI STU 1.1 (September 2023)

#### Overall
* Updated and clarified data element descriptions to indicate roles of the “death certifier” [FHIR-41184](https://jira.hl7.org/browse/FHIR-41184)
* Clarified language, updating terms such as “MDI system” to “MDI case management system (MDI CMS)” for the electronic data systems [FHIR-36944](https://jira.hl7.org/browse/FHIR-36944), [FHIR-41685](https://jira.hl7.org/browse/FHIR-41685)

#### Profiles

**Capability Statements**:
* Changed name/title of "CapabilityStatement - Medical Examiner/Coroner Server" to "CapabilityStatement - MDI CMS Server" [FHIR-36944](https://jira.hl7.org/browse/FHIR-36944)
* Added `rest` definitions to CapabilityStatement - MDI CMS Server and to CapabilityStatement - Electronic Death Reporting System (EDRS) Server [FHIR-41518](https://jira.hl7.org/browse/FHIR-41518)
* Added `text` to CapabilityStatement - MDI CMS Server, CapabilityStatement - Electronic Death Reporting System (EDRS) Server, and CapabilityStatement - Forensic Toxicology Laboratory Server for more informative html rendering of each resource [FHIR-41515](https://jira.hl7.org/browse/FHIR-41515)

**Bundle - Document MDI to EDRS**:
* Changed profile name/title to “Bundle - Document MDI **and** EDRS” [FHIR-41684](https://jira.hl7.org/browse/FHIR-41684)

**Composition - MDI to EDRS**:
* Changed profile name/title to “Composition - MDI **and** EDRS” [FHIR-41684](https://jira.hl7.org/browse/FHIR-41684)
* Made identifier optional  [FHIR-39411](https://jira.hl7.org/browse/FHIR-39411), [FHIR-39412](https://jira.hl7.org/browse/FHIR-39412), [FHIR-39413](https://jira.hl7.org/browse/FHIR-39413)
* Changed the author from `(1..*)` to `(1..1)` and updated the description and definition [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Removed the data-absent-reason extension from the attester and updated the description and definition [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Added guidance to Composition.section: if no information for a required section, use Composition.section:cause-manner.emptyReason. [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Changed cardinality from `(0..*)` to `(0..1)` for entry:other-condition, entry:manner, entry:how-injury [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Updated entry:cause to "Up to 4 lines of cause of death" [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Added a slice to section:exam-autopsy.entry for autopsy location [FHIR-39414](https://jira.hl7.org/browse/FHIR-39414)
* Corrected cardinality of Composition.section:narratives.code from `0..1` to `1..1`  [FHIR-41871](https://jira.hl7.org/browse/FHIR-41871)

**Observation - Cause of Death Part 1**:
* Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 value(x) structure & lineNumber.valueInteger  [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)
* Added valueQuantity and valueString options for interval.value(x)  [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)
* Fixed the interval component to correctly display value[x] options on all 3 tabs (Differential, Key Elements, and Snapshot) [FHIR-41643](https://jira.hl7.org/browse/FHIR-41643)
* Improved Observation.component:interval.value[x] description to inform and guide users that the Quantity is only to be used for an amount of time [FHIR-41643](https://jira.hl7.org/browse/FHIR-41643)

**Observation - Contributing Cause of Death Part 2**: Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 performer cardinality, changed from `(1..1)` to `(0..*)` [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)

**Observation - Death Date**:
* Added choice of dateTime or period to Observation.value(x)  [FHIR-40470](https://jira.hl7.org/browse/FHIR-40470)
* Added time to dateTime as choices for datetimePronouncedDead.value(x) to align with VRDR  [FHIR-40470](https://jira.hl7.org/browse/FHIR-40470)
* Updated Observation.value[x].extension:partialDateTime to reference `http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime` and updated short description [FHIR-41647](https://jira.hl7.org/browse/FHIR-41647)

**Observation - How Death Injury Occurred**: Updated Observation.value[x].extension:partialDateTime to reference `http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime` and updated short description [FHIR-41647](https://jira.hl7.org/browse/FHIR-41647)


**Observation - Autopsy Performed Indicator**: Constrained performer to US Core Practitioner Profile [FHIR-41346](https://jira.hl7.org/browse/FHIR-41346)

**Observation - Tobacco Use Contributed to Death**: Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 code display [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)

**Bundle - Message Toxicology to MDI**: made identifier optional [FHIR-39413](https://jira.hl7.org/browse/FHIR-39413)

**DocumentReference - MDI Report**: Added profile of US Core DocumentReference Profile for exchange of death investigation documents, such as Autopsy Reports and Investigator’s Narratives. [FHIR-41348](https://jira.hl7.org/browse/FHIR-41348)

#### Extensions
* Removed Extension structure definitions:  Extension-partial-date-time, Extension-date-year, Extension-date-month, Extension-date-day, and Extension-date-time; replaced uses with reference (url) to Vital Records Death Reporting (VRDR) extensions, thus creating a formal dependence on VRDR) [FHIR-41647](https://jira.hl7.org/browse/FHIR-41647)

#### Terminology
* Updated code displays to match source code systems (e.g., SNOMED CT)
* Removed unused valuesets: ValueSet - Units of Age; ValueSet - Yes, No, Not Applicable

#### Narrative Pages
**Overall**: Clarified language , updating terms such as “MDI system” to “MDI case management system (MDI CMS)” for the electronic data systems [FHIR-36944](https://jira.hl7.org/browse/FHIR-36944)

**Best Practice**: Updated guidance on absent data [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)

**Security Recommendations**: New page added and corrected information [FHIR-41642](https://jira.hl7.org/browse/FHIR-41642)

**Terminology**: Updated text to clarify similarities with VRDR [FHIR-41519](https://jira.hl7.org/browse/FHIR-41519)

**Change Log**: New page added [FHIR-41184](https://jira.hl7.org/browse/FHIR-41184)

**Artifact Index**:
* Moved  MessageDefinition – Toxicology System to Toxicology Profiles grouping [FHIR-41516](https://jira.hl7.org/browse/FHIR-41516)
* Created new grouping, Administrative Profiles, for DocumentReference - MDI Report [FHIR-41348](https://jira.hl7.org/browse/FHIR-41348)


#### Examples: 
* Updated "MDI and EDRS Composition - Freeman" example file to show death certifier roles  [FHIR-41184](https://jira.hl7.org/browse/FHIR-41184)
* Added "MDI and EDRS Composition - draft" example file with author and attester not yet named (using the data-absent-reason). [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Added "Observation - Cause of Death Part 1 - Freeman - quantity interval" example file
* Added "Observation - Death Date - period" and "Observation - Death Date - partial date" example files
* Added "Location - Death - Freeman address string" and "Location - Death - Lat/Long" example files
* Removed "US Core Practitioner - Dr. Jane Jones" example file and added "US Core Practitioner - Dr. J.M. Lehz" example file
* Added "DocumentReference - MDI Report - Autopsy Report" and "DocumentReference - MDI Report - Investigator's Narrative" example files