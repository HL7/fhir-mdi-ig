Instance: observation-decedent-pregnancy-a-freeman
InstanceOf: DecedentPregnancyStatus
Title: "Observation - Decedent Pregnancy - Freeman"
Description: "Observation - Decedent Pregnancy: Freeman example"
Usage: #example
* status = #final
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime = "2022-02-19"
* performer = Reference(us-core-practitioner-jm-lehz)
  * display = "J.M. Lehz"
* valueCodeableConcept = $v3-NullFlavor#NA "not applicable"