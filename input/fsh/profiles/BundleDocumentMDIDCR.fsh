Profile: BundleDocumentMDIDCR
Parent: Bundle
Id: Bundle-document-mdi-dcr
Title: "Bundle - Document Death Certificate Review"
Description: "This profile represents a Document Bundle from an EDRS for a Death Certificate Review."
// This Bundle contains a DCR Composition that defines the structure and narrative content necessary for the DCR document. The DCR Composition must be the first entry in the Bundle instance (example file), and any other resources referenced from Composition instance must be included as subsequent entries in the Bundle instance (for example Patient, Practitioner, etc.), per http://hl7.org/fhir/R4/composition.html
* identifier 1.. 
  * ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* type 
* entry 
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains DCR_Composition 1..1 
* entry[DCR_Composition] ^short = "The Composition of data sent from an EDRS for a Death Certificate Review."
  * resource 1.. 
  * resource only CompositionMDIDCR