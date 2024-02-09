Instance: us-core-patient-unknown-name
InstanceOf: PatientVitalRecords
Title: "US Core Patient - Unknown Name"
Description: "US Core Patient: Unknown Name - Decedent where there is no information known about the patient. Assume that the system will assign a tracking number (e.g., medical record number, case number, or other)."
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "MR303303305"
* active = true
* name.family = "UNK"
  * extension[dataAbsentReason]
    * valueCode = #unknown
* name.use = #official 
* gender = #unknown