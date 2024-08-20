Extension: ExtensionCremationClearanceCoroner
Id: Extension-cremation-clearance-coroner
Title: "Extension - Cremation Clearance Coroner Status"
Description: "This Extension indicates whether the Cremation Clearance is a Cononer workflow or not."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 0..1
* value[x] only CodeableConcept