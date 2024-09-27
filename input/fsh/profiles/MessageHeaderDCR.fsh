Profile: MessageHeaderDCR
Parent: MessageHeader
Id: MessageHeader-death-certificate-review
Title: "MessageHeader - Death Certificate Review"
Description: "This MessageHeader identifies a Death Certificate Review document bundle and additional review information."

* ^status = #active
* . ^short = "Identifies a Death Certificate Review document bundle and additional review information."
  * ^definition = "Identifies a Death Certificate Review document bundle and additional review information."
//
* extension contains ExtensionDeathCertificateStatus named Extension-death-certificate-status 0..*
* extension[Extension-death-certificate-status] 
  * ^short = "Death Certificate workflow status"
  * ^definition = "Death Certificate workflow status"
//
* event[x] only Coding
* event[x] = CodeSystemMDI#death-certificate-review
* event[x] MS
  * ^short = "Death Certificate Review"
* reason 1..1 MS
* reason only CodeableConcept 
* reason from VSDCRreasonEx (example)
* focus 1..1 MS
* focus only Reference(BundleDocumentMDIDCR)
  * ^short = "The focus of this message header is the Bundle - Document Death Certificate Review."
  * ^definition = "The focus of this message header is the Bundle - Document Death Certificate Review."
