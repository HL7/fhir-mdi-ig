ValueSet: VSDCRObservationsEx
Id: vs-death-certificate-review-observations-example
Title: "ValueSet - Death Certificate Review Observations example"
Description: "This value set contains example codes for Death Certificate Review Observations."
* ^status = #active
* ^experimental = false

// Example Observation codes related to the Decedent
* CsDeathCertReviewExample#Embalmed "Embalmed Observation"
* CsDeathCertReviewExample#CommunicableDisease "Communicable Disease Observation"

// Example Observation codes related to the Death Certificate review
* CsDeathCertReviewExample#CertifiedWorkflow "Certified Workflow Observation"
* CsDeathCertReviewExample#Registration "Registration Observation"
* CsDeathCertReviewExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* CsDeathCertReviewExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"

// Example Observation codes related to the Cremation Clearance 
* CsDeathCertReviewExample#MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
* CsDeathCertReviewExample#CoronerWorkflow "Coroner Workflow Observation"
* CsDeathCertReviewExample#SignedWorkflow "Signed Workflow Observation"