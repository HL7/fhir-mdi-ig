CodeSystem: MDIcodes
Id: cs-mdi-codes
Title: "Medicolegal Death Investigation Codes"
Description: "Local codes for items that lack an appropriate LOINC code. This code system is only for use in the MDI use cases supported by this implementation guide and should not be used elsewhere."
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
// Composition.type
* #death-certificate-data-review-doc "Death Certificate Data Review Document"
// Sections for MDI and EDRS Composition
* #demographics "Demographics Section"
* #circumstances "Circumstances of the Death Section"
* #jurisdiction "Jurisdiction Section"
* #cause-manner "Cause and Manner of Death Section"
* #medical-history "Medical History Section"
* #exam-autopsy "Exam/Autopsy Section"
* #narratives "Narratives Section"
// Sections for Death Certificate Data Review Composition
// * #ccr-authorizing-agent "Cremation Clearance Authorizing Agent Section"
* #cremation-clearance-info "Cremation Clearance Information Section"
* #death-certificate-data-review "Death Certificate Data Review Results Section"
// MDI tracking number types
* #mdi-case-number "MDI Case Number"
* #edrs-file-number "EDRS File Number"
* #tox-lab-case-number "Toxicology Laboratory Case Number"
* #funeral-home-case-number "Funeral Home Case Number"
// MessageHeader.event types
* #tox-result-report "Toxicology Lab Results"
* #death-certificate-review-event "Death Certificate Review Event"
// Observation codes related to Death Certificate Review Observations
* #embalmed-obs "Embalmed Observation"
* #communicable-disease-obs "Communicable Disease Observation"
* #med-info-data-quality-obs "Medical Information Data Quality Observation"
* #personal-info-data-quality-obs "Personal Information Data Quality Observation"
// Observation codes related to the Cremation Clearance
* #crematorium "Crematorium"