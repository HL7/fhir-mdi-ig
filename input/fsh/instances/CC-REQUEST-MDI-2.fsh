Instance: CC-REQUEST-MDI-2
InstanceOf: BundleDocumentMDICCRR
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Bundle-document-mdi-ccr"
* identifier.extension[0].url = "http://example-edrs.org/fhir/StructureDefinition/dave-case-id"
* identifier.extension[=].valueInteger = 12782
* identifier.extension[+].url = "http://example-edrs.org/fhir/StructureDefinition/external-case-id"
* identifier.extension[=].valueString = "554160"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "000182"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2023CT000000"
* type = #document
* entry[0].fullUrl = "urn:uuid:death-certificate-004c3928-acad-4942-9d16"
* entry[=].resource = death-certificate-004c3928-acad-4942-9d16
* entry[+].extension.url = "http://example-edrs.org/fhir/contextattributecode"
* entry[=].extension.valueString = "PAGE_PLACE_OF_DEATH_REGISTRATION_CUSTOM_SYSTEM_CODE_ID1"
* entry[=].fullUrl = "urn:uuid:ccr-observation-controltype-13fa9922-c3ac-4052-991e"
* entry[=].resource = ccr-observation-controltype-13fa9922-c3ac-4052-991e
* entry[+].extension.url = "http://example-edrs.org/fhir/taskcode"
* entry[=].extension.valueString = "TASK_INDIVIDUAL_AUTHORIZING_CREMATION"
* entry[=].fullUrl = "urn:uuid:ccr-relatedperson-cfb860e4-777e-4946-aa2e"
* entry[=].resource = ccr-relatedperson-cfb860e4-777e-4946-aa2e