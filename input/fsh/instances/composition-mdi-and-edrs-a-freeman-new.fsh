Instance: composition-mdi-and-edrs-a-freeman
InstanceOf: CompositionMDIAndEDRS
Title: "MDI and EDRS Composition - Freeman"
Description: "MDI and EDRS Composition: Freeman example"
Usage: #example
* extension[ExtensionTrackingNumber]
  * valueIdentifier
    * type = $v2-0203#BCT
    * value = "ME21-113"
* identifier.value = "a03eab8c-11e8-4d0c-ad2a-b385395e27de"
* status = #final
* type = $loinc#86807-5 "Death administrative information Document"
* subject = Reference(us-core-patient-a-freeman)
* date = "2022-02-20"
* author = Reference(us-core-practitioner-s-jones)
* title = "MDI to EDRS Composition"
* attester
  * mode = #professional
  * party = Reference(us-core-practitioner-s-jones)
* section[0]
  * title = "Additional Demographic Information Section"
  * code = CodeSystemMDI#demographics
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No additional demographic information</p></div>"
* section[+]
  * title = "Circumstances Section"
  * code = CodeSystemMDI#circumstances
  * entry[0] = Reference(location-death-atlanta-ga-a-freeman)
  * entry[+] = Reference(observation-tobacco-use-a-freeman)
  * entry[+] = Reference(observation-decedent-pregnancy-a-freeman)
  * entry[+] = Reference(location-injury-atlanta-ga-a-freeman)
* section[+]
  * title = "Jurisdiction Section"
  * code = CodeSystemMDI#jurisdiction
  * entry[0] = Reference(observation-death-date-a-freeman)
  * entry[+] = Reference(procedure-death-certification-a-freeman)
* section[+]
  * title = "Cause and Manner of Death Section"
  * code = CodeSystemMDI#cause-manner
  * entry[0] = Reference(observation-cause-of-death-part1-a-freeman)
  * entry[+] = Reference(observation-contributing-cause-of-death-part2-a-freeman)
  * entry[+] = Reference(observation-manner-of-death-a-freeman-accidental)
  * entry[+] = Reference(observation-how-death-injury-occurred-a-freeman-med-ingest)
* section[+]
  * title = "Medical History Section"
  * code = CodeSystemMDI#medical-history
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No Medical History information</p></div>"
  * emptyReason = $list-empty-reason#unavailable "Unavailable"
    * text = "Decedent's medical history not available"
