Instance: messageheader-mdi-dcr-ex1
InstanceOf: MessageHeaderDCR
Title: "MessageHeader - Death Certificate Review example"
Description: "MessageHeader - Death Certificate Review example"
Usage: #example
* eventCoding = MDIcodes#death-certificate-review-event
* source
  * name = "State VRO"
  * software = "EDRS"
  * version = "1.2.3.4.5"
//  * contact
//    * system = #phone
//    * value = "+1 (555) 123 4567"
  * endpoint = "http://edrs-example.org/fhir/endpoint/1"
* reason = DeathCertReviewExample#CREM_C_REQ "Cremation Clearance Request"
//* response
//  * identifier = "5015fe84-8e76-4526-89d8-44b322e8d4fb"
//  * code = #ok
* focus = Reference(bundle-doc-mdi-dcr-ex1)