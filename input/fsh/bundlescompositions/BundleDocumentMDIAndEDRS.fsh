Profile: BundleDocumentMDIAndEDRS
Parent: Bundle
Id: Bundle-document-mdi-and-edrs
Title: "Bundle - Document MDI and EDRS"
Description: "This Bundle profile represents a Document Bundle exchanged between an MDI CMS and EDRS. It can be used for bi-directional exchange. It contains a Composition - MDI and EDRS."
* identifier 1.. 
  * ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* type 
* entry 
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains MDIandEDRSComposition 1..1 
* entry[MDIandEDRSComposition] ^short = "The Composition of data sent between an MDI CMS and an EDRS"
  * resource 1.. 
  * resource only CompositionMDIAndEDRS
