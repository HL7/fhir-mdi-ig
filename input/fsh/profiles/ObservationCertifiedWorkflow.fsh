Profile: ObservationCertifiedWorkflow
Parent: Observation
Id: Observation-certified-workflow
Title: "Observation - Certified Workflow"
Description: "This Observation profile describes TBD."
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] only CodeableConcept