Profile: SpecimenToxicologyLab
Parent: Specimen
Id: Specimen-toxicology-lab
Title: "Specimen - Toxicology Lab"
Description: """This Specimen profile identifies and describes the specimen sent by a Medical Examiner, Coroner, or autopsy performer to a toxicology lab for analysis.
For specimens received but not analyzed, the laboratory should provide a reason for no analysis in the DiagnosticReport.conclusion and/or each unanalyzed specimen’s Specimen - Toxicology Lab Specimen.note.
The laboratory may use the Specimen.condition to describe the state of the specimen via codes from the extensible value set hl7VS-specimenCondition and/or use the Specimen.note to describe details or issues about the specimen."""
* ^status = #active
* . ^short = "The specimen sent by a Medical Examiner, Coroner, or autopsy performer to a toxicology lab for analysis."
  * ^definition = "The specimen sent by a Medical Examiner, Coroner, or autopsy performer to a toxicology lab for analysis."
* identifier MS
  * ^short = "System-generated identifier for this Specimen."
  * ^definition = "System-generated identifier for this Specimen."
* accessionIdentifier MS
* type 1.. MS
  * ^short = "Type of tissue or material"
  * ^definition = "Type of tissue or material (blood, etc.)."
  * coding MS
  * text 1.. MS
* subject ..1 MS
* subject only Reference(USCorePatientProfile)
  * ^short = "The subject is the decedent."
  * ^definition = "The subject is the decedent."
* receivedTime MS
  * ^label = "Time when specimen was received by the forensic toxicology lab for processing"
  * ^short = "Time when specimen was received by the forensic toxicology lab for processing"
* parent only Reference(SpecimenToxicologyLab)
* parent MS
* collection MS
  * collected[x] MS
    * ^label = "Time collected from either the body or the scene"
    * ^short = "Time collected from either the body or the scene"
* processing MS
  * time[x] MS
* container
  * identifier MS
  * description 1..
  * additive[x] MS
* condition MS
* note MS
  * ^label = "Details or issues about the specimen or reason for no analysis"
  * ^short = "Details or issues about the specimen or reason for no analysis"