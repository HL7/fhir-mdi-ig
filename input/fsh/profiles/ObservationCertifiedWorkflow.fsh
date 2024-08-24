Profile: ObservationCertifiedWorkflow
Parent: Observation
Id: Observation-certified-workflow
Title: "Observation - Certified Workflow"
Description: "This Observation profile describes the Death Certificate certification workflow status."
* code only CodeableConcept
* code = CodeSystemMDI#CertifiedWorkflow
  * ^short = "Certified Workflow Observation"
* subject 1..1
* subject only Reference(Decedent)
* focus 1..1
* focus only Reference(DeathCertificate)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSCertifiedWorkflowEx (example)
  * ^short = "Example Death Certificate certification workflow status codes"
* note MS