Instance: us-core-lab-result-acetylfentanyl-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Acetylfentanyl Blood Freeman"
Description: "Observation - Toxicology Lab Result: Acetylfentanyl Blood Freeman example"
Usage: #example
* status = #final
* code = $loinc#86223-5 "Acetyl norfentanyl [Mass/volume] in Serum, Plasma or Blood by Confirmatory method"
  * text = "Acetyl norfentanyl [Mass/volume] in Serum, Plasma or Blood by Confirmatory method"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "2 ng/ml"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"