Instance: us-core-patient-a-freeman
InstanceOf: PatientVitalRecords
Title: "US Core Patient - Alice J. Freeman"
Description: "Example of US Core Patient - Alice J. Freeman, decedent"
Usage: #example
* extension[race]
  * extension[detailed]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2029-7 "Asian Indian"
  * extension[text]
    * valueString = "Asian Indian"
* extension[ethnicity]
  * extension[ombCategory]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[text]
    * valueString = "Not Hispanic or Latino"
* identifier
  * use = #usual
  * type = $v2-0203#SS "Social Security number"
    * text = "Social Security number"
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "987054321"
* active = true
* name
  * use = #official 
  * family = "Freeman"
  * given[0] = "Alice"
  * given[+] = "J."
* gender = #female
* birthDate = "1978-03-12"
* address
  * use = #home
  * line = "112 Miramar Ct"
  * city = "Danville"
  * state = "NS" // "Nova Scotia"
  * country = "CA"