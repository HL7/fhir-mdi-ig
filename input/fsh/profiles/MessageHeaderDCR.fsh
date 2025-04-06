Profile: MessageHeaderDCR
Parent: MessageHeader
Id: MessageHeader-death-certificate-review
Title: "MessageHeader - Death Certificate Review"
Description: "Identification of a Bundle - Document Death Certificate Review being sent in a message between an EDRS and an MDI CMS."

* ^status = #active
  * ^short = "Identifies a Death Certificate Review document bundle and additional review information."
  * ^definition = "Def: Identifies a Death Certificate Review document bundle and additional review information."

//
* event[x] only Coding
* event[x] = MDIcodes#death-certificate-review-event
* event[x]
  * ^short = "Death Certificate Review Event"
* reason 1..1
* reason only CodeableConcept 
* reason from VSDCRreason (extensible)
* focus 1..1
* focus only Reference(BundleDocumentMDIDCR)
  * ^short = "The focus of this message header is the Bundle - Document Death Certificate Review."
  * ^definition = "The focus of this message header is the Bundle - Document Death Certificate Review."
