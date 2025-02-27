Instance: bun-response
InstanceOf: BundleResponseTWPAS
Title: "事前審查回覆"
Description: "依據事前審查回覆-Bundle Response TWPAS Profile呈現癌藥事前審查回覆之範例"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#searchset
//* timestamp = "2024-08-30T13:50:58.000Z"
* total = 1
* link.relation = "self"
* link.url = "https://twcore.mohw.gov.tw/fhir/ClaimResponse?request.patient.identifier=A123456789"
* entry.fullUrl = "https://twcore.mohw.gov.tw/ig/pas/ClaimResponse/claim-response-example"
* entry.resource = claim-response-example
* entry.search.mode = #match