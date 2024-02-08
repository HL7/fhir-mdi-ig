Instance: us-core-lab-result-acetylfentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Acetylfentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Acetylfentanyl Urine Freeman example"
Usage: #example
* status = #final
* code = $loinc#74810-3 "Acetyl fentanyl [Presence] in Urine by Confirmatory method"
  * text = "Acetyl fentanyl [Presence] in Urine by Confirmatory method"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"