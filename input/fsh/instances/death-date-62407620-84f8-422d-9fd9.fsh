Instance: death-date-62407620-84f8-422d-9fd9
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Date"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* extension.valueReference = Reference(urn:uuid:death-location-3b957cd9-6c41-41eb-95cd)
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* effectiveDateTime.extension[0].extension.url = "long"
* effectiveDateTime.extension[=].extension.valueString = "202304240100"
* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* effectiveDateTime.extension[+].extension.url = "time"
* effectiveDateTime.extension[=].extension.valueString = "AM"
* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* effectiveDateTime = "2023-04-24T01:00:00-04:00"
* performer = Reference(urn:uuid:certifier-70a8036d-911f-4cb8-853f)
* valueDateTime.extension[0].extension.url = "long"
* valueDateTime.extension[=].extension.valueString = "202304240100"
* valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* valueDateTime.extension[+].extension.url = "time"
* valueDateTime.extension[=].extension.valueString = "AM"
* valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* valueDateTime = "2023-04-24T01:00:00-04:00"
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component.valueDateTime.extension[0].extension.url = "long"
* component.valueDateTime.extension[=].extension.valueString = "202304241400"
* component.valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* component.valueDateTime.extension[+].extension.url = "time"
* component.valueDateTime.extension[=].extension.valueString = "PM"
* component.valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* component.valueDateTime = "2023-04-24T14:00:00-04:00"