Instance: injury-incident-a6018f87-33ab-419b-8ab3
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-InjuryIncident"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* extension.valueReference = Reference(urn:uuid:injury-location-b7eb43f3-54c7-4156-8d62)
* status = #final
* code = $loinc#11374-6 "Injury incident description"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* effectiveDateTime.extension[0].extension[0].url = "unknowntime"
* effectiveDateTime.extension[=].extension[=].valueBoolean = true
* effectiveDateTime.extension[=].extension[+].url = "long"
* effectiveDateTime.extension[=].extension[=].valueString = "200001019999"
* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* effectiveDateTime.extension[+].extension.url = "time"
* effectiveDateTime.extension[=].extension.valueString = "Unknown"
* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* effectiveDateTime = "2000-01-01"
* valueString = "shot by other"
* component[0].code = $loinc#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = $v2-0136#N "No"
* component[=].valueCodeableConcept.text = "No"
* component[+].code = $loinc#69450-5 "Place of injury Facility"
* component[=].valueCodeableConcept = $fhir#14 "Other building"
* component[=].valueCodeableConcept.text = "Other building"