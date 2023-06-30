### MDI STU 1.1 (July 2023)

#### Profiles
**Overall**: Updated and clarified data element descriptions to indicate roles of the “death certifier” [FHIR-41184](https://jira.hl7.org/browse/FHIR-41184)

**Composition - MDI to EDRS**:
* Made identifier optional [FHIR-39413](https://jira.hl7.org/browse/FHIR-39413)
* Changed the author from `(1..*)` to `(1..1)` and updated the description and definition [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Removed the data-absent-reason extension from the attester and updated the description and definition [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Added guidance to Composition.section: if no information for a required section, use Composition.section:cause-manner.emptyReason. [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Changed cardinality from `(0..*)` to `(0..1)` for entry:other-condition, entry:manner, entry:how-injury [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Updated entry:cause to "Up to 4 lines of cause of death" [FHIR-40691](https://jira.hl7.org/browse/FHIR-40691)
* Added a slice to section:exam-autopsy.entry for autopsy location [FHIR-39414](https://jira.hl7.org/browse/FHIR-39414)

**Observation - Cause of Death Part 1** [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)
* Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 value(x) structure & lineNumber.valueInteger
* Added valueQuantity and valueString options for interval.value(x).

**Observation - Contributing Cause of Death Part 2**: Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 performer cardinality, changed from `(1..1)` to `(0..*)` [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)

**Observation - Death Date** [FHIR-40470](https://jira.hl7.org/browse/FHIR-40470):
* Added choice of dateTime or period to Observation.value(x)
* Added time to dateTime as choices for datetimePronouncedDead.value(x) to align with VRDR

**Observation - Autopsy Performed Indicator**: Constrained performer to US Core Practitioner Profile [FHIR-41346](https://jira.hl7.org/browse/FHIR-41346)

**Observation - Tobacco Use Contributed to Death**: Updated to align with Vital Records Death Reporting (VRDR) STU2, v.2.1.0 code display [FHIR-41185](https://jira.hl7.org/browse/FHIR-41185)

**Bundle - Message Toxicology to MDI**: made identifier optional [FHIR-39413](https://jira.hl7.org/browse/FHIR-39413)

**DocumentReference - MDI Report**: Added profile of US Core DocumentReference Profile for exchange of death investigation documents, such as Autopsy Reports and Investigator’s Narratives. [FHIR-41348](https://jira.hl7.org/browse/FHIR-41348)

#### Terminology
* Updated code displays to match source code systems (e.g., SNOMED CT)
* Removed unused valuesets: ValueSet - Units of Age; ValueSet - Yes, No, Not Applicable

#### Narrative Pages
**Overall**: Clarified language , updating terms such as “MDI system” to “MDI case management system (MDI CMS)” for the electronic data systems [FHIR-36944](https://jira.hl7.org/browse/FHIR-36944)

**Best Practice**: Updated guidance on absent data [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)

**Security Recommendations**: New page added

**Change Log**: New page added [FHIR-41184](https://jira.hl7.org/browse/FHIR-41184)

#### Examples: 
* Updated Composition - MDI to EDRS example file to show death certifier roles.
* Added Composition - MDI to EDRS example file with author and attester not yet named (using the data-absent-reason). [FHIR-41347](https://jira.hl7.org/browse/FHIR-41347)
* Added example files for DocumentReference profiles