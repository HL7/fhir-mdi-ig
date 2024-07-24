Instance: examiner-contacted-582f8d1a-7807-4705-b92f
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Examiner-Contacted"
* status = #final
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* valueCodeableConcept = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Yes"
* component.code = $loinc#69452-1 "Coroner - medical examiner case number"
* component.valueString = "23-00083"