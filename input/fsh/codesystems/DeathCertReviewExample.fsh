CodeSystem: DeathCertReviewExample
Id: cs-death-cert-review-example
Title: "Death Certificate Review Example"
Description: "This code system contains example codes for death certificate review."
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
// Example codes for Death Certificate Review MessageHeader.reason
* #DC_MED_DATA_Q_REQ "Death Certificate Medical Data Quality Review Request"
* #DC_MED_DATA_Q_RSP "Death Certificate Medical Data Quality Review Response"
* #DC_PER_DATA_Q_REQ "Death Certificate Personal Data Quality Review Request"
* #DC_PER_DATA_Q_RSP "Death Certificate Personal Data Quality Review Response"
* #CREM_C_REQ "Cremation Clearance Request"
* #CREM_C_RSP "Cremation Clearance Response"
// REMOVED -- Example Observation codes related to the Decedent
// * #Embalmed "Embalmed Observation"
// * #CommunicableDisease "Communicable Disease Observation"
// Example Extension codes
* #CertifiedWorkflow "Certified Workflow Observation"
* #Registration "Registration Observation"
// REMOVED -- Example Observation codes related to the Death Certificate review
// * #MedicalInformationDataQuality "Medical Information Data Quality Observation"
// * #PersonalInformationDataQuality "Personal Information Data Quality Observation"
// REMOVED -- Example Observation codes related to the Cremation Clearance 
// * #MECertificationAffirmation "Medical Examiner Certification Affirmation Observation"
// * #CoronerWorkflow "Coroner Workflow Observation"
// * #SignedWorkflow "Signed Workflow Observation"
// Example Death Certificate Status Codes (for ObservationRegistration and ObservationCertifiedWorkflow)
* #DEATH_CERT_CERT "Certified"
* #DEATH_CERT_NOT_CERT "Not Certified"
* #DEATH_CERT_REG "Registered"
* #DEATH_CERT_NOT_REG "Not Registered"
// Example Data Quality Review Codes (for ObservationMedicalInformationDataQuality and ObservationPersonalInformationDataQuality)
* #MED_INF_DQ_MEDICAL_VALID "Medical Data Valid"
* #MED_INF_DQ_MEDICAL_VALID_WITH_EXCEPTIONS "Medical Data Valid With Exceptions"
* #MED_INF_DQ_MEDICAL_INVALID "Medical Data Not Invalid"
* #PER_INF_DQ_PERSONAL_VALID "Personal Valid"
* #PER_INF_DQ_PERSONAL_VALID_WITH_EXCEPTIONS "Personal Valid With Exceptions"
* #PER_INF_DQ_PERSONAL_INVALID "Personal Invalid"
// Example Cremation Clearance Status Codes (for ExtensionCremationClearanceStatus, ObservationSignedWorkflow, and ObservationMECertificationAffirmation)
* #CREM_C_REQUESTED "Requested"
* #CREM_C_PENDING "Pending"
* #CREM_C_REJECTED "Rejected"
* #CREM_C_APPROVED "Approved"
* #CREM_C_SIGNED "Signed"
* #CREM_C_UNSIGNED "Unsigned"
* #ME_AFFIRM_CERTIFICATION_AFFIRMED "ME Certification Affirmation Affirmed"
* #ME_AFFIRM_CERTIFICATION_NOT_AFFIRMED "ME Certification Affirmation Not Affirmed"
// Additional example codes
* #ME "Medical Examiner"
* #AME "Assistant Medical Examiner"
* #CREM_C_Form "Cremation Clearance Form"