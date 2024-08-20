Instance: certifier-ccr-ex1
InstanceOf: Certifier
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* identifier.value = "987654"
* name.use = #official
* name.family = "Examiner"
* name.given[0] = "Medical"
* name.given[+] = "A"
* address.city = "Kennesaw"
* address.state = "GA"
//* address.state = "Georgia"
* address.postalCode = "30144"
//* address.country = "United States"
* address.country = "US"
//* qualification.code = CsCremationClearanceExample #AME "Assistant Medical Examiner"
//* qualification.code.text = "Assistant Medical Examiner"