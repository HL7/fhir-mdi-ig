Instance: vrdr-injury-location-dcr-ex1
InstanceOf: InjuryLocation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-location"
* name = "Home"
* address.line = "1 Two Street"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Two"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "Street"
* address.city = "Kennesaw"
* address.district = "COBB"
//* address.state = "Georgia"
* address.state = "GA"
* address.postalCode = "30144"
//* address.country = "United States"
* address.country = "US"