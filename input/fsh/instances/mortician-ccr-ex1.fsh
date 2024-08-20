Instance: mortician-ccr-ex1
InstanceOf: Mortician
Usage: #example
//* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
// Need identifier system
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
//* identifier.value = "1996"
* identifier.value = "199612AB"
* name.use = #official
* name.family = "Byles"
* name.given[0] = "Donald"
* name.given[+] = "W"