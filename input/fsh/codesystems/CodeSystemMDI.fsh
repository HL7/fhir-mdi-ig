CodeSystem: CodeSystemMDI
Id: CodeSystem-vr-codes
Title: "CodeSystem - MDI"
Description: "Local codes for items that lack an appropriate LOINC code. This codesystem is only for use in the MDI use cases supported by this implementation guide, and should not be used elsewhere."
// old Description: "This code system contains codes for use in death investigations and reporting."
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
// Sections for MDI and EDRS Composition
* #demographics "Demographics Section"
* #circumstances "Circumstances of the Death Section"
* #jurisdiction "Jurisdiction Section"
* #cause-manner "Cause and Manner of Death Section"
* #medical-history "Medical History Section"
* #exam-autopsy "Exam/Autopsy Section"
* #narratives "Narratives Section"
// Sections for Death Certificate Data Review Composition
* #ccr-authorizing-agent "Cremation Clearance Authorizing Agent Section"
* #cremation-clearance-info "Cremation Clearance Information Section"
* #Death-Certificate-data-review "Death Certificate Data Review Results Section"
// MDI tracking number types
* #mdi-case-number "MDI Case Number"
* #edrs-file-number "EDRS File Number"
* #tox-lab-case-number "Toxicology Laboratory Case Number"
// MessageHeader.event types
* #tox-result-report "Toxicology Lab Results"
* #death-certificate-review "Death Certificate Review"
// Observation codes related to Detah Certificate Review Observations
* #Embalmed "Embalmed Observation"
* #CommunicableDisease "Communicable Disease Observation"
// Observation codes related to the Death Certificate review NO LONGER NEEDED?
//* #CertifiedWorkflow "Certified Workflow Observation"
//* #Registration "Registration Observation"
* #MedicalInformationDataQuality "Medical Information Data Quality Observation"
* #PersonalInformationDataQuality "Personal Information Data Quality Observation"
// Observation codes related to the Cremation Clearance NO LONGER NEEDED?
//* #MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
//* #CoronerWorkflow "Coroner Workflow Observation"
//* #SignedWorkflow "Signed Workflow Observation"
// Other type codes
* #crematorium "Crematorium"