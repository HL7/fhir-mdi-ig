Extension: ExtensionCremationClearanceStatus
Id: Extension-cremation-clearance-status
Title: "Extension - Cremation Clearance Authorization Status"
Description: "This Extension indicates the authorization status of the Cremation Clearance."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSCCStatus (example)