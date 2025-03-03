Extension: ExtensionTrackingNumber
Id: Extension-tracking-number
Title: "Extension - Tracking Number"
Description: "Tracking number, such as a case number or file number assigned by an MDI CMS or EDRS, and can represent other tracking numbers, if required.."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* . 0..*
  * ^short = "Tracking Numbers Extension"
  * ^definition = "Contains multiple tracking numbers, such as a case number or file number assigned by a case management system or EDRS, and can represent other tracking numbers, if required."
* url MS
* value[x] only Identifier
* value[x] from VSTrackingNumberType (extensible)
* value[x] MS
//  * ^short = "Value of extension"
//  * type MS
//  * type from VSTrackingNumberType (extensible)
//    * ^short = "Tracking Number Type (extensible value set)"
//  * system MS
//  * value MS