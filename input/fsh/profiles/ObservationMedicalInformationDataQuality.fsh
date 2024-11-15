Profile: ObservationMedicalInformationDataQuality
Parent: Observation
Id: Observation-medical-information-data-quality
Title: "Observation - Medical Information Data Quality"
Description: "This Observation profile describes TBD."
* code only CodeableConcept
* code = MDIcodes#MedicalInformationDataQuality
  * ^short = "Medical Information Data Quality Observation"
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSMedDQReviewEx (example)
  * ^short = "Medical information data quality review conclusion."
* note MS