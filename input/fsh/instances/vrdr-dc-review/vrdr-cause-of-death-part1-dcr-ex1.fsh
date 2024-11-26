Instance: vrdr-cause-of-death-part1-dcr-ex1
InstanceOf: CauseOfDeathPart1
Title: "VRDR Cause Of Death Part 1"
Description: "Example of VRDR Cause Of Death Part 1 (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* status = #final
* valueCodeableConcept.text = "Gunshot Wound of Head"
* subject = Reference(vrdr-decedent-dcr-ex1)
* component[lineNumber].valueInteger = 1
* component[interval].valueString = "1 hour"