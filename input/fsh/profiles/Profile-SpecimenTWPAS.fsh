Profile:        SpecimenTWPAS
Parent:         TWCoreSpecimen
Id:             Specimen-twpas
Title:          "基因檢測檢體-Specimen TWPAS"
Description:    "此基因檢測檢體-Specimen TWPAS Profile說明本IG如何進一步定義臺灣核心-檢體(TW Core Specimen) Profile以呈現癌藥事前審查中基因資訊之檢測檢體相關內容"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Specimen-twpas"
* subject only Reference(PatientTWPAS)
* receivedTime and type MS
* type 1..1
* receivedTime 1..1
* type from SpecimenType
* receivedTime ^short = "基因檢測日期"
* type ^short = "基因檢測檢體類型"