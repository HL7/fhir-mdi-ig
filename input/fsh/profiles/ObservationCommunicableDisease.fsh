Profile: ObservationCommunicableDisease
Parent: Observation
Id: Observation-communicable-disease
Title: "Observation - Communicable Disease"
Description: "Observation indicating if the decedent body harbors a communicable disease."
* code only CodeableConcept
* code = MDIcodes#CommunicableDisease
  * ^short = "Communicable Disease Observation"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only boolean or CodeableConcept