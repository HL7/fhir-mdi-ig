Profile: ObservationEmbalmed
Parent: Observation
Id: Observation-embalmed
Title: "Observation - Embalmed"
Description: "This Observation profile indicates if the decedent body was embalmed."
* code only CodeableConcept
* code = CodeSystemMDI#Embalmed
  * ^short = "Embalmed Observation"
* subject 1..1
* subject 1..1
* subject only Reference(Decedent)
* value[x] only boolean or CodeableConcept
* note MS
