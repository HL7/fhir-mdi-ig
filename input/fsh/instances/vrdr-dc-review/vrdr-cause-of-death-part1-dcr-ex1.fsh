Instance: cause-of-death-ccr-ex1
InstanceOf: CauseOfDeathPart1
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* status = #final
* valueCodeableConcept.text = "Gunshot Wound of Head"
* subject = Reference(vrdr-decedent-dcr-ex1)
* component[lineNumber].valueInteger = 1
* component[interval].valueString = "1 year"