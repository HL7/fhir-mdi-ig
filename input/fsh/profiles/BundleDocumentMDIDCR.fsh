Profile: BundleDocumentMDIDCR
Parent: Bundle
Id: Bundle-document-mdi-dcr
Title: "Bundle - Document Death Certificate Review"
Description: "A container for a document exchanged between an EDRS and an MDI CMS (bi-directional exchange) for a Death Certificate Review. It contains a Composition - Death Certificate Review."
* identifier 1.. 
  * ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* entry 
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains DCR_Composition 1..1
 entry[DCR_Composition]
  * resource 1.. 
  * resource only CompositionMDIDCR