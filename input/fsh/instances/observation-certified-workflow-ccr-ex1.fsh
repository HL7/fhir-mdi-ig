Instance: observation-certified-workflow-ccr-ex1
InstanceOf: ObservationCertifiedWorkflow
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-certified-workflow"
* status = #final
* code = CsCremationClearanceExample#CertifiedWorkflow "Certified Workflow Observation"
* subject = Reference(decedent-ccr-ex1)
* focus = Reference(death-certificate-ccr-ex1)
* valueCodeableConcept = CsCremationClearanceExample#DEATH_CERT_NOT_CERT "Not Certified"
* valueCodeableConcept.text = "Not Certified"