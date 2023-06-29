This page describes the recommendations for a minimum level of security when implementing the MDI IG. The [FHIR Security](https://www.hl7.org/fhir/security.html) web page defines more data exchange protocols and content models. MDI CMS should refer to that if a higher level of security is required for interoperability. At minimum, two areas need protection in the data exchange:
1. Secure Data Transportation
1. Limited Data Access to Authorized Individuals

### Secure Data Transportation
In most modern systems, digital data are exchanged using web services. FHIR recommends a web service called RESTful Application Programming Interface (REST API) where REST stands for **RE**presentational **S**tate **T**ransfer. REST API uses Transport Layer Security (TLS) for secure transportation. More accurately, TLS 1.2 or higher needs to be used. This is also known as HTTPS. All data exchanges in MDI FHIR IG must be done in HTTPS.

### Limited Data Access to Authorized Individuals
The OAuth 2.0 Authorization Framework (OAuth2), defined in [RFC 6749](https://www.rfc-editor.org/rfc/rfc6749), is a standard authorization protocol that can be used to limit data access. Developers should become familiar with the RFC 6749 document for the technical details on OAuth2. The following are good additional references for OAuth2:
* [OAuth 2.0 Authorization Framework](https://auth0.com/docs/authenticate/protocols/oauth)
* [OAuth 2.0 Simplified](https://www.oauth.com)

SMART on FHIR is a recommended security solution for FHIR. And, it uses OAuth2 for the security protocol. The SMART on FHIR is targeting to clinical data access for providers, patients, and clinical systems such as EHR. While SMART on FHIR can also be applied to MDI FHIR systems, this document does not recommend the SMART on FHIR as a minimum-security solution due to its granularity and complexity of access definitions on resources and users. Thus, this document discusses the general OAuth2 as a minimum level of security. However, if a system needs to be maintained at a similar level of security as clinical systems, SMART on FHIR is a recommended protocol. Details on the SMART on FHIR can be found in http://www.hl7.org/fhir/smart-app-launch/. 

SMART on FHIR uses OAuth2 for security in accessing clinical data for providers, patients, and clinical systems such as EHRs. While SMART on FHIR can be applied to MDI CMS, the granularity and complexity of access definitions on resources and users sets it above a minimum security recommendation. However, if an MDI CMS needs to be maintained at a level of security similar to clinical systems, SMART on FHIR is a recommended protocol. Details on the SMART on FHIR can be found in http://www.hl7.org/fhir/smart-app-launch/.

OAuth2 has components with different roles, which the MDI CMS can play. Each system will play a different role based on the dataflow in which it operates. The following table shows the OAuth2 roles and the role MDI CMS should play in the MDI-EDRS and Toxicology-MDI dataflows.

***MDI Roles & Responsibilities***

| Role | Responsibility | MDI CMS-EDRS | Tox-MDI CMS |
| -------- | -------- | -------- | -------- |
| Authorization Server     | Manages user authorization requests and responses.     | N/A     | N/A     |
| Client     | A system that initiates the process to access the data.     | MDI CMS     | LIMS Users     |
| Resource Owner     | A user or system who has authority on the resource to grant an access.     | MDI CMS/EDRS Users     | Text     |
| Resource Provider     | A system that holds the resources and provides the requested resource to authorized users or systems.     | EDRS     | MDI CMS     |

Please note that toxicology-MDI CMS dataflow uses the FHIR message operation. This also uses REST API for transportation. Thus, OAuth2 can be used to secure the data exchange. However, FHIR messaging uses CREATE (HTTP POST) method due to the nature of messaging’s push operation, in which data are originally owned by the LIMS and pushed to the MDI CMS. However, in the REST API operation, the LIMS is a client, and MDI CMS plays a resource provider role, which owns the data after the operation is completed.

This MDI  IG recommends two OAuth2 authorization methods based on the client types: 
* **Human Users**: Resource owners who perform the operation behind the client. The human user uses authenticated and authorized login credentials to access the data.
* **API Users**: System that requires pre-authorization. The system can get an access token with pre-defined authorization in the background process.

### Human Users
An example of human user cases would be when a certifier needs to access death data in an EDRS for search, update, or certification. We may allow only users in a certain role to change the data. In this case, the user needs to get authenticated and authorized with scope parameter that will define the scope of access. The figure 1 depicts the flow of authorization process for human users.

A human user may be a certifier who needs to access death data in an EDRS for search, update, or certification. The EDRS can allow only users in a certain role to change the data. In this case, the user is authenticated and authorized with scope parameters that define access. The human user authorization flow for human users follows this process:


* Step 1: The cient (MDI CMS or LIMS) sends a request for authorization with parameters such as client id, redirect URL, response type = code for authorization code, scope, etc. In this step, users will be redirected to a login page. 
* Step 2: Once the authenticated users are validated, an authorization code will be returned.
* Step 3: Client will then use the authorized code to exchange with an access token at the token service endpoint. 
* Step 4: Access Token is granted to client. There is a timeout. Thus, client may need to refresh the token periodically.
* Step 5 – 8: From this point, the resources should be available for the client with the access token in the request header. Resource provider will introspect the token to check if it is valid to proceed with the request. The response from Authorization server may contain scopes. If this is the case, the scopes can be used for further access controls.

***Figure: OAuth2 Flow for Human Users***
<table><tr><td><img src="IG-image-OAuth2-Human.png" /></td></tr></table>

### API Users

API User authorization is for client systems (or client applications) that need access without human intervention. A system is pre-authorized during registration. Since no human provides the credential information, the grant type should be set to *clientcredentials*, and the credentials should be set as defined by authorization server. The setting can be *clientid* and *clientsecret*, or the credential can be created with JSON Web Token (JWT), depending on authorization server configuration. The authorization flow for API Users follows this process: 
* Step 1: The client requests a token server for an access token with parameters such as client ID, client_secret or authentication JWT, etc. The authorization server validates the request.
* Step 2: The access token is granted to the client. A timeout period is defined for the token, thus, the client may need to refresh the token periodically.
* Step 3 – 6: The resources should be available to the client with the access token in the request header. The resource provider will check that the token is valid to proceed with the request. The response from the authorization server may contain scopes. If this is the case, the scopes can be used for further access controls.

***Figure: OAuth2 Flow for API Users***
<table><tr><td><img src="IG-image-OAuth2-API.png" /></td></tr></table>