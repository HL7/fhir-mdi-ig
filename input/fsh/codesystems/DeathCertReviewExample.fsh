CodeSystem: DeathCertReviewExample
Id: cs-death-cert-review-example
Title: "Death Certificate Review Example"
Description: "This code system contains example codes for death certificate review."
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
// Example codes for Death Certificate Review MessageHeader.reason
* #DC_MED_DATA_Q_REQ "Death Certificate Medical Data Quality Review Request" "Requesting a review of medical data in death certificate"
* #DC_MED_DATA_Q_RSP "Death Certificate Medical Data Quality Review Response" "Responding to a request for a review of medical data in death certificate"
* #DC_PER_DATA_Q_REQ "Death Certificate Personal Data Quality Review Request" "Requesting a review of personal data in death certificate"
* #DC_PER_DATA_Q_RSP "Death Certificate Personal Data Quality Review Response" "Responding to a request for a review of personal data in death certificate"
* #CREM_C_REQ "Cremation Clearance Request" "Requesting a review of death certificate for clearance to cremate"
* #CREM_C_RSP "Cremation Clearance Response" "Responding to a request for clearance to cremate"
// Example Death Certificate Status Codes (for ObservationRegistration and ObservationCertifiedWorkflow)
* #DEATH_CERT_CERT "Certified" "Death certificate has been certified"
* #DEATH_CERT_NOT_CERT "Not Certified" "Death certificate has not been certified"
* #DEATH_CERT_REG "Registered" "Death certificate has been registered"
* #DEATH_CERT_NOT_REG "Not Registered" "Death certificate has not been registered"
// Example Data Quality Review Codes (for ObservationMedicalInformationDataQuality and ObservationPersonalInformationDataQuality)
* #MED_INF_DQ_MEDICAL_VALID "Medical Data Valid" "Review response that medical data is valid"
* #MED_INF_DQ_MEDICAL_VALID_WITH_EXCEPTIONS "Medical Data Valid With Exceptions" "Review response that medical data is valid with exceptions"
* #MED_INF_DQ_MEDICAL_INVALID "Medical Data Invalid" "Review response that medical data is invalid"
* #PER_INF_DQ_PERSONAL_VALID "Personal Valid" "Review response that personal data is valid"
* #PER_INF_DQ_PERSONAL_VALID_WITH_EXCEPTIONS "Personal Valid With Exceptions" "Review response that personal data is valid with exceptions"
* #PER_INF_DQ_PERSONAL_INVALID "Personal Invalid" "Review response that personal data is invalid"
// Example Cremation Clearance Status Codes (for ExtensionCremationClearanceStatus, ObservationSignedWorkflow, and ObservationMECertificationAffirmation)
* #CREM_C_REQUESTED "Requested" "Status: cremation clearance is requested"
* #CREM_C_PENDING "Pending" "Status: cremation clearance is pending"
* #CREM_C_REJECTED "Rejected" "Status: cremation clearance is rejected"
* #CREM_C_APPROVED "Approved" "Status: cremation clearance is approved"
* #CREM_C_SIGNED "Signed" "Status: cremation clearance is signed"
* #CREM_C_UNSIGNED "Unsigned" "Status: cremation clearance is unsigned"
* #ME_AFFIRM_CERTIFICATION_AFFIRMED "ME Certification Affirmation Affirmed" "Medical examiner certification is affirmed"
* #ME_AFFIRM_CERTIFICATION_NOT_AFFIRMED "ME Certification Affirmation Not Affirmed" "Medical examiner certification is not affirmed"
// Additional example codes
// * #ME "Medical Examiner" "Medical Examiner"
// * #AME "Assistant Medical Examiner" "Assistant Medical Examiner"
// * #CREM_C_Form "Cremation Clearance Form" "Cremation Clearance Form"