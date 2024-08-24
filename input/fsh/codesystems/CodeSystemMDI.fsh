CodeSystem: CodeSystemMDI
Id: CodeSystem-vr-codes
Title: "CodeSystem - MDI"
Description: "This code system contains codes for use in death investigations and reporting."
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
// Sections for Death Certificate Review and Cremation Clearance
* #ccr-authorizing-agent "Cremation Clearance Authorizing Agent Section"
* #ccr-info "Cremation Clearance Information Section"
* #Death-Certificate-review "Death Certificate Review Section"

* #mdi-case-number "MDI Case Number"
* #edrs-file-number "EDRS File Number"
* #tox-lab-case-number "Toxicology Laboratory Case Number"
* #mdi-case-notes-summary "MDI Case Notes Summary"
* #mdi-case-history "MDI Case History"
* #tox-result-report "Toxicology Lab Results"
* #narratives "Narratives"
// * #exact "Exact"
// * #approximate "Approximate"
// * #court-appointed "Court Appointed"
// * #injury "Injury Location"
// * #death "Death Location"

// Observation codes related to the Decedent
* #Embalmed "Embalmed Observation"
* #CommunicableDisease "Communicable Disease Observation"

// Observation codes related to the Death Certificate review
* #CertifiedWorkflow "Certified Workflow Observation"
* #Registration "Registration Observation"
* #MedicalInformationDataQuality "Medical Information Data Quality Observation"
* #PersonalInformationDataQuality "Personal Information Data Quality Observation"

// Observation codes related to the Cremation Clearance 
* #MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
* #CoronerWorkflow "Coroner Workflow Observation"
* #SignedWorkflow "Signed Workflow Observation"