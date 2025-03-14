Instance: vrdr-certifier-dcr-ex1
InstanceOf: Certifier
Title: "VRDR Death Certifier"
Description: "Example of VRDR Death Certifier (Practitioner) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
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