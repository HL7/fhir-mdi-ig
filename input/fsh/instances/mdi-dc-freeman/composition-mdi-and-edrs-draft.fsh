Instance: composition-mdi-and-edrs-draft
InstanceOf: CompositionMDIAndEDRS
Title: "MDI and EDRS Composition - draft"
Description: "MDI and EDRS Composition: Draft example with status=preliminary, author & attester using data-absent-reason extension"
Usage: #example
* extension[ExtensionTrackingNumber]
  * valueIdentifier
    * type = $v2-0203#BCT
    * value = "ME21-113"
* identifier.value = "a03eab8c-11e8-4d0c-ad2a-b385395e27de"
* status = #preliminary
* type = $loinc#86807-5 "Death administrative information Document"
* subject.reference = "Patient/us-core-patient-a-freeman"
* date = "2022-02-20"
* author
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    * valueCode = #temp-unknown
//    * fhir_comments = " When author is not yet set use data-absent-reason rather than <reference value=\"Practitioner/vr-practitioner-s-jones\"/>"
  * display = "Temporarily Unknown"
* title = "MDI and EDRS Composition"
* attester
  * mode = #professional
  * party
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #temp-unknown
//      * fhir_comments = " When attester is not yet set use data-absent-reason rather than <reference value=\"Practitioner/vr-practitioner-s-jones\"/>"
    * display = "Temporarily Unknown"
* section[0]
  * title = "Additional Demographic Information Section"
  * code = MDIcodes#demographics
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No additional demographic information</p></div>"
* section[+]
  * title = "Circumstances Section"
  * code = MDIcodes#circumstances
  * entry[0].reference = "Location/vrdr-death-location-atlanta-ga-a-freeman"
  * entry[+].reference = "Observation/vrdr-tobacco-use-a-freeman"
  * entry[+].reference = "Observation/vrdr-decedent-pregnancy-status-a-freeman"
  * entry[+].reference = "Location/vrdr-injury-location-atlanta-ga-a-freeman"
* section[+]
  * title = "Jurisdiction Section"
  * code = MDIcodes#jurisdiction
  * entry[0].reference = "Observation/vrdr-death-date-a-freeman"
  * entry[+].reference = "Procedure/vrdr-death-certification-a-freeman"
* section[+]
  * title = "Cause and Manner of Death Section"
  * code = MDIcodes#cause-manner
  * entry[0].reference = "Observation/observation-mdi-cause-of-death-part1-a-freeman"
  * entry[+].reference = "Observation/vrdr-cause-of-death-part2-a-freeman"
  * entry[+].reference = "Observation/vrdr-manner-of-death-a-freeman-accidental"
  * entry[+].reference = "Observation/vrdr-injury-incident-a-freeman-med-ingest"
* section[+]
  * title = "Medical History Section"
  * code = MDIcodes#medical-history
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No Medical History information</p></div>"
  * emptyReason = $list-empty-reason#unavailable "Unavailable"
    * text = "Decedent's medical history not available"