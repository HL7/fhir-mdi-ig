Instance: vrdr-cause-of-death-part2-dcr-ex1
InstanceOf: CauseOfDeathPart2
Title: "VRDR Cause of Death Part 2"
Description: "Example of VRDR Cause of Death Part 2 (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* status = #final
* valueCodeableConcept.text = "Arteriosclerosis"
* subject = Reference(vrdr-decedent-dcr-ex1)
* performer = Reference(vrdr-certifier-dcr-ex1)