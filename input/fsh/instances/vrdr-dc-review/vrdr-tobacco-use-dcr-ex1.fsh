Instance: vrdr-tobacco-use-dcr-ex1
InstanceOf: TobaccoUseContributedToDeath
Title: "VRDR Tobacco Use Contributed To Death"
Description: "Example of VRDR Tobacco Use Contributed To Death (Observation) for death certificate review examples"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-tobacco-use-contributed-to-death"
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"
* valueCodeableConcept.text = "Unknown"