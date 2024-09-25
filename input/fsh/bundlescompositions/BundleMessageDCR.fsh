
Profile: BundleMessageDCR
Parent: Bundle
Id: Bundle-message-death-certificate-review
Title: "Bundle - Message Death Certificate Review"
Description: "This Bundle profile represents a Message Bundle about a Death Certificate Review."
* type = #message (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains DCRMessage 1..1 MS

* entry[DCRMessage].resource 1..
* entry[DCRMessage].resource only MessageHeaderDCR