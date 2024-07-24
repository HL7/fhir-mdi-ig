Instance: autopsy-performed-3cd47871-819b-4718-b9a1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Autopsy-Performed-Indicator"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* valueCodeableConcept = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Yes"
* component.code = $loinc#69436-4 "Autopsy results available"
* component.valueCodeableConcept = $v2-0136#Y "Yes"
* component.valueCodeableConcept.text = "Yes"