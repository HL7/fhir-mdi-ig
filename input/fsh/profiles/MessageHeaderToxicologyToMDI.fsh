Profile: MessageHeaderToxicologyToMDI
Parent: MessageHeader
Id: MessageHeader-toxicology-to-mdi
Title: "MessageHeader - Toxicology to MDI"
Description: "Identification of a DiagnosticReport - Toxicology Lab Result to MDI being sent in a message from a forensic toxicology laboratory information system to an MDI CMS."

* ^status = #active
* . ^short = "Identifies the DiagnosticReport being sent from a toxicology lab information system to an MDI case management system."
  * ^definition = "Identifies the DiagnosticReport being sent from a toxicology lab information system to an MDI case management system."
* event[x] only Coding
* event[x] = MDIcodes#tox-result-report
* event[x] MS
  * ^short = "Toxicology Lab Results"
* focus 1..1 MS
* focus only Reference(DiagnosticReportToxicologyToMDI)
  * ^short = "The focus of this message header is the DiagnosticReport."
  * ^definition = "The focus of this message header is the DiagnosticReport."