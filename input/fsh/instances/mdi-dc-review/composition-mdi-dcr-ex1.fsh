Instance: composition-mdi-dcr-ex1
InstanceOf: CompositionMDIDCR
Usage: #example
Title: "Death Certificate Review example for death data review request (example 1)"
Description: "Death Certificate Review for death data review request"
* extension[ExtensionTrackingNumber]
  * valueIdentifier
    * type = $v2-0203#DCFN
    * value = "123456"
* extension[ExtensionDeathCertificateStatus]
  * extension[DCcertification].valueCodeableConcept = DeathCertReviewExample#DEATH_CERT_CERT "Certified"
  * extension[DCregistration].valueCodeableConcept = DeathCertReviewExample#DEATH_CERT_NOT_REG "Not Registered"
//*  extension[ExtensionCremationClearanceStatus].valueCodeableConcept = DeathCertReviewExample#CREM_C_REQUESTED "Requested"
//*  extension[ExtensionMECertificationAffirmation].valueCodeableConcept = DeathCertReviewExample#ME_AFFIRM_CERTIFICATION_AFFIRMED "ME Certification Affirmation Affirmed"
//*  extension[ExtensionCremationClearanceCoroner].valueCodeableConcept = $sct#385432009 "Not applicable"
//*  extension[ExtensionCremationClearanceSignature].valueCodeableConcept = DeathCertReviewExample#CREM_C_UNSIGNED "Unsigned"
//
* status = #final
* type = MDIcodes#death-certificate-data-review-doc "Death Certificate Data Review Document"
* subject = Reference(vrdr-decedent-dcr-ex1)
* date = "2023-05-02"
* author = Reference(us-core-organization-ga-dph)
* title = "Death Certificate Review request for death data quality"
//
* section[DecedentDemographics]
  * insert addNamedEntryComposition(Decedent, Patient, vrdr-decedent-dcr-ex1) 
  * insert addNamedEntryComposition(Father, RelatedPerson, vrdr-decedent-father-dcr-ex1) 
  * insert addNamedEntryComposition(Mother, RelatedPerson, vrdr-decedent-mother-dcr-ex1) 
  * insert addNamedEntryComposition(Age, Observation, vrdr-decedent-age-dcr-ex1) 
  * insert addNamedEntryComposition(EducationLevel, Observation, vrdr-decedent-education-level-dcr-ex1) 
  * insert addNamedEntryComposition(MilitaryService, Observation, vrdr-decedent-military-service-dcr-ex1) 
// Usual work creates error here. Review and add back after VRDR publishes in 2024 = vrdr-decedent-usual-work-dcr-ex1
//
* section[DeathInvestigation]
  * insert addNamedEntryComposition(ExaminerContacted, Observation, vrdr-examiner-contacted-dcr-ex1)
  * insert addNamedEntryComposition(PregnancyStatus, Observation, vrdr-decedent-pregnancy-status-dcr-ex1)
  * insert addNamedEntryComposition(TobaccoUse, Observation, vrdr-tobacco-use-dcr-ex1)
  * insert addNamedEntryComposition(DeathLocation, Location, vrdr-death-location-dcr-ex1)
  * insert addNamedEntryComposition(InjuryLocation, Location, vrdr-injury-location-dcr-ex1)
  * insert addNamedEntryComposition(InjuryIncident, Observation, vrdr-injury-incident-dcr-ex1)
  * insert addNamedEntryComposition(Autopsy, Observation, vrdr-autopsy-performed-indicator-dcr-ex1)
  * insert addNamedEntryComposition(DeathDate, Observation, vrdr-death-date-dcr-ex1)
//  * insert addentry(Practitioner, us-core-practitioner-dcr-ex1)
//  Should decide on interested-party-ccr-ex1
//
* section[DeathCertification]
  * insert addNamedEntryComposition(Certifier, Practitioner, vr-practitioner-ex1)
  * insert addNamedEntryComposition(DeathCertification, Procedure, vrdr-death-certification-dcr-ex1)
  * insert addNamedEntryComposition(MannerOfDeath, Observation, vrdr-manner-of-death-dcr-ex1)
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, vrdr-cause-of-death-part1-dcr-ex1)
  * insert addNamedEntryComposition(CauseOfDeathPart2, Observation, vrdr-cause-of-death-part2-dcr-ex1)
//
* section[DecedentDisposition]
  * insert addNamedEntryComposition(DispositionLocation, Location, vrdr-disposition-location-dcr-ex1)
  * insert addNamedEntryComposition(FuneralHome, Organization, vrdr-funeral-home-dcr-ex1)
  * insert addNamedEntryComposition(DispositionMethod, Observation, vrdr-decedent-disposition-method-dcr-ex1)
  * insert addNamedEntryComposition(Mortician, Practitioner, vrdr-mortician-dcr-ex1)
// 
//* section[death-certificate-data-review]
//  * insert addNamedEntryComposition(med-info-quality-review, Observation, observation-medical-information-data-quality-ccr-ex1)
//  * insert addNamedEntryComposition(personal-info-quality-review, Observation, observation-personal-information-data-quality-ccr-ex1)
//
//* section[cremation-clearance-info]
//  * insert addNamedEntryComposition(authorizing-agent, RelatedPerson, vrdr-decedent-father-dcr-ex1)
//  * insert addNamedEntryComposition(embalmed, Observation, observation-embalmed-ccr-ex1)
//  * insert addNamedEntryComposition(communicable-disease, Observation, observation-communicable-disease-ccr-ex1)
//  * insert addNamedEntryComposition(cause-of-death-certifier, Practitioner, vrdr-certifier-dcr-ex1)
//  * insert addNamedEntryComposition(funeral-home, Organization, vrdr-funeral-home-dcr-ex1)
//  * insert addNamedEntryComposition(mortician, Practitioner, vrdr-mortician-dcr-ex1)
