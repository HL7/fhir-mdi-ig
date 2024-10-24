Instance: observation-embalmed-ccr-ex1
InstanceOf: ObservationEmbalmed
Title: "Observation - Embalmed - ex1"
Description: "Observation - Embalmed: example 1"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-embalmed"
* status = #final
// * code = CsDeathCertReviewExample#Embalmed "Embalmed Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $sct#373067005 "No"
* valueCodeableConcept.text = "No"