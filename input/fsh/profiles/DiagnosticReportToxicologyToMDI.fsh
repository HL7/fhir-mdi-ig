Profile: DiagnosticReportToxicologyToMDI
Parent: USCoreDiagnosticReportProfileLaboratoryReporting
Id: DiagnosticReport-toxicology-to-mdi
Title: "DiagnosticReport - Toxicology Lab Result to MDI"

Description: "The findings and interpretation of diagnostic tests performed during a death investigation and sent from a forensic toxicology laboratory information management system (LIMS) to an MDI CMS. Each analyzed specimen, represented by a Specimen - Toxicology Lab resource, must be referenced by at least one Observation - Toxicology Lab Result and may be referenced by more than one Observation - Toxicology Lab Result. For specimens received but not analyzed, the laboratory should provide a reason for no analysis in the DiagnosticReport.conclusion and/or each unanalyzed specimen’s Specimen - Toxicology Lab Specimen.note."
* . ^short = "Forensic toxicology report"
* . ^definition = "Def: DiagnosticReport - Toxicology Lab Result to MDI"
* extension only ExtensionTrackingNumber
* extension MS
  * ^short = "A tracking number, such as a case number or file number assigned by a case management system or EDRS."
  * ^definition = "A tracking number, such as a case number or file number assigned by a case management system or EDRS, and can represent other tracking numbers, if required."
* subject MS
  * ^short = "The subject of the diagnostic report is the decedent."
  * ^definition = "The subject of the diagnostic report is the decedent."
* issued MS
* performer only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)
* performer MS
* specimen ..* MS
* specimen only Reference(SpecimenToxicologyLab)
  * ^short = "The specimen sent by a Medical Examiner, Coroner, or autopsy performer to the toxicology lab for analysis."
  * ^definition = "The specimen sent by a Medical Examiner, Coroner, or autopsy performer to the toxicology lab for analysis."
* result only Reference(ObservationToxicologyLabResult)
* result MS
  * ^short = "The toxicology lab analysis results being reported."
  * ^definition = "The toxicology lab analysis results being reported."
* conclusion MS