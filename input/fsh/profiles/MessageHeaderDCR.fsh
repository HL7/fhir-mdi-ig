Profile: MessageHeaderDCR
Parent: MessageHeader
Id: MessageHeader-death-certificate-review
Title: "MessageHeader - Death Certificate Review"
Description: "Identification of a DiagnosticReport being sent in a message from a forensic toxicology laboratory information system to an MDI information management system."

* ^status = #active
* . ^short = "Identifies a Death Certificate Review document bundle and additional review information."
  * ^definition = "Identifies a Death Certificate Review document bundle and additional review information."

//
* event[x] only Coding
* event[x] = MDIcodes#death-certificate-review
* event[x] MS
  * ^short = "Death Certificate Review"
* reason 1..1 MS
* reason only CodeableConcept 
* reason from VSDCRreasonEx (example)
* focus 1..1 MS
* focus only Reference(BundleDocumentMDIDCR)
  * ^short = "The focus of this message header is the Bundle - Document Death Certificate Review."
  * ^definition = "The focus of this message header is the Bundle - Document Death Certificate Review."
