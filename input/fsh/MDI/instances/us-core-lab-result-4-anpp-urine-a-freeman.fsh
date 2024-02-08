Instance: us-core-lab-result-4-anpp-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - 4-anpp Urine Freeman"
Description: "Observation - Toxicology Lab Result: 4-anpp Urine Freeman example"
Usage: #example
* status = #final
* code = $loinc#11072-6 "Despropionylfentanyl [Mass/volume] in Serum or Plasma"
  * text = "Despropionylfentanyl [Mass/volume] in Serum or Plasma"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"