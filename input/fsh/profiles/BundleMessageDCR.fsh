
Profile: BundleMessageDCR
Parent: Bundle
Id: Bundle-message-death-certificate-review
Title: "Bundle - Message Death Certificate Review"
Description: "A container for a message exchanged between an EDRS and an MDI CMS (bi-directional exchange) about a Death Certificate Review. It contains a MessageHeader - Death Certificate Review and a Bundle - Document Death Certificate Review." ^short = "short"
* type = #message (exactly)
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
//
* entry contains DCRMessage 1..1
* entry[DCRMessage].resource 1..
* entry[DCRMessage].resource only MessageHeaderDCR
//
* entry contains DCRDocument 1..1
* entry[DCRDocument].resource 1..
* entry[DCRDocument].resource only BundleDocumentMDIDCR