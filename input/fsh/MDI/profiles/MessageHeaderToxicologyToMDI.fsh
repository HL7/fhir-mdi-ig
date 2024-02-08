Profile: MessageHeaderToxicologyToMDI
Parent: MessageHeader
Id: MessageHeader-toxicology-to-mdi
Title: "MessageHeader - Toxicology to MDI"
Description: "This MessageHeader identifies the DiagnosticReport being sent from a forensic toxicology laboratory information system to an MDI information management system."

* ^status = #active
* . ^short = "Identifies the DiagnosticReport being sent from a toxicology lab information system to an MDI case management system."
  * ^definition = "Identifies the DiagnosticReport being sent from a toxicology lab information system to an MDI case management system."
* event[x] only Coding
* event[x] = CodeSystemMDI#tox-result-report
* event[x] MS
  * ^short = "Toxicology Lab Results"
* focus 1..1 MS
* focus only Reference(DiagnosticReportToxicologyToMDI)
  * ^short = "The focus of this message header is the DiagnosticReport."
  * ^definition = "The focus of this message header is the DiagnosticReport."