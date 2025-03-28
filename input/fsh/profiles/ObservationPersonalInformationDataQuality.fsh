Profile: ObservationPersonalInformationDataQuality
Parent: Observation
Id: Observation-personal-information-data-quality
Title: "Observation - Personal Information Data Quality"
Description: "Observation describing the personal information data quality findings that result from a death certificate review. The value[x] (CodeableConcept) is the personal information data quality review conclusion. Use the Observation.note for details."
* code only CodeableConcept
* code = MDIcodes#personal-info-data-quality-obs
  * ^short = "Personal Information Data Quality Observation"
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSPerDQReview (example)
  * ^short = "Personal information data quality review conclusion."
* note MS