Instance: vrdr-examiner-contacted-dcr-ex1
InstanceOf: ExaminerContacted
Title: "VRDR Examiner Contacted"
Description: "Example of VRDR Examiner Contacted (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-examiner-contacted"
* status = #final
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Yes"
* component.code = $loinc#69452-1 "Coroner - medical examiner case number"
* component.valueString = "23-00083"