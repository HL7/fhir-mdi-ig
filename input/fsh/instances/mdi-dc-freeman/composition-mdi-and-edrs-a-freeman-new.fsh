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
* author = Reference(vr-practitioner-s-jones)
* title = "MDI to EDRS Composition"
* attester
  * mode = #professional
  * party = Reference(vr-practitioner-s-jones)
* section[0]
  * title = "Additional Demographic Information Section"
  * code = MDIcodes#demographics
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No additional demographic information</p></div>"
* section[+]
  * title = "Circumstances Section"
  * code = MDIcodes#circumstances
  * entry[0] = Reference(vrdr-death-location-atlanta-ga-a-freeman)
  * entry[+] = Reference(vrdr-tobacco-use-a-freeman)
  * entry[+] = Reference(vrdr-decedent-pregnancy-status-a-freeman)
  * entry[+] = Reference(vrdr-injury-location-atlanta-ga-a-freeman)
* section[+]
  * title = "Jurisdiction Section"
  * code = MDIcodes#jurisdiction
  * entry[0] = Reference(vrdr-death-date-a-freeman)
  * entry[+] = Reference(vrdr-death-certification-a-freeman)
* section[+]
  * title = "Cause and Manner of Death Section"
  * code = MDIcodes#cause-manner
  * entry[0] = Reference(observation-mdi-cause-of-death-part1-a-freeman)
  * entry[+] = Reference(vrdr-cause-of-death-part2-a-freeman)
  * entry[+] = Reference(vrdr-manner-of-death-a-freeman-accidental)
  * entry[+] = Reference(vrdr-injury-incident-a-freeman-med-ingest)
* section[+]
  * title = "Medical History Section"
  * code = MDIcodes#medical-history
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No Medical History information</p></div>"
  * emptyReason = $list-empty-reason#unavailable "Unavailable"
    * text = "Decedent's medical history not available"
