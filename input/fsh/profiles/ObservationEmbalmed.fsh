Profile: ObservationEmbalmed
Parent: Observation
Id: Observation-embalmed
Title: "Observation - Embalmed"
Description: "Observation indicating if the decedent body was embalmed."
* code only CodeableConcept
* code = MDIcodes#embalmed-obs
  * ^short = "Embalmed Observation"
* subject 1..1
* subject 1..1
* subject only Reference(Decedent)
* value[x] only boolean or CodeableConcept
* note MS
