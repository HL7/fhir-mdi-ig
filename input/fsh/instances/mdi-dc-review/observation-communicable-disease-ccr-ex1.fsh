Instance: observation-communicable-disease-ccr-ex1
InstanceOf: ObservationCommunicableDisease
Title: "Observation - Communicable Disease - ex1"
Description: "Observation - Communicable Disease: example 1"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-communicable-disease"
* status = #final
// * code = CsDeathCertReviewExample#CommunicableDisease "Communicable Disease Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueBoolean = false