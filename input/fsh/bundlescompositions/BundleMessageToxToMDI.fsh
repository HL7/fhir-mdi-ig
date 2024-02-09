
Profile: BundleMessageToxToMDI
Parent: Bundle
Id: Bundle-message-tox-to-mdi
Title: "Bundle - Message Toxicology to MDI"
Description: "This Bundle profile represents a Message Bundle from a forensic toxicology laboratory to an MDI information management system. It contains a Message Header and a DiagnosticReport - Toxicology Lab Result to MDI."
* type = #message (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains ToxtoMDIMessage 1..1 MS

* entry[ToxtoMDIMessage].resource 1..
* entry[ToxtoMDIMessage].resource only MessageHeaderToxicologyToMDI