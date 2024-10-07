Instance: us-core-organization-ga-dph
InstanceOf: USCoreOrganizationProfile
Title: "US Core Organization - GA Dept Public Health"
Description: "Example of US Core Organization - Georgia State Department of Public Health, Div. Vital Records"
//* identifier
//  * system = "http://hl7.org.fhir/sid/us-npi"
//  * value = "111223333"
* active = true
* type = $organization-type#govt "Government"
* name = "GA Dept Public Health"
* telecom
  * system = #phone
  * value = "(404) 123-4567"
* address
  * line = "1234 Main Street"
  * city = "Anytown"
  * state = "GA"
  * postalCode = "30349"
  * country = "US"