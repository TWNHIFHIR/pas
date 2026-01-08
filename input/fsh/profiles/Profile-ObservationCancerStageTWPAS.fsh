Profile:        ObservationCancerStageTWPAS
Parent:         Observation
//Parent:         CancerStage
Id:             Observation-cancer-stage-twpas
Title:          "癌症分期量表-Observation Cancer Stage TWPAS"
Description:    "此癌症分期量表-Observation Cancer Stage TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現事前審查中疾病資訊之癌症分期量表相關資料"
* ^version = "1.1.1"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-cancer-stage-twpas"
* code and subject and effectiveDateTime and performer and value[x] MS
* effective[x] only dateTime
* effective[x] 1..1
* effectiveDateTime 1..1
* code from CancerStage (extensible)
* code.coding 1..1
* code.coding.code 1..1
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding.system 1..1
* category 1..1
* category ^short = "因設計而須必填。"
* category = NHIPASSupportingInfoType#cancerStage
* value[x] 1..1
* value[x] only CodeableConcept or string or integer
* valueCodeableConcept from CancerStageScore
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept MS
* valueString MS
* valueInteger MS
* performer 1..1
* performer only Reference(PractitionerTWPAS)
* subject only Reference(PatientTWPAS)
* subject 1.. MS

* code ^short = "癌症分期量表項目"
* value[x] ^short = "癌症分期分數或結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* valueCodeableConcept ^short = "癌症分期分數或結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* valueString ^short = "癌症分期分數或結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* valueInteger ^short = "癌症分期分數或結果。"
* effectiveDateTime ^short = "癌症分期量表評估日期，YYYY-MM-DD，西元年月日。"
* performer ^short = "簽發癌症分期報告醫師"
/*
* . obeys cancer-stage-score

Invariant:   cancer-stage-score
Description: "若癌症分期量表項目代碼(code)為385377005，結果值(valueInteger)須填寫`1`~`5`其中的值；若癌症分期量表項目代碼(code)為1149131009，結果值(valueInteger)須填寫`0`~`4`其中的值；若癌症分期量表項目代碼(code)為1149099005，結果值(valueString)須填寫`A`/`B`/`C`其中一項；若癌症分期量表項目代碼(code)為385361009，結果值(valueCodeableConcept)須來自CancerStageScore值集中的代碼；若癌症分期量表項目代碼(code)為CNS，結果值(valueInteger)須填寫`1`~`4`、`9`其中的值；若癌症分期量表項目代碼(code)為NET_2010，結果值(valueString)須填寫`G1`/`G2`/`G3`其中一項；若癌症分期量表項目代碼(code)為399390009，結果值(valueString)須填寫`T1NXMX`/`T1NXM0`/`T1NXM1`/`T1N0MX`/`T1N0M0`/`T1N0M1`/`T1N1MX`/`T1N1M0`/`T1N1M1`/`T1N2MX`/`T1N2M0`/`T1N2M1`/`T1N3MX`/`T1N3M0`/`T1N3M1`/`T2NXMX`/`T2NXM0`/`T2NXM1`/`T2N0MX`/`T2N0M0`/`T2N0M1`/`T2N1MX`/`T2N1M0`/`T2N1M1`/`T2N2MX`/`T2N2M0`/`T2N2M1`/`T2N3MX`/`T2N3M0`/`T2N3M1`/`T3NXMX`/`T3NXM0`/`T3NXM1`/`T3N0MX`/`T3N0M0`/`T3N0M1`/`T3N1MX`/`T3N1M0`/`T3N1M1`/`T3N2MX`/`T3N2M0`/`T3N2M1`/`T3N3MX`/`T3N3M0`/`T3N3M1`/`T4NXMX`/`T4NXM0`/`T4NXM1`/`T4N0MX`/`T4N0M0`/`T4N0M1`/`T4N1MX`/`T4N1M0`/`T4N1M1`/`T4N2MX`/`T4N2M0`/`T4N2M1`/`T4N3MX`/`T4N3M0`/`T4N3M1`其中一項。"
Expression:  "((code.coding.exists(code='385377005')) implies (value.ofType(integer) >= 1 and value.ofType(integer) <= 5)) and ((code.coding.exists(code='1149131009')) implies (value.ofType(integer) >= 0 and value.ofType(integer) <= 4)) and ((code.coding.exists(code='1149099005')) implies (value.ofType(string) = 'A' or value.ofType(string) = 'B' or value.ofType(string) = 'C')) and ((code.coding.exists(code='385361009')) implies (value.ofType(CodeableConcept).coding.exists(system='https://nhicore.nhi.gov.tw/pas/CodeSystem/nci-thesaurus'))) and ((code.coding.exists(code='CNS')) implies (value.ofType(integer) >= 1 and value.ofType(integer) <= 4 or value.ofType(integer) = 9)) and ((code.coding.exists(code='NET_2010')) implies (value.ofType(string) = 'G1' or value.ofType(string) = 'G2' or value.ofType(string) = 'G3')) and ((code.coding.exists(code='399390009')) implies (value.ofType(string) = 'T1NXMX' or value.ofType(string) = 'T1NXM0' or value.ofType(string) = 'T1NXM1' or value.ofType(string) = 'T1N0MX' or value.ofType(string) = 'T1N0M0' or value.ofType(string) = 'T1N0M1' or value.ofType(string) = 'T1N1MX' or value.ofType(string) = 'T1N1M0' or value.ofType(string) = 'T1N1M1' or value.ofType(string) = 'T1N2MX' or value.ofType(string) = 'T1N2M0' or value.ofType(string) = 'T1N2M1' or value.ofType(string) = 'T1N3MX' or value.ofType(string) = 'T1N3M0' or value.ofType(string) = 'T1N3M1' or value.ofType(string) = 'T2NXMX' or value.ofType(string) = 'T2NXM0' or value.ofType(string) = 'T2NXM1' or value.ofType(string) = 'T2N0MX' or value.ofType(string) = 'T2N0M0' or value.ofType(string) = 'T2N0M1' or value.ofType(string) = 'T2N1MX' or value.ofType(string) = 'T2N1M0' or value.ofType(string) = 'T2N1M1' or value.ofType(string) = 'T2N2MX' or value.ofType(string) = 'T2N2M0' or value.ofType(string) = 'T2N2M1' or value.ofType(string) = 'T2N3MX' or value.ofType(string) = 'T2N3M0' or value.ofType(string) = 'T2N3M1' or value.ofType(string) = 'T3NXMX' or value.ofType(string) = 'T3NXM0' or value.ofType(string) = 'T3NXM1' or value.ofType(string) = 'T3N0MX' or value.ofType(string) = 'T3N0M0' or value.ofType(string) = 'T3N0M1' or value.ofType(string) = 'T3N1MX' or value.ofType(string) = 'T3N1M0' or value.ofType(string) = 'T3N1M1' or value.ofType(string) = 'T3N2MX' or value.ofType(string) = 'T3N2M0' or value.ofType(string) = 'T3N2M1' or value.ofType(string) = 'T3N3MX' or value.ofType(string) = 'T3N3M0' or value.ofType(string) = 'T3N3M1' or value.ofType(string) = 'T4NXMX' or value.ofType(string) = 'T4NXM0' or value.ofType(string) = 'T4NXM1' or value.ofType(string) = 'T4N0MX' or value.ofType(string) = 'T4N0M0' or value.ofType(string) = 'T4N0M1' or value.ofType(string) = 'T4N1MX' or value.ofType(string) = 'T4N1M0' or value.ofType(string) = 'T4N1M1' or value.ofType(string) = 'T4N2MX' or value.ofType(string) = 'T4N2M0' or value.ofType(string) = 'T4N2M1' or value.ofType(string) = 'T4N3MX' or value.ofType(string) = 'T4N3M0' or value.ofType(string) = 'T4N3M1'))"
Severity:    #error
*/

