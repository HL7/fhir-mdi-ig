This page discusses a minimum level of security recommended by the MDI FHIR IG. There are more data exchange protocols and content models defined in the [FHIR Security document](https://www.hl7.org/fhir/security.html). MDI systems should refer to the FHIR Security document if a higher level of security is required for interoperability. 

FHIR is a structured data model that is designed to contain clinical data elements. Therefore, this IG describes how the implemented MDI FHIR data can be exchanged securely between systems. At the minimum, there two areas need to be protected in the data exchange as shown below. 
1. Secure Data Transportation
1. Limited Data Access to Authorized Individuals

### Secure Data Transportation
In most modern systems, digital data are exchanged using web services. FHIR recommends a web service called RESTful Application Programming Interface (REST API) where REST stands for **RE**presentational **S**tate **T**ransfer. REST API uses Transport Layer Security (TLS) for secure transportation. More accurately, TLS 1.2 or higher needs to be used. This is also known as HTTPS. All data exchanges in MDI FHIR IG must be done in HTTPS.

### Limited Data Access to Authorized Individuals
A standard authorization protocol that can be used to limit the data access is the OAuth 2.0 Authorization Framework (OAuth2) defined in [RFC 6749](https://www.rfc-editor.org/rfc/rfc6749). RFC is an official document. However, there are many documents provided by OAuth2 software vendors that are much easier and simpler to understand than the RFC document. The following links provide good articles for the OAuth2, however, developers should become familiar with the RFC document for the technical details on OAuth2.
* https://auth0.com/docs/authenticate/protocols/oauth 
* https://www.oauth.com 

In FHIR, SMART on FHIR is a recommended security solution for FHIR. And, it uses OAuth2 for the security protocol. The SMART on FHIR is targeting to clinical data access for providers, patients, and clinical systems such as EHR. While SMART on FHIR can also be applied to MDI FHIR systems, this document does not recommend the SMART on FHIR as a minimum-security solution due to its granularity and complexity of access definitions on resources and users. Thus, this document discusses the general OAuth2 as a minimum level of security. However, if a system needs to be maintained at a similar level of security as clinical systems, SMART on FHIR is a recommended protocol. Details on the SMART on FHIR can be found in http://www.hl7.org/fhir/smart-app-launch/. 

In OAuth2, there are components with different roles. MDI systems should play the roles. And, each system will play different role based on the workflow it operates in. The following table shows roles and what role MDI systems should play in the MDI-EDRS and Toxicology-CMS workflows.
***MDI Roles & Responsibilities***
| Role | Responsibility | MDI-EDRS | Tox-CMS |
| -------- | -------- | -------- | -------- |
| Authorization Server     | Manages user authorization requests and responses.     | N/A     | N/A     |
| Client     | A system that initiates the process to access the data.     | CMS     | LIMS Users     |
| Resource Owner     | A user or system who has authority on the resource to grant an access.     | CMS/EDRS Users     | Text     |
| Resource Provider     | A system that holds the resources and provides the requested resource to authorized users or systems.     | EDRS     | CMS     |

Please note that toxicology-CMS workflow uses the FHIR message operation. This also uses REST API for transportation. Thus, OAuth2 can be used to secure the data exchange. However, FHIR messaging uses CREATE (HTTP POST) method due to the nature of messaging’s push operation, pushing the data from LIMS to CMS. Thus, data is originally owned by LIMS and pushed to CMS. However, in the REST API operation, LIMS will be a client, and CMS will play the resource provider role, which will own the data after the operation is completed.

For MDI FHIR IG security, two authorization methods from OAuth2 will be recommended. A method will be chosen based on the client types, Human Users and API Users. 
* **Human Users**: human is a resource owner and performs the operation behind the client, and the human user needs to get authenticated and authorized with login credentials to access the data. 
* **API Users**: the client is a system, and the client must be pre-authorized. In this case, there is no human in the loop of communication. The system can get an access token with pre-defined authorization in the background process.

### Human Users
An example of human user cases would be when a certifier needs to access death data in EDRS for search, update, or certification. We may allow only users in a certain role to change the data. In this case, the user needs to get authenticated and authorized with scope parameter that will define the scope of access. The figure 1 depicts the flow of authorization process for human users.
* Step 1: Client (CMS or LIMS) sends a request for authorization with parameters such as client id, redirect URL, response type = code for authorization code, scope, etc. In this step, users will be redirected to a logon page. 
* Step 2: Once the authenticated users are validated, an authorization code will be returned.
* Step 3: Client will then use the authorized code to exchange with an access token at the token service endpoint. 
* Step 4: Access Token is granted to client. There is a timeout. Thus, client may need to refresh the token periodically.
* Step 5 – 8: From this point, the resources should be available for the client with the access token in the request header. Resource provider will introspect the token to check if it is valid to proceed with the request. The response from Authorization server may contain scopes. If this is the case, the scopes can be used for further access controls.

***Figure: OAuth2 flow for Human Users***
<table><tr><td><img src="IG-image-OAuth2-Human.png" /></td></tr></table>

### API Users

This type of authorization is for client systems (or client applications) that need to be authorized without human intervention. This is achieved by getting pre-authorized when the system is registered. Since there is no human to provide the credential information, the grant type should be set to *clientcredentials*, and the credentials should be set as defined by authorization server. It can be *clientid* and *clientsecret*, or it can be created with JSON Web Token (JWT). It depends on how the authorization server is configured. Figure 2 depicts the flow of authorization process for API Users.
* Step 1: Client request token server for an access token with parameters such as client ID, client_secret or authentication JWT, etc. Authorization server will validate the request.
* Step 2: Access token is granted to client. There is a timeout. Thus, client may need to refresh the token periodically.
* Step 3 – 6: From this point, the resources should be available for the client with the access token in the request header. Resource provider will introspect the token to check if it is valid to proceed with the request. The response from Authorization server may contain scopes. If this is the case, the scopes can be used for further access controls.
***Figure: OAuth2 Flow for API Users***
<table><tr><td><img src="IG-image-OAuth2-API.png" /></td></tr></table>