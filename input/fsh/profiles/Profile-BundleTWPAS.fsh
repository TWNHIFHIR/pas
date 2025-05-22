Profile:        BundleTWPAS
Parent:         TWCoreBundle
Id:             Bundle-twpas
Title:          "事前審查-Bundle TWPAS"
Description:    "此事前審查-Bundle TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現癌藥事前審查之內容"
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
	organizationGen 0..1 MS and
	diagnosticReportImage 0..* MS and
	imageStudy 0..* MS and
	media 0..* MS and
	observationCancerStage 0..* MS and
	diagnosticReport 0..* MS and
	observationDiagnostic 0..* MS and
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
	organizationOrg 1..1 MS

* entry[claim] ^short = "事前審查(Claim)"
* entry[claim].resource 1..1 MS
* entry[claim].resource only ClaimTWPAS

* entry[encounter] ^short = "就醫科別"
* entry[encounter].resource 1..1 MS
* entry[encounter].resource only EncounterTWPAS

* entry[patient] ^short = "病人資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientTWPAS

* entry[practitioner] ^short = "醫師(申請醫師／簽發影像報告醫師／簽發癌症分期報告醫師／檢查報告醫師／簽發檢驗(查)報告醫事人員／評估項目醫事人員)"
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only PractitionerTWPAS

* entry[organization] ^short = "醫事機構"
* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationTWPAS

* entry[organizationGen] ^short = "基因檢測機構"
* entry[organizationGen].resource 1..1 MS
* entry[organizationGen].resource only OrganizationGeneticTestingTWPAS

* entry[diagnosticReportImage] ^short = "影像報告"
* entry[diagnosticReportImage].resource 1..1 MS
* entry[diagnosticReportImage].resource only DiagnosticReportImageTWPAS

* entry[imageStudy] ^short = "DICOM影像"
* entry[imageStudy].resource 1..1 MS
* entry[imageStudy].resource only ImagingStudyTWPAS

* entry[media] ^short = "非DICOM影像"
* entry[media].resource 1..1 MS
* entry[media].resource only MediaTWPAS

* entry[observationCancerStage] ^short = "癌症分期量表"
* entry[observationCancerStage].resource 1..1 MS
* entry[observationCancerStage].resource only ObservationCancerStageTWPAS

* entry[diagnosticReport] ^short = "檢查報告"
* entry[diagnosticReport].resource 1..1 MS
* entry[diagnosticReport].resource only DiagnosticReportTWPAS

* entry[observationDiagnostic] ^short = "基因資訊"
* entry[observationDiagnostic].resource 1..1 MS
* entry[observationDiagnostic].resource only ObservationDiagnosticTWPAS

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

* entry[procedure] ^short = "放射治療"
* entry[procedure].resource 1..1 MS
* entry[procedure].resource only ProcedureTWPAS

* entry[substance] ^short = "放射治療總劑量"
* entry[substance].resource 1..1 MS
* entry[substance].resource only SubstanceTWPAS

* entry[documentReference] ^short = "基因報告／治療計畫文件／檢驗(查)附件"
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

* entry[claimResponse] ^short = "自主審查報備。若申請案件類別(Claim.priority)為自主審查報備(#3)時，須填寫。"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource only ClaimResponseSelfAssessmentTWPAS

* entry[organizationOrg] ^short = "政府機構"
* entry[organizationOrg].resource 1..1 MS
* entry[organizationOrg].resource only TWCoreOrganizationGovt



* . obeys applyReason-1 and applyReason-2 and applyReason-3 and applyReason-4 and applyReason-5 and applyReason-6 and applyReason-7 and applyReason-8 and applyReason-9 and applyReason-10 and applyReason-11 and applyReason-12 and applyReason-13 and claimResponse

/*Invariant:   oldAcptNo
Description: "若申報類別(Claim.subType)為申復(#3)，則填寫原送核階段受理編號。"
Expression:  "(Bundle.entry.select((resource as Claim).subType.coding).exists(code='3')) implies ((Bundle.identifier.exists() and Bundle.entry.select((resource as Claim).identifier).exists().not()) or (Bundle.identifier.exists().not() and Bundle.entry.select((resource as Claim).identifier).exists()) or (Bundle.identifier.exists() and Bundle.entry.select((resource as Claim).identifier).exists() and Bundle.identifier = Bundle.entry.select((resource as Claim).identifier)))"
Severity:    #error*/

