RuleSet: CompositionSectionEntryNoSlicingMDI(section)
* section contains {section} 0..1
* section[{section}].code = CodeSystemMDI#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"

RuleSet: CompositionSectionEntrySlicingMDI(section)
* section contains {section} 0..1
* section[{section}].code = CodeSystemMDI#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open

RuleSet: CompositionSectionEntrySlicingVRDR(section)
* section contains {section} 0..1
* section[{section}].code = DocumentSectionCS#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open

RuleSet: CompositionSectionSlice(section, name, min, max, short, def, class)
* section[{section}].entry contains {name} {min}..{max}
* section[{section}].entry[{name}] ^short = "{short}"
* section[{section}].entry[{name}] ^definition = "{def}"
* section[{section}].entry[{name}] only Reference({class})

RuleSet: addentry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

RuleSet: addentryComposition(type, id)
* entry[+].reference = "{type}/{id}"

RuleSet: addNamedEntryComposition(name, type, id)
* entry[{name}][+].reference = "{type}/{id}"

RuleSet: addReferenceComposition (field, type, id)
* {field}.reference = "{type}/{id}"