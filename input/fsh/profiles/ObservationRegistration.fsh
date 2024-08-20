Profile: ObservationRegistration
Parent: Observation
Id: Observation-registration
Title: "Observation - Registration"
Description: "This Observation profile describes TBD."
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] only boolean or CodeableConcept