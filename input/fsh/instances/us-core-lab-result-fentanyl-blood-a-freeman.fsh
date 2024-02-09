Instance: us-core-lab-result-fentanyl-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Fentanyl Blood Freeman"
Description: "Observation  - Toxicology Lab Result: Fentanyl Blood Freeman example"
Usage: #example

* status = #final

* code = $loinc#73938-3 "fentaNYL [Mass/volume] in Blood by Confirmatory method"
  * text = "fentaNYL [Mass/volume] in Blood by Confirmatory method"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "23 ng/mL"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"