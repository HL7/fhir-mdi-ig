Invariant: mdi-01
Description: "If Composition.status = final then Composition.section:circumstances must contain at least one entry value."
* severity = #warning
* expression = "section.code.exists(system='http://hl7.org/fhir/us/mdi/CodeSystem/cs-mdi-codes’ and code=‘circumstances’) or status != final"

Description: "If status is “final”, then require content in section:cause-manner and section:jurisdiction."
* severity = #warning
* expression = "status = 'final' implies section:cause-manner.exists() and section:jurisdiction.extists()"

