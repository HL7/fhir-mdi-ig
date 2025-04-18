Instance: documentreference-mdi-investigator-narrative-ex
InstanceOf: DocumentReferenceMDIReport
Title: "DocumentReference - MDI Report - Investigator's Narrative example"
Description: "DocumentReference - MDI Report: Investigator's Narrative example"
Usage: #example
* status = #current
* docStatus = #final
* type = $v3-NullFlavor#UNK "unknown"
//* category = $us-core-documentreference-category#clinical-note "Clinical Note"
//  * text = "Clinical Note"
//* category = $v3-NullFlavor#OTH "other"
* category = $loinc#47046-8 "Summary of death note"
//* category.text = "Investigator’s Narrative"
* subject = Reference(us-core-patient-a-freeman)
* date = "2023-01-13T15:52:20.000+00:00"
* authenticator = Reference(vr-practitioner-s-jones)
* content.attachment
  * contentType = #application/pdf
  * language = #en-US
  * url = "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510"
  * title = "Url where the report can be found"