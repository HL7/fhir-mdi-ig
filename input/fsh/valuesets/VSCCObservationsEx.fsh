ValueSet: VSCCObservationsEx
Id: vs-cremation-clearance-observations-example
Title: "ValueSet - Cremation Clearance Observations example"
Description: "This value set contains example codes for Cremation Clearance Observations."
* ^status = #active
* ^experimental = false

// Example Observation codes related to the Decedent
* CsCremationClearanceExample#Embalmed "Embalmed Observation"
* CsCremationClearanceExample#CommunicableDisease "Communicable Disease Observation"

// Example Observation codes related to the Death Certificate review
* CsDeathCertReviewExample#CertifiedWorkflow "Certified Workflow Observation"
* CsDeathCertReviewExample#Registration "Registration Observation"
* CsDeathCertReviewExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* CsDeathCertReviewExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"

// Example Observation codes related to the Cremation Clearance 
* CsDeathCertReviewExample#MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
* CsDeathCertReviewExample#CoronerWorkflow "Coroner Workflow Observation"
* CsDeathCertReviewExample#SignedWorkflow "Signed Workflow Observation"