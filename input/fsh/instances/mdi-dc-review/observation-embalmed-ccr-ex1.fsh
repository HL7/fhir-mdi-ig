Instance: observation-embalmed-ccr-ex1
InstanceOf: ObservationEmbalmed
Title: "Observation - Embalmed example"
Description: "Observation - Embalmed example"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-embalmed"
* status = #final
// * code = DeathCertReviewExample#Embalmed "Embalmed Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* effectiveDateTime = "2023-05-02"
* performer = Reference(us-core-organization-ga-dph)
* valueCodeableConcept = $sct#373067005 "No"
* valueCodeableConcept.text = "No"