Instance: observation-communicable-disease-ccr-ex1
InstanceOf: ObservationCommunicableDisease
Title: "Observation - Communicable Disease example"
Description: "Observation - Communicable Disease example"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-communicable-disease"
* status = #final
// * code = DeathCertReviewExample#CommunicableDisease "Communicable Disease Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* effectiveDateTime = "2023-05-02"
* performer = Reference(us-core-organization-ga-dph)
* valueBoolean = false