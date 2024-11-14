Instance: vrdr-decedent-military-service-dcr-ex1
InstanceOf: DecedentMilitaryService
Title: "VRDR Decedent Military Service"
Description: "Example of VRDR Decedent Military Service (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-military-service"
* status = #final
* code = $loinc#55280-2 "Military service Narrative"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $v2-0136#N "No"
* valueCodeableConcept.text = "No"