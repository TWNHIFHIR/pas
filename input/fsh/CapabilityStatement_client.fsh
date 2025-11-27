Instance: CapabilityStatementTWPASClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://nhicore.nhi.gov.tw/pas/CapabilityStatement/CapabilityStatementTWPASClient"
* version = "1.1.0"
* name = "CapabilityStatementTWPASClient"
* title = "臺灣癌藥事前審查-用戶端(TWPAS Client)"
* status = #active
* experimental = false
* publisher = "衛生福利部中央健康保險署"
* date = "2025-10-01"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://nhicore.nhi.gov.tw/pas/ImplementationGuide/tw.gov.mohw.nhi.pas"
* description = "臺灣健保癌症用藥事前審查實作指引(TWPAS IG)用戶端(Client)之能力聲明"
* rest.mode = #client
* rest.documentation = "臺灣癌藥事前審查-用戶端(TWPAS Client)必須（SHALL）使用臺灣癌藥事前審查伺服端（TWPAS Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣癌藥事前審查Profile(s)。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "有關要求和建議，請參閱[安全性](security.html)。"

* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch

* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-response-twpas"
* rest.resource[=].supportedProfile[2] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-immunologic-agent-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Bundle-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Claim
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-immunologic-agent-twpass"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Claim-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Claim-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "func-type"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Claim-func-type"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #ClaimResponse
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-self-assessment-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "request"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/ClaimResponse-request"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "created"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/ClaimResponse-created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "disposition"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/ClaimResponse-disposition"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "adjudication-reason"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/ClaimResponse-adjudication-reason"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/AllergyIntolerance-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Organization-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Organization-genetic-testing-twpas"
* rest.resource[=].supportedProfile[2] = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-govt-twcore"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-opd-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "service-type"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Encounter-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Patient-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "name"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/pas/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Practitioner-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #ImagingStudy
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ImagingStudy-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Media
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Media-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-image-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-cancer-stage-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-diagnostic-twpas"
* rest.resource[=].supportedProfile[2] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-laboratory-result-twpas"
* rest.resource[=].supportedProfile[3] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-pat-assessment-twpas"
* rest.resource[=].supportedProfile[4] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-tx-assessment-twpas"
* rest.resource[=].supportedProfile[5] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-blood-group-twpas"
* rest.resource[=].supportedProfile[6] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-subjective-twpas"
* rest.resource[=].supportedProfile[7] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-objective-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #ClinicalImpression
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClinicalImpression-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #CarePlan
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/CarePlan-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Condition
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Condition-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #MedicationRequest
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-treat-twpas"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-apply-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Procedure
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Procedure-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Substance
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Substance-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Specimen-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DocumentReference
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DocumentReference-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Coverage
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Coverage-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #OperationOutcome
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/OperationOutcome-twpas"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h2 id=\"title\">臺灣癌藥事前審查-用戶端(TWPAS Client)</h2>
    <ul>
        <li>實作指引版本：1.1.0</li>
        <li>FHIR版本：4.0.1</li>
        <li>支援格式：<code>json</code></li>
        <li>發佈日：2025-10-01</li>
        <li>發佈者：衛生福利部中央健康保險署</li>
    </ul>
    <h3 id=\"shallIGs\">建議應該（SHOULD）支援以下實作指引</h3>
    <ul>
        <li><a href=\"index.html\">臺灣健保癌症用藥事前審查實作指引(TWPAS IG)</a></li>
    </ul>
    <h2 id=\"rest\">Client的FHIR RESTful功能要求</h2>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h3 id=\"mode1\" class=\"panel-title\">模式: <code>client</code></h3>
        </div>
        <div class=\"panel-body\">
            <div>
                <p>臺灣癌藥事前審查-用戶端(TWPAS Client)<b>必須(SHALL)</b>：<br/>
                    (1)使用臺灣癌藥事前審查伺服端（TWPAS Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣癌藥事前審查Profile（s）</p>
                <p>安全性：<br/>
                    (1)有關要求和建議，請參閱<a href=\"security.html\">安全性</a>。</p>
            </div>
        </div>
    </div>
    <h3 id=\"resourcesCap1\">Resources或Profiles的RESTful功能</h3>
    <h4 id=\"resourcesSummary1\">Summary</h4>
    <p>共有二十二類Resources支援查詢，查詢參數如表列：</p>
    <div class=\"table-responsive\">
        <table class=\"table table-condensed table-hover\">
            <thead>
                <tr>
                    <th><b>Resource型別</b></th>
                    <th><b>Profile</b></th>
                    <th>Create</th>
                    <th>Read</th>
                    <th>VRead</th>
                    <th>Delete</th>
                    <th>Update</th>
                    <th><b>支援的查詢參數</b></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href=\"#Bundle1-1\">Bundle</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Bundle-twpas.html\">癌藥事前審查-Bundle TWPAS</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Bundle-response-twpas.html\">事前審查回覆-Bundle Response TWPAS</a><br /><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Bundle-immunologic-agent-twpas.html\">免疫製劑事前審查-Bundle Immunologic Aagent TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>_id</td>
                </tr>
                <tr>
                    <td><a href=\"#Claim1-2\">Claim</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Claim-twpas.html\">癌藥事前審查-Claim TWPAS</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Claim-immunologic-agent-twpas.html\">免疫製劑事前審查-Claim Immunologic Aagent TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>identifier, patient, func-type</td>
                </tr>
                <tr>
                    <td><a href=\"#ClaimResponse\">ClaimResponse</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        ><a href=\"StructureDefinition-ClaimResponse-twpas.html\">事前審查回覆-ClaimResponse TWPAS</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-ClaimResponse-self-assessment-twpas.html\">自主審查-ClaimResponse Self Assessment TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>adjudication-reason, request.patient.name, request.patient.identifier, request.identifier, request.func-type.service-type, created, disposition</td>
                </tr>
                <tr>
                    <td><a href=\"#AllergyIntolerance\">AllergyIntolerance</a></td>
                    <td><a href=\"StructureDefinition-AllergyIntolerance-twpas.html\">過敏史-AllergyIntolerance TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>service-type</td>
                </tr>
                <tr>
                    <td><a href=\"#Organization1-3\">Organization</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Organization-twpas.html\">機構-Organization TWPAS</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Organization-genetic-testing-twpas.html\">基因檢測機構-Organization Genetic Testing TWPAS</a><br />\u00a0\u00a0
                        <a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">TW Core Organization Government</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Encounter1-4\">Encounter</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Encounter-twpas.html\">就醫科別-Encounter TWPAS</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Encounter-opd-twpas.html\">門診病歷-Encounter OPD TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>service-type</td>
                </tr>
                <tr>
                    <td><a href=\"#Patient1-5\">Patient</a></td>
                    <td><a href=\"StructureDefinition-Patient-twpas.html\">病人資訊-Patient TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>name, identifier</td>
                </tr>
                <tr>
                    <td><a href=\"#Practitioner1-6\">Practitioner</a></td>
                    <td><a href=\"StructureDefinition-Practitioner-twpas.html\">醫事人員-Practitioner TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#ImagingStudy1-7\">ImagingStudy</a></td>
                    <td><a href=\"StructureDefinition-ImagingStudy-twpas.html\">DICOM影像-ImagingStudy TWPAS</a> </td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Media1-8\">Media</a></td>
                    <td><a href=\"StructureDefinition-Media-twpas.html\">非DICOM影像-Media TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#DiagnosticReport1-9\">DiagnosticReport</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-DiagnosticReport-image-twpas.html\">影像報告-DiagnosticReport Image TWPAS</a> (疾病資訊)<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-DiagnosticReport-twpas.html\">檢查報告-DiagnosticReport TWPAS</a> (疾病資訊)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Observation1-10\">Observation</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a> (疾病資訊)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-diagnostic-twpas.html\">基因資訊-Observation Diagnostic TWPAS</a><br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a> (評估資訊)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a> (評估資訊)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-tx-assessment-twpas.html\">治療後疾病狀態評估-Observation Treatment Assessment TWPAS</a> (結果資訊)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-blood-group-twpas.html\">血型-Observation Blood Group TWPAS</a> (病人資訊)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-subjective-twpas.html\">主觀描述-Observation Subjective TWPAS</a> (門診病歷)<br />\u00a0\u00a0
                            <a href=\"StructureDefinition-Observation-objective-twpas.html\">客觀描述-Observation Objective TWPAS</a> (門診病歷)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#ClinicalImpression\">ClinicalImpression</a></td>
                    <td><a href=\"StructureDefinition-ClinicalImpression-twpas.html\">評估-ClinicalImpression TWPAS</a> (門診病歷)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#CarePlan\">CarePlan</a></td>
                    <td><a href=\"StructureDefinition-CarePlan-twpas.html\">計畫-CarePlan TWPAS</a> (門診病歷)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Condition\">Condition</a></td>
                    <td><a href=\"StructureDefinition-Condition-twpas.html\">診斷-Condition TWPAS</a> (門診病歷)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#MedicationRequest1-11\">MedicationRequest</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-MedicationRequest-treat-twpas.html\">用藥品項-MedicationRequest Treat TWPAS</a> (治療資訊)<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a> (申請項目)</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Procedure1-12\">Procedure</a></td>
                    <td><a href=\"StructureDefinition-Procedure-twpas.html\">放射/照光治療-Procedure TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Substance1-13\">Substance</a></td>
                    <td><a href=\"StructureDefinition-Substance-twpas.html\">放射/照光治療總劑量-Substance TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Specimen1-14\">Specimen</a></td>
                    <td><a href=\"StructureDefinition-Specimen-twpas.html\">基因檢測檢體-Specimen TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#DocumentReference1-15\">DocumentReference</a></td>
                    <td><a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Coverage1-16\">Coverage</a></td>
                    <td><a href=\"StructureDefinition-Coverage-twpas.html\">健保事前審查計畫-Coverage</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Operationoutcome1-18\">OperationOutcome</a></td>
                    <td><a href=\"StructureDefinition-Operationoutcome-twpas.html\">系統回應訊息-OperationOutcome TWPAS</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr />
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Bundle1-1\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Bundle</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/Bundle.html\">Bundle</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-Bundle-twpas.html\">癌藥事前審查-Bundle TWPAS</a><br />
                        <a href=\"StructureDefinition-Bundle-response-twpas.html\">事前審查回覆-Bundle Response TWPAS</a><br />
                        <a href=\"StructureDefinition-Bundle-immunologic-agent-twpas.html\">免疫製劑事前審查-Bundle Immunologic Aagent TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Bundle-id.html\">_id</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Bundle?_id=[id]</code><br/>
                                        <code>GET [base]/Bundle/[id]</code>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Claim1-2\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Claim</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/Claim.html\">Claim</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-Claim-twpas.html\">癌藥事前審查-Claim TWPAS</a><br />
                        <a href=\"StructureDefinition-Claim-immunologic-agent-twpas.html\">免疫製劑事前審查-Claim Immunologic Aagent TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Claim-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Claim?identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Claim-patient.html\">patient</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Claim?patient={Type/}[id]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Claim-func-type.html\">func-type</a></td>
                                    <td><code>reference</code></td>
                                    <td>
                                        <code>GET [base]/Claim?func-type={system|}[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"ClaimResponse\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>ClaimResponse</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/claimresponse.html\">ClaimResponse</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-ClaimResponse-self-assessment-twpas.html\">自主審查-ClaimResponse Self Assessment TWPAS</a><br />
                        <a href=\"StructureDefinition-ClaimResponse-twpas.html\">事前審查結果-ClaimResponse TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-adjudication-reason.html\">adjudication-reason</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?adjudication-reason=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-request.html\">request</a>.<a href=\"SearchParameter-Claim-patient.html\">patient</a>.<a href=\"SearchParameter-Patient-name.html\">name</a></td>
                                    <td><code>reference, string</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?request.patient.name=[string]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-request.html\">request</a>.<a href=\"SearchParameter-Claim-patient.html\">patient</a>.<a href=\"SearchParameter-Patient-identifier.html\">identifier</a></td>
                                    <td><code>reference, token</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?request.patient.identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-request.html\">request</a>.<a href=\"SearchParameter-Claim-identifier.html\">identifier</a></td>
                                    <td><code>reference, token</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?request.identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-request.html\">request</a>.<a href=\"SearchParameter-Claim-func-type.html\">func-type</a></td>
                                    <td><code>reference, token</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?request.func-type={system|}[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-ClaimResponse-created.html\">created</a> + <a href=\"SearchParameter-ClaimResponse-disposition.html\">disposition</a></td>
                                    <td><code>date, string</code></td>
                                    <td>
                                        <code>GET [base]/ClaimResponse?created={gt|lt|ge|le}[date]{&amp;created={gt|lt|ge|le}[date]}&amp;disposition=[已受理|審畢結果]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"AllergyIntolerance\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>AllergyIntolerance</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-AllergyIntolerance-twpas.html\">過敏史-AllergyIntolerance TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Organization1-3\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Organization</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"http://hl7.org/fhir/R4/organization.html\">Organization</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-Organization-twpas.html\">機構-Organization TWPAS</a><br />
                            <a href=\"StructureDefinition-Organization-genetic-testing-twpas.html\">基因檢測機構-Organization Genetic Testing TWPAS</a><br />
                            <a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">TW Core Organization Government</a>
                        </p>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Encounter1-4\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Encounter</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/Encounter.html\">Encounter</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-Encounter-twpas.html\">就醫科別-Encounter TWPAS</a><br />
                        <a href=\"StructureDefinition-Encounter-opd-twpas.html\">門診病歷-Encounter OPD TWPAS</a> (門診病歷)
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Encounter-service-type.html\">service-type</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Encounter?service-type={system|}[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Patient1-5\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Patient</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Patient-twpas.html\">病人資訊-Patient TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Patient-name.html\">name</a></td>
                                    <td><code>string</code></td>
                                    <td>
                                        <code>GET [base]/Patient?name=[string]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Patient-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Patient?identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Practitioner1-6\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Practitioner</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Practitioner-twpas.html\">醫事人員-Practitioner TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"ImagingStudy1-7\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>ImagingStudy</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-ImagingStudy-twpas.html\">DICOM影像-ImagingStudy TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Media1-8\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Media</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Media-twpas.html\">非DICOM影像-Media TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"DiagnosticReport1-9\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>DiagnosticReport</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html\">DiagnosticReport</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a
                                href=\"StructureDefinition-DiagnosticReport-image-twpas.html\">影像報告-DiagnosticReport Image TWPAS</a><br /><a
                                href=\"StructureDefinition-DiagnosticReport-twpas.html\">檢查報告-DiagnosticReport TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Observation1-10\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Observation</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"http://hl7.org/fhir/R4/observation.html\">Observation</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a
                                href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-diagnostic-twpas.html\">基因資訊-Observation Diagnostic TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-tx-assessment-twpas.html\">治療後疾病狀態評估-Observation Treatment Assessment TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-blood-group-twpas.html\">血型-Observation Blood Group TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-subjective-twpas.html\">主觀描述-Observation Subjective TWPAS</a><br /><a
                                href=\"StructureDefinition-Observation-objective-twpas.html\">客觀描述-Observation Objective TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"ClinicalImpression\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>ClinicalImpression</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-ClinicalImpression-twpas.html\">評估-ClinicalImpression TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"CarePlan\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>CarePlan</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-CarePlan-twpas.html\">計畫-CarePlan TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Condition\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Condition</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Condition-twpas.html\">診斷-Condition TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"MedicationRequest1-11\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>MedicationRequest</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"http://hl7.org/fhir/R4/medicationrequest.html\">MedicationRequest</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a
                                href=\"StructureDefinition-MedicationRequest-treat-twpas.html\">用藥品項-MedicationRequest Treat TWPAS</a><br /><a
                                href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a>
                        </p>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Procedure1-12\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Procedure</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Procedure-twpas.html\">放射/照光治療-Procedure TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Substance1-13\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Substance</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Substance-twpas.html\">放射/照光治療總劑量-Substance TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Specimen1-14\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Specimen</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Specimen-twpas.html\">基因檢測檢體-Specimen TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"DocumentReference1-15\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>DocumentReference</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Coverage1-16\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Coverage</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Coverage-twpas.html\">健保事前審查計畫-Coverage TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Operationoutcome1-18\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Operationoutcome</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Operationoutcome-twpas.html\">系統回應訊息-OperationOutcome TWPAS</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
</div>"