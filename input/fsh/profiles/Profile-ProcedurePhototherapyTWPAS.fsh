Profile:        ProcedurePhototherapyTWPAS
Parent:         Procedure
Id:             Procedure-phototherapy-twpas
Title:          "照光治療-Procedure Phototherapy TWPAS"
Description:    "此照光治療-Procedure Phototherapy TWPAS Profile說明本IG如何進一步定義FHIR的Procedure Resource以呈現事前審查中治療資訊之照光治療相關資訊"
* ^version = "1.2.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Procedure-phototherapy-twpas"
* subject only Reference(PatientTWPAS)
* performed[x] only Period
* performed[x] 1..1 MS
* performedPeriod.start 1..1 MS
* performedPeriod.end 1..1 MS
* usedReference only Reference(SubstancePhototherapyTWPAS)
* usedReference 1..1 MS
* code 1..1 MS
* code from NHIPhototherapy
* code.coding 1..1
* code.coding.code 1..1 MS
* report MS
* report only Reference(DocumentReferenceTWPAS)

* status ^short = "【因FHIR設計而需必填】"
* code ^short = "照光治療種類"
* performedPeriod.start ^short = "照光治療起始日期，YYYY-MM-DD。"
* performedPeriod.end ^short = "照光治療終止日期，YYYY-MM-DD。"
* usedReference ^short = "照光治療總次數"
* report ^short = "照光治療紀錄"