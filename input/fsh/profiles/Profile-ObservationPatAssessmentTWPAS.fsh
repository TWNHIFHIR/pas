Profile:        ObservationPatientAssessmentTWPAS
Parent:         Observation
Id:             Observation-pat-assessment-twpas
Title:          "病人狀態評估-Observation Patient Assessment TWPAS"
Description:    "此病人狀態評估-Observation Patient Assessment TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現事前審查中評估資訊之病人狀態評估"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-pat-assessment-twpas"
* effective[x] 1..1 MS
* effective[x] only dateTime
* code MS
* code from PatAst //(extensible)
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding 1..1
* code.coding.code 1..1
* code.coding.system 1..1
* category 1..1
* category ^short = "因設計而須必填。"
* category = NHIPASSupportingInfoType#patientAssessment
* value[x] MS
* value[x] only string or integer or Quantity
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* subject only Reference(PatientTWPAS)
* subject 1.. MS

* code ^short = "病人狀態評估項目代碼"
* value[x] ^short = "病人狀態評估結果"
* effectiveDateTime ^short = "病人狀態評估日期，YYYY-MM-DD，西元年月日。"
* performer ^short = "評估項目醫事人員身分證號"

* . obeys pat-ast-value

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding"
* component ^slicing.rules = #closed
* component contains
    hearing-impaired 0..1 MS and
    peripheral-motor-neuropathy 0..1 MS and
    peripheral-sensory-neuropathy 0..1 MS
* component[hearing-impaired] ^short = "Hearing impaired"
* component[hearing-impaired].code ^short = "Hearing impaired"
* component[hearing-impaired].code.coding 1..1
* component[hearing-impaired].code.coding.system 1..1
* component[hearing-impaired].code.coding.code 1..1
* component[hearing-impaired].code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast#C143528
* component[hearing-impaired].value[x] 1..1 MS
* component[hearing-impaired].value[x] only string
* component[hearing-impaired].value[x] ^short = "grade1~5"

* component[peripheral-motor-neuropathy] ^short = "Peripheral motor neuropathy"
* component[peripheral-motor-neuropathy].code ^short = "Peripheral motor neuropathy"
* component[peripheral-motor-neuropathy].code.coding 1..1
* component[peripheral-motor-neuropathy].code.coding.system 1..1
* component[peripheral-motor-neuropathy].code.coding.code 1..1
* component[peripheral-motor-neuropathy].code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast#C143750
* component[peripheral-motor-neuropathy].value[x] 1..1 MS
* component[peripheral-motor-neuropathy].value[x] only string
* component[peripheral-motor-neuropathy].value[x] ^short = "grade1~5"

* component[peripheral-sensory-neuropathy] ^short = "Peripheral sensory neuropathy"
* component[peripheral-sensory-neuropathy].code ^short = "Peripheral sensory neuropathy"
* component[peripheral-sensory-neuropathy].code.coding 1..1
* component[peripheral-sensory-neuropathy].code.coding.system 1..1
* component[peripheral-sensory-neuropathy].code.coding.code 1..1
* component[peripheral-sensory-neuropathy].code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast#C143752
* component[peripheral-sensory-neuropathy].value[x] 1..1 MS
* component[peripheral-sensory-neuropathy].value[x] only string
* component[peripheral-sensory-neuropathy].value[x] ^short = "grade1~5"

* derivedFrom only Reference(DocumentReferenceTWPAS)
* derivedFrom ^short = "病人狀態評估報告（檔案路徑）及病人狀態評估報告名稱"

Invariant:   pat-ast-value
Description: "若病人狀態評估項目代碼(code)為88020-3，結果值(valueString)須填寫class1/class2/class3/class4其中一項；
若病人狀態評估項目代碼(code)為98153-0，結果值(valueString)須填寫A/B/C其中一項；
若病人狀態評估項目代碼(code)為89247-1，結果值(valueInteger)須填寫0~5其中的值；
若病人狀態評估項目代碼(code)為89243-0，結果值(valueInteger)須填寫0~100其中的值；
若病人狀態評估項目代碼(code)為IPS，結果值(valueInteger)須填寫0~7其中的值；
若病人狀態評估項目代碼(code)為PDAI，結果值(valueInteger)須填寫0~263其中的值；
若病人狀態評估項目代碼(code)為CIRS，結果值(valueInteger)須填寫0~56其中的值；
若病人狀態評估項目代碼(code)為75633-8，結果值(valueQuantity)須填寫0~10其中的值，可包含小數點下兩位；
若病人狀態評估項目代碼(code)為HCTCI，結果值(valueInteger)須填寫0~26其中的值；
若病人狀態評估項目代碼(code)為MPNSAFTSS，結果值(valueInteger)須填寫0~100其中的值；
若病人狀態評估項目代碼(code)為MPN10，結果值(valueInteger)須填寫0~100其中的值；
若病人狀態評估項目代碼(code)為711434002，結果值(component.valueString)須填寫grade1/grade2/grade3/grade4/grade5其中一項；
若病人狀態評估項目代碼(code)為429712009，結果值(valueInteger)須填寫0~10其中的值；
若病人狀態評估項目代碼(code)為GPPGA，結果值(valueInteger)須填寫0~4其中的值；
若病人狀態評估項目代碼(code)為273364009，結果值(valueInteger)須填寫0~600其中的值；
若病人狀態評估項目代碼(code)為Mayo，結果值(valueInteger)須填寫0~12其中的值；
若病人狀態評估項目代碼(code)為MayoE，結果值(valueInteger)須填寫0~12其中的值；
若病人狀態評估項目代碼(code)為PUCAI，結果值(valueInteger)須填寫0~90其中的值。"
Expression:  "((code.coding.exists(code='88020-3')) implies (value.ofType(string) = 'class1' or value.ofType(string) = 'class2' or value.ofType(string) = 'class3' or value.ofType(string) = 'class4')) and ((code.coding.exists(code='98153-0')) implies (value.ofType(string) =  'A' or value.ofType(string) = 'B' or value.ofType(string) = 'C')) and 
((code.coding.exists(code='89247-1')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 5)) and 
((code.coding.exists(code='IPS')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 7)) and 
((code.coding.exists(code='PDAI')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 263)) and 
((code.coding.exists(code='CIRS')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 56)) and 
((code.coding.exists(code='75633-8')) implies (value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 10 and (value.ofType(Quantity).value * 100).round() = value.ofType(Quantity).value * 100)) and 
((code.coding.exists(code='HCTCI')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 26)) and 
((code.coding.exists(code='MPNSAFTSS')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 100)) and 
((code.coding.exists(code='MPN10')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 100)) and 
((code.coding.exists(code='711434002')) implies (component.all(value.ofType(string) = 'grade1' or value.ofType(string) = 'grade2' or value.ofType(string) = 'grade3' or value.ofType(string) = 'grade4' or value.ofType(string) = 'grade5'))) and 
((code.coding.exists(code='429712009')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 10)) and 
((code.coding.exists(code='GPPGA')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 4)) and 
((code.coding.exists(code='273364009')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 600)) and 
((code.coding.exists(code='Mayo')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 12)) and 
((code.coding.exists(code='MayoE')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 12)) and 
((code.coding.exists(code='PUCAI')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 90))"
Severity:    #error

(code.coding.exists(code='75633-8')) implies (value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 10 and (value.ofType(Quantity).value * 100).round() = value.ofType(Quantity).value * 100)