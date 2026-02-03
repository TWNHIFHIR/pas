Profile:        EncounterOpdTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Id:             Encounter-opd-twpas
Title:          "門診病歷-Encounter OPD TWPAS"
Description:    "此門診病歷-Encounter OPD TWPAS Profile說明本IG如何進一步定義臺灣核心-就醫事件(TW Core Encounter) Profile以呈現免疫製劑事前審查中門診病歷之醫事機構、門診日期、科別、門診醫師"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-opd-twpas"
* serviceType 1..1
* serviceType from TWMedicalDepartmentSCT (preferred)
* serviceType ^binding.description = "完整代碼對應表請參照[就醫科別對應表](https://build.fhir.org/ig/MOHW-TWCoreIG/cctwFHIRterm/ValueSet-medical-department-sct-tw.html#%E5%B0%B1%E9%86%AB%E7%A7%91%E5%88%A5%E5%B0%8D%E6%87%89%E8%A1%A8)。"
* serviceType.coding 1..1
* serviceType.coding.code 1..1
* serviceType.coding ^slicing.rules = #closed
* serviceType.coding[TWMedicalConsultationDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署就醫科別"
* serviceType.coding[TWMedicalTreatmentDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署診療科別"
* serviceType.coding[TWMedicalDepartmentSCT] ^short = "對應至SNOMED CT之就醫科別"
* subject 1..
* subject only Reference(PatientTWPAS)
* participant.individual only Reference(PractitionerTWPAS)
* serviceProvider only Reference(OrganizationTWPAS)
* period 1..1
* period.start 1..1
* serviceProvider 1..1
* participant 1..1
* participant.individual 1..
* diagnosis 1..*
* diagnosis.rank 1..1
* diagnosis.condition only Reference(ConditionTWPAS)
/* extension contains
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-encounter-subjective named subjective 1..1 MS and
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-encounter-objective named objective 1..1 MS and
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-encounter-clinicalImpression named assessment 1..1 MS and
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-encounter-carePlan named plan 1..1 MS*/

* serviceProvider ^short = "醫事機構代碼，必須存在於醫事機構基本資料檔內。"
* period.start ^short = "門診日期，YYYY-MM-DD，西元年月日。"
* serviceType ^short = "科別，完整代碼對應表請參照就醫科別對應表。"
* participant.individual ^short = "門診醫師"
* diagnosis.condition ^short = "診斷"
* diagnosis.rank ^short = "rank=1時為主要疾病；rank>=2代表共病。"
/* extension[subjective] ^short = "主觀描述(S)"
* extension[objective] ^short = "客觀描述(O)"
* extension[assessment] ^short = "評估(A)"
* extension[plan] ^short = "計畫(P)"*/
* class ^short = "就醫分類。【因FHIR設計而需必填】"
* class from ActEncounterCode
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* status ^short = "就醫現況。【因FHIR設計而需必填】"
* status = http://hl7.org/fhir/encounter-status#finished
* . obeys rank-1

Invariant:   rank-1
Description: "diagnosis.rank一定會有一個「1」，且只能出現一次。"
Expression:  "diagnosis.where(rank = 1).count() = 1"
Severity:    #error

Profile:        ConditionTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Id:             Condition-twpas
Title:          "診斷-Condition TWPAS"
Description:    "此診斷-Condition TWPAS Profile說明本IG如何進一步定義臺灣核心-病情、問題或診斷（TW Core Condition）Profile以呈現免疫製劑事前審查之診斷"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Condition-twpas"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* clinicalStatus.coding 1..1
* category.coding 1..1
* category.coding = http://loinc.org#29548-5
* subject 1..1
* subject only Reference(PatientTWPAS)
* code 1..1
* code.coding 1..1
* code ^short = "診斷"
* code.coding[icd10-cm-2021] 0..0
* code.coding[icd9-cm-2001] 0..0
* code.coding[absentOrUnknownProblem] 0..0
* code.coding[sct] 0..0
* code.coding ^slicing.rules = #closed

Profile:        ObservationSubjectiveTWPAS
Parent:         TWCoreObservationScreeningAssessment
Id:             Observation-subjective-twpas
Title:          "主觀描述-Observation Subjective TWPAS"
Description:    "此主觀描述-Observation Subjective TWPAS Profile說明本IG如何進一步定義臺灣核心-健康狀態篩檢與評估（TW Core Observation Screening Assessment） Profile以呈現免疫製劑事前審查之主觀描述（S）"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-subjective-twpas"
* subject only Reference(PatientTWPAS)
* code = http://loinc.org#61150-9
* value[x] 1..
* value[x] ^short = "主觀描述，由醫院自行填寫。"
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)

Profile:        ObservationObjectiveTWPAS
Parent:         TWCoreObservationScreeningAssessment
Id:             Observation-objective-twpas
Title:          "客觀描述-Observation Objective TWPAS"
Description:    "此客觀描述-Observation Objective TWPAS Profile說明本IG如何進一步定義臺灣核心-健康狀態篩檢與評估（TW Core Observation Screening Assessment） Profile以呈現免疫製劑事前審查之客觀描述（O）"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-objective-twpas"
* subject only Reference(PatientTWPAS)
* code = http://loinc.org#61149-1
* value[x] 1..
* value[x] ^short = "客觀描述，由醫院自行填寫。"
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)

Profile:        ClinicalImpressionTWPAS
Parent:         ClinicalImpression
Id:             ClinicalImpression-twpas
Title:          "評估-ClinicalImpression TWPAS"
Description:    "此評估-ClinicalImpression TWPAS Profile說明本IG如何進一步定義FHIR的ClinicalImpression Resource以呈現免疫製劑事前審查之評估（A）"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClinicalImpression-twpas"
* subject only Reference(PatientTWPAS)
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)
* summary 1..1
* summary ^short = "評估，由醫院自行填寫。"


Profile:        CarePlanTWPAS
Parent:         TWCoreCarePlan
Id:             CarePlan-twpas
Title:          "計畫-CarePlan TWPAS"
Description:    "此計畫-CarePlan TWPAS Profile說明本IG如何進一步定義臺灣核心-照護計畫（TW Core CarePlan） Profile以呈現免疫製劑事前審查之計畫（P）"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/CarePlan-twpas"
* intent = http://hl7.org/fhir/request-intent#plan
* subject only Reference(PatientTWPAS)
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)
* description 1..1
* description ^short = "計畫，由醫院自行填寫。"


/*
Extension: EncounterSubjective
Id: extension-encounter-subjective
Description: "主觀描述"
Context: Encounter
* . ^definition = "主觀描述"
* value[x] only Reference(ObservationSubjectiveTWPAS)

Extension: EncounterObjective
Id: extension-encounter-objective
Description: "客觀描述"
Context: Encounter
* . ^definition = "客觀描述"
* value[x] only Reference(ObservationObjectiveTWPAS)

Extension: EncounterClinicalImpression
Id: extension-encounter-clinicalImpression
Description: "評估"
Context: Encounter
* . ^definition = "評估"
* value[x] only Reference(ClinicalImpressionTWPAS)

Extension: EncounterCarePlan
Id: extension-encounter-carePlan
Description: "計畫"
Context: Encounter
* . ^definition = "計畫"
* value[x] only Reference(CarePlanTWPAS)
*/

