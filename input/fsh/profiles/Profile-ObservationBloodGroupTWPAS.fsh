Profile:        ObservationBloodGroupTWPAS
Parent:         Observation
Id:             Observation-blood-group-twpas
Title:          "血型-Observation Blood Group TWPAS"
Description:    "此血型-Observation Blood Group TWPAS Profile說明本IG如何進一步定義臺灣核心-臨床檢驗檢查（TW Core Observation Clinical Result） Profile以呈現免疫製劑事前審查之血型資訊"
* ^version = "1.2.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-blood-group-twpas"
* effective[x] only dateTime
* code.coding 1..1
* code.coding.code 1..1 MS
* code.coding.system = "http://loinc.org"
* code.coding.code = #882-1
* category  1..1
* category.coding  1..1
* category.coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type"
* category.coding.code = #bloodgroup
* category ^short = "因FHIR設計而需必填"

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips


* subject only Reference(PatientTWPAS)
* subject 1.. MS
* value[x] ^short = "血型"