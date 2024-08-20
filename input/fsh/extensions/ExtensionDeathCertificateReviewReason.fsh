Extension: ExtensionDeathCertificateReviewReason
Id: Extension-death-certificate-review-reason
Title: "Extension - Death Certificate Review Reason"
Description: "This Extension indicates the reason for the death certificate review."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VSDCRreasonEx (example)