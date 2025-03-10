Extension: ExtensionMECertificationAffirmation
Id: Extension-me-certification-affirmation
Title: "Extension - Medical Examiner Certification Affirmation"
Description: "This Extension indicates whether the Medical Examiner certification has been affirmed or not."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from VSMECertAffirmation (extensible)