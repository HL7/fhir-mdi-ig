Instance: composition-mdi-ccr-ex3
InstanceOf: CompositionMDIDCR
Usage: #example
Title: "Composition - Death Certificate Revirew for Cremation Clearance Request - Example 3"
Description: "Death Certificate Revirew for Cremation Clearance Request Composition: example 3"
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
  * insert addNamedEntryComposition(death-certificate-cert-status, Observation, observation-registration-ccr-ex1)
  * insert addNamedEntryComposition(death-certificate-reg-status, Observation, observation-certified-workflow-ccr-ex1)
  * insert addNamedEntryComposition(med-info-quality-review, Observation, observation-medical-information-data-quality-ccr-ex1)
  * insert addNamedEntryComposition(personal-info-quality-review, Observation, observation-personal-information-data-quality-ccr-ex1)
//
* section[ccr-info]
  * insert addNamedEntryComposition(authorizing-agent, RelatedPerson, decedent-father-ccr-ex1)
  * insert addNamedEntryComposition(embalmed, Observation, observation-embalmed-ccr-ex1)
  * insert addNamedEntryComposition(communicable-disease, Observation, observation-communicable-disease-ccr-ex1)
  * insert addNamedEntryComposition(cause-of-death-certifier, Practitioner, certifier-ccr-ex1)
  * insert addNamedEntryComposition(funeral-home, Organization, funeral-home-ccr-ex1)
  * insert addNamedEntryComposition(mortician, Practitioner, mortician-ccr-ex1)
//
* section[DecedentDemographics]
  * insert addNamedEntryComposition(Decedent, Patient, decedent-ccr-ex1) 
  * insert addNamedEntryComposition(Father, RelatedPerson, decedent-father-ccr-ex1) 
  * insert addNamedEntryComposition(Mother, RelatedPerson, Ddecedent-mother-ccr-ex1) 
  * insert addNamedEntryComposition(Spouse, RelatedPerson, DecedentSpouse-Example1) 
  * insert addNamedEntryComposition(Age, Observation, decedent-age-ccr-ex1) 
  * insert addNamedEntryComposition(EducationLevel, Observation, decedent-education-level-ccr-ex1) 
  * insert addNamedEntryComposition(MilitaryService, Observation, decedent-military-service-ccr-ex1) 
// Usual work creates error here. Review and add back after VRDR publishes in 2024
//
* section[DeathInvestigation]
  * insert addNamedEntryComposition(ExaminerContacted, Observation, examiner-contacted-ccr-ex1)
  * insert addNamedEntryComposition(PregnancyStatus, Observation, decedent-pregnancy-ccr-ex1)
  * insert addNamedEntryComposition(TobaccoUse, Observation, tobacco-use-ccr-ex1)
  * insert addNamedEntryComposition(DeathLocation, Location, death-location-ccr-ex1)
  * insert addNamedEntryComposition(InjuryLocation, Location, injury-location-ccr-ex1)
  * insert addNamedEntryComposition(InjuryIncident, Observation, injury-incident-ccr-ex1)
  * insert addNamedEntryComposition(Autopsy, Observation, autopsy-performed-ccr-ex1)
  * insert addNamedEntryComposition(DeathDate, Observation, death-date-ccr-ex1)
//  Should decide on interested-party-ccr-ex1
//
* section[DeathCertification]
  * insert addNamedEntryComposition(Certifier, Practitioner, certifier-ccr-ex1)
  * insert addNamedEntryComposition(DeathCertification, Procedure, death-certification-procedure-ccr-ex1)
  * insert addNamedEntryComposition(MannerOfDeath, Observation, manner-of-death-ccr-ex1)
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, cause-of-death-ccr-ex1)
  * insert addNamedEntryComposition(CauseOfDeathPart2, Observation, contributing-to-death-ccr-ex1)
//
* section[DecedentDisposition]
  * insert addNamedEntryComposition(DispositionLocation, Location, disposition-location-ccr-ex1)
  * insert addNamedEntryComposition(FuneralHome, Organization, funeral-home-ccr-ex1)
  * insert addNamedEntryComposition(DispositionMethod, Observation, disposition-method-ccr-ex1)
  * insert addNamedEntryComposition(Mortician, Practitioner, mortician-ccr-ex1)
