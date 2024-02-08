Profile: ObservationToxicologyLabResult
Parent: USCoreLaboratoryResultObservationProfile
Id: Observation-toxicology-lab-result
Title: "Observation - Toxicology Lab Result"
Description: "This Observation profile describes forensic toxicology laboratory test results from analysis of a specimen sent by a Medical Examiner, Coroner, or autopsy performer to the laboratory."
* code
  * coding MS
  * text 1.. MS
* value[x] ..1 MS
* value[x] only string
* note MS
* specimen only Reference(SpecimenToxicologyLab)
* specimen MS