Profile:        BundleImmTWPAS
Parent:         TWCoreBundle
Id:             Bundle-immunologic-agent-twpas
Title:          "免疫製劑事前審查-Bundle Immunologic Aagent TWPAS"
Description:    "此免疫製劑事前審查-Bundle Immunologic Aagent TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現免疫製劑事前審查之內容"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-immunologic-agent-twpas"
* type = #collection
//* identifier ^short = "原受理編號"
* timestamp ^short = "緊急報備日期，YYYY-MM-DDTHH:MM:SS (需包含時區)；若本案件前已緊急報備過，本次為檢送完整資訊申請送件者，由機構將前次緊急報備時所填之申請日期，自填為緊急報備日期。"
* timestamp ^example.label = "緊急報備日期"
* timestamp ^example.valueDateTime = "2024-05-30T13:50:58.000+08:00"
* timestamp ^definition = "YYYY-MM-DDTHH:MM:SS (需包含時區)；若本案件前已緊急報備過，本次為檢送完整資訊申請送件者，由機構將前次緊急報備時所填之申請日期，自填為緊急報備日期。"
* timestamp ^comment = "緊急報備日期，YYYY-MM-DDTHH:MM:SS (需包含時區)；若本案件前已緊急報備過，本次為檢送完整資訊申請送件者，由機構將前次緊急報備時所填之申請日期，自填為緊急報備日期。"
* entry 6..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	claim 1..1 MS and
	encounter 1..1 MS and
	patient 1..1 MS and
	practitioner 1..* MS and
	organization 1..1 MS and
	diagnosticReportImage 0..* MS and
	imageStudy 0..* MS and
	media 0..* MS and
	diagnosticReport 0..* MS and
	specimen 0..* MS and
	documentReference 0..* MS and
	observationLaboratoryResult 0..* MS and
	observationPatientAssessment 0..* MS and
	medicationRequestTreat 0..* MS and
	procedure 0..* MS and
	substance 0..* MS and
	observationTreatmentAssessment 0..* MS and
	medicationRequestApply 1..* MS and
	coverage 1..1 MS and
	claimResponse 0..1 MS and
	organizationOrg 1..1 MS and
	condition 0..1 MS

* entry[condition] ^short = "重大傷病"
* entry[condition].resource 1..1 MS
* entry[condition].resource only ConditionTWPAS

* entry[claim] ^short = "免疫製劑事前審查(Claim)"
* entry[claim].resource 1..1 MS
* entry[claim].resource only ClaimImmTWPAS

* entry[encounter] ^short = "就醫科別"
* entry[encounter].resource 1..1 MS
* entry[encounter].resource only EncounterTWPAS

* entry[patient] ^short = "病人資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientTWPAS

* entry[practitioner] ^short = "醫師(申請醫師／簽發影像報告醫師／檢查報告醫師／簽發檢驗(查)報告醫事人員／評估項目醫事人員／門診醫師)"
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only PractitionerTWPAS

* entry[organization] ^short = "醫事機構"
* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationTWPAS

* entry[diagnosticReportImage] ^short = "影像報告"
* entry[diagnosticReportImage].resource 1..1 MS
* entry[diagnosticReportImage].resource only DiagnosticReportImageTWPAS

* entry[imageStudy] ^short = "DICOM影像"
* entry[imageStudy].resource 1..1 MS
* entry[imageStudy].resource only ImagingStudyTWPAS

* entry[media] ^short = "非DICOM影像"
* entry[media].resource 1..1 MS
* entry[media].resource only MediaTWPAS

* entry[diagnosticReport] ^short = "檢查報告"
* entry[diagnosticReport].resource 1..1 MS
* entry[diagnosticReport].resource only DiagnosticReportTWPAS

* entry[specimen] ^short = "檢體"
* entry[specimen].resource 1..1 MS
* entry[specimen].resource only SpecimenTWPAS

* entry[observationLaboratoryResult] ^short = "檢驗(查)"
* entry[observationLaboratoryResult].resource 1..1 MS
* entry[observationLaboratoryResult].resource only ObservationLaboratoryResultTWPAS

* entry[observationPatientAssessment] ^short = "病人狀態評估"
* entry[observationPatientAssessment].resource 1..1 MS
* entry[observationPatientAssessment].resource only ObservationPatientAssessmentTWPAS

* entry[medicationRequestTreat] ^short = "用藥品項"
* entry[medicationRequestTreat].resource 1..1 MS
* entry[medicationRequestTreat].resource only MedicationRequestTreatTWPAS

* entry[procedure] ^short = "放射/照光治療"
* entry[procedure].resource 1..1 MS
* entry[procedure].resource only ProcedureTWPAS

* entry[substance] ^short = "放射/照光治療總劑量"
* entry[substance].resource 1..1 MS
* entry[substance].resource only SubstanceTWPAS

* entry[documentReference] ^short = "基因報告／治療計畫文件／檢驗(查)附件／病人狀態評估報告"
* entry[documentReference].resource 1..1 MS
* entry[documentReference].resource only DocumentReferenceTWPAS

* entry[observationTreatmentAssessment] ^short = "治療後疾病狀態評估"
* entry[observationTreatmentAssessment].resource 1..1 MS
* entry[observationTreatmentAssessment].resource only ObservationTreatmentAssessmentTWPAS

* entry[medicationRequestApply] ^short = "事前審查品項"
* entry[medicationRequestApply].resource 1..1 MS
* entry[medicationRequestApply].resource only MedicationRequestApplyTWPAS

* entry[coverage] ^short = "健保事前審查計畫"
* entry[coverage].resource 1..1 MS
* entry[coverage].resource only CoverageTWPAS

* entry[claimResponse] ^short = "自主審查。若申請案件類別(Claim.priority)為自主審查(#3)時，須填寫。"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource only ClaimResponseSelfAssessmentTWPAS

* entry[organizationOrg] ^short = "政府機構"
* entry[organizationOrg].resource 1..1 MS
* entry[organizationOrg].resource only TWCoreOrganizationGovt



* . obeys applyReason-1 and applyReason-2 and applyReason-3 and applyReason-4 and applyReason-5 and applyReason-6 and applyReason-7 and applyReason-8 and applyReason-9 and applyReason-10 and applyReason-11 and applyReason-12 and applyReason-13 and applyReason-14 and applyReason-15 and applyReason-16 and claimResponse-1 and claimResponse-2