Profile: ObservationMedicalInformationDataQuality
Parent: Observation
Id: Observation-medical-information-data-quality
Title: "Observation - Medical Information Data Quality"
Description: "This Observation profile describes TBD."
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] only boolean or CodeableConcept