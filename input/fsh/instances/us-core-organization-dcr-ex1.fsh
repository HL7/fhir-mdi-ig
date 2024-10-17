Instance: us-core-organization-dcr-ex1
InstanceOf: USCoreOrganizationProfile
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://Tahoe.Web/Insurity.Tahoe.Organization.Entity.BusinessUnitCode"
* identifier.value = "STATE_MEDICAL_EXAMINER_OFFICE_STATE_MEDICAL_EXAMIN"
* active = true
* name = "Office of Chief Medical Examiner"
* address.line = "11 Shuttle Road"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "11"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Shuttle"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "Road"
* address.city = "BARRETT PARKWAY"
//* address.state = "Georgia"
* address.state = "GA"
//* address.country = "United States"
* address.country = "US"