Profile: DocumentReferenceMDIReport
Parent: USCoreDocumentReferenceProfile
Id: DocumentReference-mdi-report
Title: "DocumentReference - MDI Report"
Description: "This DocumentReference profile constrains the US Core DocumentReference Profile to support exchanging death investigation documents, such as an Autopsy Report or Investigator’s Narrative. The content may be included as inline base64 encoded data or be provided by direct reference (e.g., URL). The document type is required and is constrained by US Core to a LOINC value whose SCALE is DOC in the LOINC database or is the HL7 v3 Code System NullFlavor concept 'unknown'."
* status MS
* type ^short = "If LOINC code for type is not available, use HL7 v3 Code System NullFlavor (http://terminology.hl7.org/CodeSystem/v3-NullFlavor) code=UNK, display=unknown 'unknown'."
* category ^short = "Reference a terminology (code system & code) or use text to describe the document category."