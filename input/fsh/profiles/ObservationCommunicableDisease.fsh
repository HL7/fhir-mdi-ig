Profile: ObservationCommunicableDisease
Parent: Observation
Id: Observation-communicable-disease
Title: "Observation - Communicable Disease"
Description: "This Observation profile describes TBD."
* code only CodeableConcept
* code = CodeSystemMDI#CommunicableDisease
  * ^short = "Communicable Disease Observation"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only boolean or CodeableConcept