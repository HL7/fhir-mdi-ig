
Profile: BundleMessageToxToMDI
Parent: Bundle
Id: Bundle-message-tox-to-mdi
Title: "A container for a message from a forensic toxicology laboratory to an MDI information management system. It contains a MessageHeader - Toxicology to MDI and a DiagnosticReport - Toxicology Lab Result to MDI."
* type = #message (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
//
* entry contains ToxtoMDIMessage 1..1 MS
* entry[ToxtoMDIMessage].resource 1..
* entry[ToxtoMDIMessage].resource only MessageHeaderToxicologyToMDI
//
* entry contains ToxtoMDIDiagnosticReport 1..1 MS
* entry[ToxtoMDIDiagnosticReport].resource 1..
* entry[ToxtoMDIDiagnosticReport].resource only DiagnosticReportToxicologyToMDI