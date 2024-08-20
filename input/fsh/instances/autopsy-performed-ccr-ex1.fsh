Instance: autopsy-performed-ccr-ex1
InstanceOf: AutopsyPerformedIndicator
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(decedent-ccr-ex1)
* valueCodeableConcept = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Yes"
* component.code = $loinc#69436-4 "Autopsy results available"
* component.valueCodeableConcept = $v2-0136#Y "Yes"
//* component.valueCodeableConcept.text = "Yes"