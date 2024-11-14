Instance: vrdr-manner-of-death-dcr-ex1
InstanceOf: MannerOfDeath
Title: "VRDR Manner of Death"
Description: "Example of VRDR Mortician (Practitioner) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject = Reference(vrdr-decedent-dcr-ex1)
* performer = Reference(vrdr-certifier-dcr-ex1)
* valueCodeableConcept = $sct#27935005 "Homicide"
* valueCodeableConcept.text = "Homicide"