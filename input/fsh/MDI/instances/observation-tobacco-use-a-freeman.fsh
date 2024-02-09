Instance: observation-tobacco-use-a-freeman
InstanceOf: TobaccoUseContributedToDeath
Title: "Observation - Tobacco Use - Freeman"
Description: "Observation - Tobacco Use: Freeman example"
Usage: #example
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime = "2019-12-02"
* performer = Reference(us-core-practitioner-s-jones)
* valueCodeableConcept = $sct#373067005 "No"