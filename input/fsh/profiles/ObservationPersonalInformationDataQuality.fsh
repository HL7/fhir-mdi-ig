Profile: ObservationPersonalInformationDataQuality
Parent: Observation
Id: Observation-personal-information-data-quality
Title: "Observation - Personal Information Data Quality"
Description: "This Observation profile describes TBD."
* code only CodeableConcept
* code = MDIcodes#PersonalInformationDataQuality
  * ^short = "Personal Information Data Quality Observation"
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSPerDQReviewEx (example)
  * ^short = "Personal information data quality review conclusion."
* note MS