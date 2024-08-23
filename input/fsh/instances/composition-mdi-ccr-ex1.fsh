Instance: composition-mdi-ccr-ex1
InstanceOf: CompositionMDIDCR
Usage: #example
Title: "Composition - Death Certificate Revirew for Cremation Clearance Request - Example 1"
Description: "Death Certificate Revirew for Cremation Clearance Request Composition: example 1"
*  extension[ExtensionDeathCertificateReviewReason].valueCodeableConcept = CsDeathCertReviewExample#CREM_C_REQUEST_Form "Cremation Clearance Request Form"
*  extension[ExtensionCremationClearanceStatus].valueCodeableConcept = CsDeathCertReviewExample#CREM_C_REQUEST "Requested"
*  extension[ExtensionMECertificationAffirmation].valueCodeableConcept = CsDeathCertReviewExample#ME_AFFIRM_CERTIFICATION_AFFIRMED "ME Certification Affirmation Affirmed"
*  extension[ExtensionCremationClearanceCoroner].valueCodeableConcept = $sct#385432009 "Not applicable"
*  extension[ExtensionCremationClearanceSignature].valueCodeableConcept = CsDeathCertReviewExample#CREM_C_UNSIGNED "Unsigned"
//
* status = #preliminary
* type = $loinc#86807-5 "Death administrative information Document"
* subject = Reference(decedent-ccr-ex1)
* date = "2023-05-02"
* author = Reference(us-core-practitioner-s-jones) // author should be the EDRS ?
* title = "Composition - Cremation Clearance Request - Example"
// 
* section[Death-Certificate-review]
* section[Death-Certificate-review].code = CodeSystemMDI#Death-Certificate-review
  * insert addNamedEntryComposition(death-certificate-cert-status, Observation, observation-registration-ccr-ex1)
  * insert addNamedEntryComposition(death-certificate-reg-status, Observation, observation-certified-workflow-ccr-ex1)
  * insert addNamedEntryComposition(med-info-quality-review, Observation, observation-medical-information-data-quality-ccr-ex1)
  * insert addNamedEntryComposition(personal-info-quality-review, Observation, observation-personal-information-data-quality-ccr-ex1)
//
* section[ccr-info]
* section[ccr-info].code = CodeSystemMDI#ccr-info
  * insert addNamedEntryComposition(authorizing-agent, RelatedPerson, decedent-father-ccr-ex1)
  * insert addNamedEntryComposition(embalmed, Observation, observation-embalmed-ccr-ex1)
  * insert addNamedEntryComposition(communicable-disease, Observation, observation-communicable-disease-ccr-ex1)
  * insert addNamedEntryComposition(cause-of-death-certifier, Practitioner, certifier-ccr-ex1)
  * insert addNamedEntryComposition(funeral-home, Organization, funeral-home-ccr-ex1)
  * insert addNamedEntryComposition(mortician, Practitioner, mortician-ccr-ex1)
//
* section[DecedentDemographics]
* section[DecedentDemographics].code = $vrdr-document-section-cs#DecedentDemographics
  * insert addNamedEntryComposition(Decedent, Patient, decedent-ccr-ex1) 
  * insert addNamedEntryComposition(Father, RelatedPerson, decedent-father-ccr-ex1) 
  * insert addNamedEntryComposition(Mother, RelatedPerson, Ddecedent-mother-ccr-ex1) 
  * insert addNamedEntryComposition(Spouse, RelatedPerson, DecedentSpouse-Example1) 
  * insert addNamedEntryComposition(Age, Observation, decedent-age-ccr-ex1) 
  * insert addNamedEntryComposition(EducationLevel, Observation, decedent-education-level-ccr-ex1) 
  * insert addNamedEntryComposition(MilitaryService, Observation, decedent-military-service-ccr-ex1) 
  * insert addNamedEntryComposition(UsualWork, Observation, DecedentUsualWork-Example1) 
  * insert addNamedEntryComposition(InputRaceAndEthnicity, Observation, InputRaceAndEthnicity-Example1) 
  * insert addNamedEntryComposition(EmergingIssues, Observation, EmergingIssues-Example1)
//  * section[DecedentDemographics].entry[0] = Reference(Patient/decedent-ccr-ex1)
//  * section[DecedentDemographics].entry[+] = Reference(RelatedPerson/decedent-father-ccr-ex1)
//  * section[DecedentDemographics].entry[+] = Reference(RelatedPerson/decedent-mother-ccr-ex1)
//  * section[DecedentDemographics].entry[+] = Reference(Observation/decedent-age-ccr-ex1)
//  * section[DecedentDemographics].entry[+] = Reference(Observation/decedent-education-level-ccr-ex1)
//  * section[DecedentDemographics].entry[+] = Reference(Observation/decedent-military-service-ccr-ex1)
// Usual work creates error here. Review and add back after VRDR publishes in 2024
//
* section[DeathInvestigation]
* section[+].code = $vrdr-document-section-cs#DeathInvestigation
* section[=].entry[0] = Reference(Observation/examiner-contacted-ccr-ex1)
* section[=].entry[+] = Reference(Observation/decedent-pregnancy-ccr-ex1)
* section[=].entry[+] = Reference(Observation/tobacco-use-ccr-ex1)
* section[=].entry[+] = Reference(Location/death-location-ccr-ex1)
* section[=].entry[+] = Reference(Location/injury-location-ccr-ex1)
* section[=].entry[+] = Reference(Observation/injury-incident-ccr-ex1)
* section[=].entry[+] = Reference(Observation/autopsy-performed-ccr-ex1)
* section[=].entry[+] = Reference(Observation/death-date-ccr-ex1)
//  * section[=].entry[+] = Reference(Organization/interested-party-ccr-ex1)
* section[DeathCertification]
* section[+].code = $vrdr-document-section-cs#DeathCertification
* section[=].entry[0] = Reference(Practitioner/certifier-ccr-ex1)
* section[=].entry[+] = Reference(Procedure/death-certification-procedure-ccr-ex1)
* section[=].entry[+] = Reference(Observation/manner-of-death-ccr-ex1)
* section[=].entry[+] = Reference(Observation/cause-of-death-ccr-ex1)
* section[=].entry[+] = Reference(Observation/contributing-to-death-ccr-ex1)
//
* section[DecedentDisposition]
* section[+].code = $vrdr-document-section-cs#DecedentDisposition
* section[=].entry[0] = Reference(Location/disposition-location-ccr-ex1)
* section[=].entry[+] = Reference(Organization/funeral-home-ccr-ex1)
* section[=].entry[+] = Reference(Observation/disposition-method-ccr-ex1)
* section[=].entry[+] = Reference(Practitioner/mortician-ccr-ex1)
