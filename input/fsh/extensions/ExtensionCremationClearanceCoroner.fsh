Extension: ExtensionCremationClearanceCoroner
Id: Extension-cremation-clearance-coroner
Title: "Extension - Cremation Clearance Coroner Status"
Description: "This Extension indicates whether the Cremation Clearance is a coroner workflow or not."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-yes-no-unknown-vr