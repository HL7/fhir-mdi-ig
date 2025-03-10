Invariant: mdi-01
Description: "If status is 'final', then Composition.section:cause-manner and Composition.section:jurisdiction must be present."
* severity = #warning
* expression = "status = 'final' implies Composition.section:jurisdiction.code.exists() and Composition.section:cause-manner.code.exists() "


