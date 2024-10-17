Instance: vrdr-cause-of-death-part2-dcr-ex1
InstanceOf: CauseOfDeathPart2
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* status = #final
* valueCodeableConcept.text = "Arteriosclerosis"
* subject = Reference(vrdr-decedent-dcr-ex1)
* performer = Reference(vrdr-certifier-dcr-ex1)