ValueSet: VSDCRObservationsEx
Id: vs-death-certificate-review-observations-example
Title: "ValueSet - Death Certificate Review Observations example"
Description: "This value set contains example codes for Death Certificate Review Observations."
* ^status = #active
* ^experimental = false

// Example Observation codes related to the Decedent
* CsCremationClearanceExample#Embalmed "Embalmed Observation"
* CsCremationClearanceExample#CommunicableDisease "Communicable Disease Observation"

// Example Observation codes related to the Death Certificate review
* CsCremationClearanceExample#CertifiedWorkflow "Certified Workflow Observation"
* CsCremationClearanceExample#Registration "Registration Observation"
* CsCremationClearanceExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* CsCremationClearanceExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"

// Example Observation codes related to the Cremation Clearance 
* CsCremationClearanceExample#MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
* CsCremationClearanceExample#CoronerWorkflow "Coroner Workflow Observation"
* CsCremationClearanceExample#SignedWorkflow "Signed Workflow Observation"