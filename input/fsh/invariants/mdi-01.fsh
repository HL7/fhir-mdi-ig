Invariant: mdi-01
Description: "If Composition.status = final then Composition.section:circumstances must contain at least one entry value."
* severity = #warning
* expression = "type.where(coding.first().code='payer').exists() implies identifier.where(system='urn:oid:2.16.840.1.113883.6.300').exists()"
* expression = "section.code.exists(system='http://hl7.org/fhir/us/mdi/CodeSystem/cs-mdi-codes’ and code=‘circumstances’) or status != final"

