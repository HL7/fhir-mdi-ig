Instance: us-core-lab-result-fentanyl-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Fentanyl Urine Freeman"
Description: "Observation - Toxicology Lab Result: Fentanyl Urine Freeman example"
Usage: #example

* status = #final
* code = $loinc#11235-9 "fentaNYL [Presence] in Urine"
  * text = "fentaNYL [Presence] in Urine"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"