//-------------------------Bundle-------------------------
Instance: Bundle-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Bundle-id"
* name = "BundleID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查(Bundle)的邏輯性ID"
* code = #_id
* base = #Bundle
* expression = "Bundle.id"
* type = #token

//-------------------------受理編號-------------------------
/*Instance: Bundle-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Bundle-identifier"
* name = "BundleIdentifier"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查(Bundle)的受理編號(identifier)"
* code = #identifier
* base = #Bundle
* expression = "Bundle.identifier"
* type = #token*/

Instance: Claim-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Claim-identifier"
* name = "ClaimIdentifier"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查(Claim)的受理編號(identifier)"
* code = #identifier
* base = #Claim
* expression = "Claim.identifier"
* type = #token

//-------------------------ClaimResponse-------------------------

//-------------------------核定註記-------------------------
Instance: ClaimResponse-adjudication-reason
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/ClaimResponse-adjudication-reason"
* name = "ClaimResponseAdjudicationReason"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "衛生福利部中央健康保險署"
* description = "事前審查回覆(ClaimResponse)的核定註記(item.adjudication.reason)"
* code = #adjudication-reason
* base = #ClaimResponse
* expression = "ClaimResponse.item.adjudication.reason"
* type = #string

//--------------受理日期、核定日期----------------
Instance: ClaimResponse-created
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/ClaimResponse-created"
* name = "ClaimResponseCreated"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查回覆(ClaimResponse)的受理日期或核定日期(Claim)"
* code = #created
* base = #ClaimResponse
* expression = "ClaimResponse.created"
* type = #date

Instance: ClaimResponse-disposition
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/ClaimResponse-disposition"
* name = "ClaimResponseDisposition"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查回覆(ClaimResponse)的案件受理狀態(disposition)"
* code = #disposition
* base = #ClaimResponse
* expression = "ClaimResponse.disposition"
* type = #string

Instance: ClaimResponse-request
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/ClaimResponse-request"
* name = "ClaimResponseRequest"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查回覆(ClaimResponse)關聯的事前審查(Claim)"
* code = #request
* base = #ClaimResponse
* expression = "ClaimResponse.request"
* type = #reference
* chain[0] = "identifier"
* chain[1] = "patient"
* chain[2] = "func-type"

//-------------------------Claim-------------------------
Instance: Claim-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Claim-patient"
* name = "ClaimID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查(Claim)的病人資訊(patient)"
* code = #patient
* base = #Claim
* expression = "Claim.id"
* type = #reference
* chain[0] = "name"
* chain[1] = "identifier"

//-------------------Patient-------------------
//--------------------姓名-------------------
Instance: Patient-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Patient-name"
* name = "PatientName"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "病人的姓名(name)，該查詢可能與 HumanName 中的任何字串匹配，包括完整的中文姓名(text)、英文姓(family)、英文名(given)、姓名前面的頭銜(prefix)、姓名後面的稱謂(suffix)。"
* code = #name
* base = #Patient
* expression = "Patient.name"
* type = #string
//------------------身分證號-----------------
Instance: Patient-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Patient-identifier"
* name = "PatientIdentifier"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "病人的身分證號(identifier)"
* code = #identifier
* base = #Patient
* expression = "Patient.identifier"
* type = #token

//-------------------就醫科別-------------------
Instance: Claim-func-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Claim-func-type"
* name = "ClaimFuncType"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "衛生福利部中央健康保險署"
* description = "事前審查(Claim)的就醫科別(extension: encounter)"
* code = #func-type
* base = #Claim
* expression = "Claim.extension.where(url = 'https://twcore.mohw.gov.tw/ig/pas/StructureDefinition/extension-claim-encounter').value.ofType(Reference)"
* type = #reference
* chain[0] = "service-type"

//--------------Encounter--------------
Instance: Encounter-service-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Encounter-service-type"
* name = "EncounterServiceType"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "衛生福利部中央健康保險署"
* description = "就醫科別(serviceType)"
* code = #service-type
* base = #Encounter
* expression = "Encounter.serviceType"
* type = #token

