Profile: ObservationMedicalInformationDataQuality
Parent: Observation
Id: Observation-medical-information-data-quality
Title: "Observation - Medical Information Data Quality"
Description: "Observation describing the medical information data quality findings that result from a death certificate review. The value[x] (CodeableConcept) is the medical information data quality review conclusion. Use the Observation.note for details."
* code only CodeableConcept
* code = MDIcodes#med-info-data-quality-obs
  * ^short = "Medical Information Data Quality Observation"
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSMedDQReview (example)
  * ^short = "Medical information data quality review conclusion."
* note MS