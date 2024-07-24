Instance: manner-of-death-aa03e6a9-b5ac-430f-9f21
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Manner-of-Death"
* extension.url = "http://example-edrs.org/fhir/StructureDefinition/communicable-disease"
* extension.valueCodeableConcept = $fhir#N "No"
* extension.valueCodeableConcept.text = "No"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* performer = Reference(urn:uuid:certifier-70a8036d-911f-4cb8-853f)
* valueCodeableConcept = $sct#27935005 "Homicide"
* valueCodeableConcept.text = "Homicide"