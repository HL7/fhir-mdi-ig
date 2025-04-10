Invariant: mdi-01
Description: "If status is 'final', then Composition.section:cause-manner and Composition.section:jurisdiction both must be present."
* severity = #warning
* expression = "status='final' implies section.code.where(coding.where(code='jurisdiction' and system='http://hl7.org/fhir/us/mdi/CodeSystem/cs-mdi-codes').exists()).exists() and section.code.where(coding.where(code='cause-manner' and system='http://hl7.org/fhir/us/mdi/CodeSystem/cs-mdi-codes').exists()).exists()"


