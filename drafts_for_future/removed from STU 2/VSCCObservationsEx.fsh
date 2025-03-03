ValueSet: VSCCObservationsEx
Id: vs-cremation-clearance-observations-example
Title: "ValueSet - Cremation Clearance Observations example"
Description: "This value set contains example codes for Cremation Clearance Observations."
* ^status = #active
* ^experimental = false

// Example Observation codes related to the Decedent
* DeathCertReviewExample#Embalmed "Embalmed Observation"
* DeathCertReviewExample#CommunicableDisease "Communicable Disease Observation"

// Example Observation codes related to the Death Certificate review
* DeathCertReviewExample#CertifiedWorkflow "Certified Workflow Observation"
* DeathCertReviewExample#Registration "Registration Observation"
* DeathCertReviewExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* DeathCertReviewExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"

// Example Observation codes related to the Cremation Clearance 
* DeathCertReviewExample#MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
* DeathCertReviewExample#CoronerWorkflow "Coroner Workflow Observation"
* DeathCertReviewExample#SignedWorkflow "Signed Workflow Observation"