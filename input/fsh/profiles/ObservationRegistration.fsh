Profile: ObservationRegistration
Parent: Observation
Id: Observation-registration
Title: "Observation - Registration"
Description: "This Observation profile describes Death Certificate registration status."
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSRegistrationEx (example)
  * ^short = "Example Death Certificate registration status codes"
* note MS