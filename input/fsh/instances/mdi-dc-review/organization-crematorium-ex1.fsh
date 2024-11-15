Instance: organization-crematorium-ex1
InstanceOf: OrganizationCrematorium
Title: "Organization – Crematorium example"
Description: "Example of Organization - Crematorium"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Organization-crematorium"
* identifier.system = "http://Tahoe.Web/Insurity.Tahoe.Organization.Entity.BusinessUnitCode"
* identifier.value = "State Crematorium"
* active = true
* name = "State Crematorium"
* address.line = "100 Industrial Road"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "100"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Industrial"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "Road"
* address.city = "BARRETT"
* address.state = "GA"
* address.country = "US"