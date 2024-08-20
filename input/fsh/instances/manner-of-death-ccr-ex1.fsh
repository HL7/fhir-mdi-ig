Instance: manner-of-death-ccr-ex1
InstanceOf: MannerOfDeath
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject = Reference(decedent-ccr-ex1)
* performer = Reference(certifier-ccr-ex1)
* valueCodeableConcept = $sct#27935005 "Homicide"
* valueCodeableConcept.text = "Homicide"