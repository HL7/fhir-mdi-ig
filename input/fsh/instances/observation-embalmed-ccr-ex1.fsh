Instance: observation-embalmed-ccr-ex1
InstanceOf: ObservationEmbalmed
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-embalmed"
* status = #final
* code = CsDeathCertReviewExample#Embalmed "Embalmed Observation"
* subject = Reference(decedent-ccr-ex1)
* valueCodeableConcept = $sct#373067005 "No"
* valueCodeableConcept.text = "No"