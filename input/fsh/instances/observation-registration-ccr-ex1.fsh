Instance: observation-registration-ccr-ex1
InstanceOf: ObservationRegistration
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-registration"
* status = #preliminary
* code = CsCremationClearanceExample#Registration "Registration Observation"
* subject = Reference(decedent-ccr-ex1)
* focus = Reference(death-certificate-ccr-ex1)
* valueCodeableConcept = CsCremationClearanceExample#DEATH_CERT_NOT_REG "Not Registered"
* valueCodeableConcept.text = "Not Registered"