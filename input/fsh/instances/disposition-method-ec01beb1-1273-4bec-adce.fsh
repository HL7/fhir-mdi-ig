Instance: disposition-method-ec01beb1-1273-4bec-adce
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Disposition-Method"
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location"
* extension[=].valueReference = Reference(urn:uuid:disposition-location-ecf38a17-064e-4c85-a364)
* extension[+].url = "http://example-edrs.org/fhir/StructureDefinition/embalmed"
* extension[=].valueBoolean = false
* status = #final
* code = $loinc#80905-3 "Body disposition method"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* effectiveDateTime.extension.extension.url = "long"
* effectiveDateTime.extension.extension.valueString = "202304296666"
* effectiveDateTime.extension.url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* effectiveDateTime = "2023-04-29"
* performer = Reference(urn:uuid:mortician-a1f448af-6f76-4d6f-8df8)
* valueCodeableConcept = $id_1#449961000124104 "Patient status determination, deceased and cremated"
* valueCodeableConcept.text = "Cremation"