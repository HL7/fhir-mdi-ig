Extension: ExtensionCremationClearanceSignature
Id: Extension-cremation-clearance-signature
Title: "Cremation Clearance Signature Status"
Description: "This Extension indicates whether the Cremation Clearance has been signed or not."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from VSSigStatus (extensible)