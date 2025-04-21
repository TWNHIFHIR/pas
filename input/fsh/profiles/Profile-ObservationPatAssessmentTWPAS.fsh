Profile:        ObservationPatientAssessmentTWPAS
Parent:         Observation
Id:             Observation-pat-assessment-twpas
Title:          "病人狀態評估-Observation Patient Assessment TWPAS"
Description:    "此病人狀態評估-Observation Patient Assessment TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查中評估資訊之病人狀態評估"
* effective[x] 1..1 MS
* effective[x] only dateTime
* code MS
* code from PatAst (extensible)
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding 1..1
* code.coding.code 1..1
* code.coding.system 1..1
* category 1..1
* category ^short = "因設計而須必填。"
* category = NHIPASSupportingInfoType#patientAssessment
* value[x] 1..1 MS
* value[x] only string or integer
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* subject only Reference(PatientTWPAS)
* subject 1.. MS

* code ^short = "病人狀態評估項目代碼"
* value[x] ^short = "病人狀態評估結果"
* effectiveDateTime ^short = "病人狀態評估日期，YYYY-MM-DD，西元年月日。"
* performer ^short = "評估項目醫事人員身分證號"
* . obeys pat-ast-value

Invariant:   pat-ast-value
Description: "若病人狀態評估項目代碼(code)為88020-3，結果值(valueString)須填寫class1/class2/class3/class4其中一項；若病人狀態評估項目代碼(code)為98153-0，結果值(valueString)須填寫A/B/C其中一項；若病人狀態評估項目代碼(code)為89247-1，結果值(valueInteger)須填寫0~5其中的值；若病人狀態評估項目代碼(code)為89243-0，結果值(valueInteger)須填寫0~100其中的值；若病人狀態評估項目代碼(code)為IPS，結果值(valueInteger)須填寫0~7其中的值；若病人狀態評估項目代碼(code)為PDAI，結果值(valueInteger)須填寫0~263其中的值；若病人狀態評估項目代碼(code)為CIRS，結果值(valueInteger)須填寫0~56其中的值；若病人狀態評估項目代碼(code)為75633-8，結果值(valueInteger)須填寫0~10其中的值；若病人狀態評估項目代碼(code)為HCTCI，結果值(valueInteger)須填寫0~26其中的值。"
Expression:  "((code.coding.exists(code='88020-3')) implies (value.ofType(string) = 'class1' or value.ofType(string) = 'class2' or value.ofType(string) = 'class3' or value.ofType(string) = 'class4')) and ((code.coding.exists(code='98153-0')) implies (value.ofType(string) =  'A' or value.ofType(string) = 'B' or value.ofType(string) = 'C')) and ((code.coding.exists(code='89247-1')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 5)) and ((code.coding.exists(code='IPS')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 7)) and ((code.coding.exists(code='PDAI')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 263)) and ((code.coding.exists(code='CIRS')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 56)) and ((code.coding.exists(code='75633-8')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 10)) and ((code.coding.exists(code='HCTCI')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 26))"
Severity:    #error
