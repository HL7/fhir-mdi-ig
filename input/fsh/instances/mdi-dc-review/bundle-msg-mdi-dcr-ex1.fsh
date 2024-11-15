Instance: bundle-msg-mdi-dcr-ex1
InstanceOf: BundleMessageDCR
Title: "Bundle - Message Death Certificate Review Example"
Description: "Bundle - Message Death Certificate Review, example 1"
Usage: #example
* identifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:683dde44f7664b03a20b6324f23986d9"
* type = #message
* insert addentry(MessageHeader, messageheader-mdi-dcr-ex1)
* insert addentry(Bundle, bundle-doc-mdi-dcr-ex1)