/*Invariant:   applyReason-1
Description: "事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為`KC009612B5`、`KC010892B5`、`KC011112DE`、`KC011162B5`、`KC011362B5`、`KC01013229`、`KC01013230`、`KC01025219`、`KC01050238`、`KC01085229`、`KC00958229`、`KC011592DE`、`JC00154261`時，須填寫給付適應症條件代碼(Claim.item.programCode.coding)。"
Expression:  "(Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC009612B5')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC010892B5')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC011112DE')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC011162B5')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC011362B5')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC01013229')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC01013230')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC01025219')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC01050238')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC01085229')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC00958229')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='KC011592DE')) or (Bundle.entry.select((resource as MedicationRequest).medication.ofType(CodeableConcept).coding).exists(code='JC00154261')) implies (Bundle.entry.select((resource as Claim).item.programCode.coding).exists())"
Severity:    #error
*/

Invariant:   applyReason-1
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC009612B5，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P1(自113年12月擴增)、C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC009612B5').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC009612B5').all(programCode.coding.code.matches('C50P1|C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-2
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC010892B5，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P1、C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC010892B5').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC010892B5').all(programCode.coding.code.matches('C50P1|C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-3
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC011112DE，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P1、C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011112DE').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011112DE').all(programCode.coding.code.matches('C50P1|C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-4
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC011162B5，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P1、C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011162B5').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011162B5').all(programCode.coding.code.matches('C50P1|C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-5
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC011362B5，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011362B5').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC011362B5').all(programCode.coding.code.matches('C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-6
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 JC00154261，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 C50P1、C50P2、C50R1 或 C16R1"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'JC00154261').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'JC00154261').all(programCode.coding.code.matches('C50P1|C50P2|C50R1|C16R1'))"
Severity:    #error

Invariant:   applyReason-7
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01013229，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P001、P031 或 P081"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01013229').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01013229').all(programCode.coding.code.matches('P001|P031|P081'))"
Severity:    #error

Invariant:   applyReason-8
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01013230，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P001、P031、P081、P052、P101 或 P111"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01013230').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01013230').all(programCode.coding.code.matches('P001|P031|P081|P052|P101|P111'))"
Severity:    #error

Invariant:   applyReason-9
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01025219，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P001、P031、P081、P011、P012、P013、P014、P041、P042 或 P082"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01025219').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01025219').all(programCode.coding.code.matches('P001|P031|P081|P011|P012|P013|P014|P041|P042|P082'))"
Severity:    #error

Invariant:   applyReason-10
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01050238，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P011、P012、P013、P021、P041、P042 或 P072"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01050238').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01050238').all(programCode.coding.code.matches('P011|P012|P013|P021|P041|P042|P072'))"
Severity:    #error

Invariant:   applyReason-11
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01088229，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P021、P072 或 P121"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01088229').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01088229').all(programCode.coding.code.matches('P021|P072|P121'))"
Severity:    #error

Invariant:   applyReason-12
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC01085229，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P043 或 P091"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01085229').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC01085229').all(programCode.coding.code.matches('P043|P091'))"
Severity:    #error

Invariant:   applyReason-13
Description: "若事前審查品項代碼(MedicationRequest.medicationCodeableConcept)為 KC00958229，則給付適應症條件代碼(Claim.item.programCode.coding) 僅可為 P111"
Expression:  "Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC00958229').exists() implies Bundle.entry.resource.item.where(extension.value.ofType(Reference).resolve().medication.coding.code = 'KC00958229').all(programCode.coding.code.matches('P111'))"
Severity:    #error



Invariant:   claimResponse
Description: "若申請案件類別(Claim.priority)為自主審查報備(#3)時，須填寫核定日期(ClaimResponse.created)、核定數量(ClaimResponse.item.adjudication.value)及核定註記(ClaimResponse.item.adjudication.reason)。"
Expression:  "(Bundle.entry.select((resource as ClaimResponse).created).exists()) or (Bundle.entry.select((resource as ClaimResponse).item.adjudication.value).exists()) or (Bundle.entry.select((resource as ClaimResponse).item.adjudication.reason).exists())  implies (Bundle.entry.select((resource as Claim).priority.coding).exists(code='3'))"
Severity:    #error