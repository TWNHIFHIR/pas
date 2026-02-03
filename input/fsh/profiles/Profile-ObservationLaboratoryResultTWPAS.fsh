Profile:        ObservationLaboratoryResultTWPAS
Parent:         Observation
//Parent:         TWCoreObservationLaboratoryResult
Id:             Observation-laboratory-result-twpas
Title:          "檢驗檢查-Observation Laboratory Result TWPAS"
Description:    "此檢驗檢查-Observation Laboratory Result TWPAS Profile說明本IG如何進一步定義臺灣核心-檢驗檢查(TW Core Observation Laboratory Result) Profile以呈現事前審查中評估資訊之檢驗(查)相關資料"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-laboratory-result-twpas"
* code and subject and effective[x] and performer and value[x] MS
* effective[x] only dateTime
* code from LOINCCodes
/* code from CancerStageTypeVS
* code.coding 1..1
* code.coding[LOINCObservationCode] 0..0
* code.coding[TWLaboratoryCategory] 0..0
* code.coding.code 1..1*/
/* valueCodeableConcept 1..1
* valueCodeableConcept from CancerStageValueVS
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code 1..1*/
* referenceRange 0..1 MS
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.type MS
* referenceRange.text MS
* interpretation  0..1 MS
* component and component.value[x] and component.interpretation and component.referenceRange and component.referenceRange.low and component.referenceRange.high and component.referenceRange.type and component.referenceRange.text MS
* component.code MS
* component.code from LOINCCodes
* component.value[x] 1..1
* component.interpretation 0..1
* component.referenceRange 0..1
/** hasMember MS
* hasMember only Reference(ObservationLaboratoryResultTWPAS)*/
* performer 1..1
* performer only Reference(PractitionerTWPAS)
* subject 1..1
* subject only Reference(PatientTWPAS)
* derivedFrom MS
* derivedFrom only Reference(DocumentReferenceTWPAS)
* category 1..1
* category = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type#tests
* category ^short = "因FHIR設計而需必填"

* effectiveDateTime 1..1
* effectiveDateTime ^short = "檢驗(查)報告日期"
* code ^short = "檢驗(查)名稱或套組代碼"
* interpretation ^short = "檢驗(查)結果判讀"
* value[x] ^short = "檢驗(查)結果。若有多筆結果值，請以valueString並使用半形「;」符號分隔呈現。"
* referenceRange.low ^short = "檢驗(查)結果之參考範圍下限"
* referenceRange.high ^short = "檢驗(查)結果之參考範圍上限"
* referenceRange.type ^short = "檢驗(查)結果之參考範圍類型"
* referenceRange.text ^short = "檢驗(查)結果之參考範圍說明"
* component ^short = "套組中的檢驗"
* component.code ^short = "檢驗(查)名稱"
* component.value[x] ^short = "檢驗(查)結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component.interpretation ^short = "檢驗(查)結果判讀。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component.referenceRange.low ^short = "檢驗(查)結果之參考範圍下限"
* component.referenceRange.high ^short = "檢驗(查)結果之參考範圍上限"
* component.referenceRange.type ^short = "檢驗(查)結果之參考範圍類型"
* component.referenceRange.text ^short = "檢驗(查)結果之參考範圍說明"
* performer ^short = "簽發檢驗(查)報告醫事人員身分證號"
//* derivedFrom 1..*
* derivedFrom ^short = "檢驗(查)附件"

* . obeys lab-result

Invariant:   lab-result
Description: "至少填寫檢驗(查)結果(value[x])或套組中的檢驗(查)結果(component.value[x])"
Expression:  "value.exists() or component.value.exists()"
Severity:    #error