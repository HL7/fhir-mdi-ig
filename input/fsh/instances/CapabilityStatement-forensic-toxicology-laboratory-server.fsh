Instance: CapabilityStatement-forensic-toxicology-laboratory-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement - Forensic Toxicology Laboratory Server"
Description: "This resource describes the expected capabilities of the toxicology lab Server actor which is responsible for providing responses to the queries submitted by toxicology lab Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by toxicology lab Servers are defined. toxicology lab Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* name = "CapabilityStatementForensicToxicologyLaboratoryServer"
* title = "CapabilityStatement - Forensic Toxicology Laboratory Server"
* status = #active
* experimental = false
* date = "2022-07-03"
* description = "This resource describes the expected capabilities of the toxicology lab Server actor which is responsible for providing responses to the queries submitted by toxicology lab Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by toxicology lab Servers are defined. toxicology lab Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* messaging.supportedMessage
  * mode = #sender
  * definition = Canonical(MessageDefinition-toxicology-system)