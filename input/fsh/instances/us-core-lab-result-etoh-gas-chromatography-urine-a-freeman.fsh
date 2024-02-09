Instance: us-core-lab-result-etoh-gas-chromatography-urine-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Ethanol Urine Freeman"
Description: "Observation - Toxicology Lab Result: Ethanol Urine Freeman example"
Usage: #example

* status = #final
* code = $loinc#46983-3 "Ethanol [Mass/volume] in Urine by Confirmatory method"
  * text = "Ethanol [Mass/volume] in Urine by Confirmatory method"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "true"
* specimen.reference = "Specimen/specimen-urine-toxicology-a-freeman"