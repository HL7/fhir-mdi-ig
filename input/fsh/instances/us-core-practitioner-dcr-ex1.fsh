Instance: uscore-practitioner-dcr-ex1
InstanceOf: USCorePractitionerProfile
Usage: #example
// death-pronouncement-performer
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567"
* name.use = #official
* name.family = "Doctor"
* name.given = "Lm"
* qualification.code = $sct#309343006 "Medical doctor"
* qualification.code.text = "Medical doctor"