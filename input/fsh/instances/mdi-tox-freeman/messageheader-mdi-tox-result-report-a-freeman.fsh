Instance: messageheader-mdi-tox-result-report-a-freeman
InstanceOf: MessageHeaderToxicologyToMDI
Title: "MessageHeader - Toxicology to MDI - Freeman"
Description: "MessageHeader - Toxicology to MDI: Freeman example"
Usage: #example
* eventCoding = CodeSystemMDI#tox-result-report
* source
  * name = "University of Florida Pathology Labs, Forensic Toxicology Laboratory"
  * software = "MDI Log"
  * version = "1.2.3.4.5"
  * contact
    * system = #phone
    * value = "+1 (555) 123 4567"
  * endpoint = "http://mdi-log.org/fhir/endpoint/1"
* response
  * identifier = "5015fe84-8e76-4526-89d8-44b322e8d4fb"
  * code = #ok
* focus = Reference(diagnosticreport-mdi-toxicology-lab-a-freeman)