CodeSystem: MDIcodes
Id: cs-mdi-codes
Title: "Medicolegal Death Investigation Codes"
Description: "Local codes for items that lack an appropriate LOINC code. This code system is only for use in the MDI use cases supported by this implementation guide and should not be used elsewhere."
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
// Composition.type
* #death-certificate-data-review-doc "Death Certificate Data Review Document" "Death Certificate Data Review Document"
// Sections for MDI and EDRS Composition
* #demographics "Demographics Section" "Demographics Section of Death Certificate"
* #circumstances "Circumstances of the Death Section" "Circumstances of the Death Section of Death Certificate"
* #jurisdiction "Jurisdiction Section" "Jurisdiction Section of Death Certificate"
* #cause-manner "Cause and Manner of Death Section" "Cause and Manner of Death Section of Death Certificate"
* #medical-history "Medical History Section" "Medical History Section of Death Certificate"
* #exam-autopsy "Exam/Autopsy Section" "Exam/Autopsy Section of Death Certificate"
* #narratives "Narratives Section" "Narratives Section of Death Certificate"
// Sections for Death Certificate Data Review Composition
* #cremation-clearance-info "Cremation Clearance Information Section" "Cremation Clearance Information Section of Review Document"
* #death-certificate-data-review "Death Certificate Data Review Results Section" "Death Certificate Data Review Results Section of Review Document"
// MDI tracking number types
* #mdi-case-number "MDI Case Number" "MDI Case Number"
* #edrs-file-number "EDRS File Number" "EDRS File Number"
* #tox-lab-case-number "Toxicology Laboratory Case Number" "Toxicology Laboratory Case Number"
* #funeral-home-case-number "Funeral Home Case Number" "Funeral Home Case Number"
// MessageHeader.event types
* #tox-result-report "Toxicology Lab Results" "Toxicology Lab Results"
* #death-certificate-review-event "Death Certificate Review Event" "Death Certificate Review Event"
// Observation codes related to Death Certificate Review Observations
* #embalmed-obs "Embalmed Observation" "Whether or not body is embalmed"
* #communicable-disease-obs "Communicable Disease Observation" "Whether or not body harbors a communicable disease"
* #med-info-data-quality-obs "Medical Information Data Quality Observation" "Assessment of the medical information data quality"
* #personal-info-data-quality-obs "Personal Information Data Quality Observation" "Assessment of the personal information data quality"
// Observation codes related to the Cremation Clearance
* #crematorium "Crematorium" "Crematorium"