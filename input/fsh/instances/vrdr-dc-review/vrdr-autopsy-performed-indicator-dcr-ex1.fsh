Instance: vrdr-autopsy-performed-indicator-dcr-ex1
InstanceOf: AutopsyPerformedIndicator
Title: "VRDR Autopsy Performed Indicator"
Description: "Example of VRDR Autopsy Performed Indicator (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Yes"
* component.code = $loinc#69436-4 "Autopsy results available"
* component.valueCodeableConcept = $v2-0136#Y "Yes"
//* component.valueCodeableConcept.text = "Yes"