/*
//-------------------------Claim-------------------------
Instance: Claim-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Claim-id"
* name = "ClaimID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "事前審查(Claim)的邏輯性ID"
* code = #_id
* base = #Claim
* expression = "Claim.id"
* type = #token

//-------------------------Organization-------------------------
Instance: Organization-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Organization-id"
* name = "OrganizationID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "機構的邏輯性ID"
* code = #_id
* base = #Organization
* expression = "Organization.id"
* type = #token

//-------------------------Encounter-------------------------
Instance: Encounter-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Encounter-id"
* name = "EncounterID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "就醫科別的邏輯性ID"
* code = #_id
* base = #Encounter
* expression = "Encounter.id"
* type = #token

//-------------------------Patient-------------------------

Instance: Patient-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Patient-id"
* name = "PatientID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "病人的邏輯性ID"
* code = #_id
* base = #Patient
* expression = "Patient.id"
* type = #token

//-------------------------Practitioner-------------------------
Instance: Practitioner-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Practitioner-id"
* name = "PractitioneID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "醫事人員的邏輯性ID"
* code = #_id
* base = #Practitioner
* expression = "Practitioner.id"
* type = #token

//-------------------------ImagingStudy-------------------------
Instance: ImagingStudy-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/ImagingStudy-id"
* name = "ImagingStudyID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "DICOM影像的邏輯性ID"
* code = #_id
* base = #ImagingStudy
* expression = "ImagingStudy.id"
* type = #token

//-------------------------Media-------------------------
Instance: Media-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Media-id"
* name = "MediaID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "非DICOM影像的邏輯性ID"
* code = #_id
* base = #Media
* expression = "Media.id"
* type = #token

//-------------------------DiagnosticReport-------------------------
Instance: DiagnosticReport-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/DiagnosticReport-id"
* name = "DiagnosticReportID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "影像報告/檢查報告的邏輯性ID"
* code = #_id
* base = #DiagnosticReport
* expression = "DiagnosticReport.id"
* type = #token

//-------------------------Observation-------------------------
Instance: Observation-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Observation-id"
* name = "ObservationID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "癌症分期量表/基因資訊/檢驗檢查/病人狀態評估/治療後疾病狀態評估的邏輯性ID"
* code = #_id
* base = #Observation
* expression = "Observation.id"
* type = #token

//-------------------------MedicationRequest-------------------------
Instance: MedicationRequest-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/MedicationRequest-id"
* name = "MedicationRequestID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "用藥品項/事前審查品項的邏輯性ID"
* code = #_id
* base = #MedicationRequest
* expression = "MedicationRequest.id"
* type = #token

//-------------------------Procedure-------------------------
Instance: Procedure-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Procedure-id"
* name = "ProcedureID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "放射治療的邏輯性ID"
* code = #_id
* base = #Procedure
* expression = "Procedure.id"
* type = #token

//-------------------------Substance-------------------------
Instance: Substance-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Substance-id"
* name = "SubstanceID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "放射治療總劑量的邏輯性ID"
* code = #_id
* base = #Substance
* expression = "Substance.id"
* type = #token

//-------------------------Specimen-------------------------
Instance: Specimen-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Specimen-id"
* name = "SpecimenID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "檢體的邏輯性ID"
* code = #_id
* base = #Specimen
* expression = "Specimen.id"
* type = #token

//-------------------------DocumentReference-------------------------
Instance: DocumentReference-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/DocumentReference-id"
* name = "DocumentReferenceID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "文件參照的邏輯性ID"
* code = #_id
* base = #DocumentReference
* expression = "DocumentReference.id"
* type = #token

//-------------------------Coverage-------------------------
Instance: Coverage-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/pas/SearchParameter/Coverage-id"
* name = "CoverageID"
* status = #active
* version = "1.0.4"
* date = "2024-08-31"
* publisher = "HL7 International"
* description = "健保事前審查計畫的邏輯性ID"
* code = #_id
* base = #Coverage
* expression = "Coverage.id"
* type = #token*/