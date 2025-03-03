Extension: ExtensionDeathCertificateStatus
Id: Extension-death-certificate-status
Title: "Extension - Death Certificate Status"
Description: "This Extension indicates Death Certificate workflow status."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* extension contains
    DCcertification 0..1 and
    DCregistration 0..1
* extension[DCcertification] 
  * ^short = "Death Certificate certification status"
  * ^definition = "Death Certificate certification status"
  * value[x] 0..1
  * value[x] only CodeableConcept
  * value[x] from VSCertifiedWorkflow (example)
* extension[DCregistration] 
  * ^short = "Death Certificate registration status"
  * ^definition = "Death Certificate registration status"
  * value[x] 0..1
  * value[x] only CodeableConcept
  * value[x] from VSRegistration (example)