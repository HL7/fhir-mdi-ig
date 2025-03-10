Profile: ObservationCommunicableDisease
Parent: Observation
Id: Observation-communicable-disease
Title: "Observation - Communicable Disease"
Description: "Observation indicating if the decedent body harbors a communicable disease."
* code only CodeableConcept
* code = MDIcodes#communicable-disease-obs
  * ^short = "Communicable Disease Observation"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-yes-no-unknown-vr
* note
  * ^short = "Use Observation.note for additional information about the communicable disease"
  * ^definition = "Additional information about the communicable disease"
