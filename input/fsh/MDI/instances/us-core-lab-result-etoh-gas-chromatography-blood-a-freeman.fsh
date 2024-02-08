Instance: us-core-lab-result-etoh-gas-chromatography-blood-a-freeman
InstanceOf: ObservationToxicologyLabResult
Title: "Observation - Toxicology Lab Result - Ethanol Blood Freeman"
Description: "Observation - Toxicology Lab Result: Ethanol Blood Freeman example"
Usage: #example
* status = #final
* code = $loinc#56478-1 "Ethanol [Mass/volume] in Blood by Gas chromatography"
  * text = "Ethanol [Mass/volume] in Blood by Gas chromatography"
* subject = Reference(us-core-patient-a-freeman) "Alice J. Freeman"
* effectiveDateTime = "2021-12-03"
* valueString = "0.145 g/dL"
* specimen.reference = "Specimen/specimen-blood-toxicology-a-freeman"