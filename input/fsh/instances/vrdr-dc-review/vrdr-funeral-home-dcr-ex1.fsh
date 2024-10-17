Instance: vrdr-funeral-home-dcr-ex1
InstanceOf: FuneralHome
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home"
* identifier.value = "139"
* active = true
* type = OrganizationTypeCS#funeralhome "Funeral Home"
* name = "Byles-Macdougall Funeral Service (New London)"
* address.line = "88 Huntington St"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "88"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Huntington"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "St"
* address.city = "Kennesaw"
//* address.state = "Georgia"
* address.state = "GA"
* address.postalCode = "30144"
* address.country = "US"
//* address.country = "United States"