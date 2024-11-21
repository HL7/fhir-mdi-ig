Instance: vr-practitioner-ex1
InstanceOf: Practitioner-vr
Title: "VR Practitioner"
Description: "Example of VR Practitioner for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Practitioner-vr"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "456789"
* name.use = #official
* name.family = "Examiner"
* name.given[0] = "Medical"
* name.given[+] = "B"
* address.city = "Kennesaw"
* address.state = "GA"
//* address.state = "Georgia"
* address.postalCode = "30144"
//* address.country = "United States"
* address.country = "US"
//* qualification.code = CsCremationClearanceExample #AME "Assistant Medical Examiner"
//* qualification.code.text = "Assistant Medical Examiner"