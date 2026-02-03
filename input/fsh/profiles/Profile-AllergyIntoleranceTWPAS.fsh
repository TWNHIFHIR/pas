Profile:        AllergyIntoleranceTWPAS
Parent:         TWCoreAllergyIntolerance
Id:             AllergyIntolerance-twpas
Title:          "過敏史-AllergyIntolerance TWPAS"
Description:    "此過敏史-AllergyIntolerance TWPAS Profile說明本IG如何進一步定義臺灣核心-過敏或不耐症（TW Core AllergyIntolerance）Profile以呈現免疫製劑事前審查之過敏史"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/AllergyIntolerance-twpas"
* patient only Reference(PatientTWPAS)
* code ^short = "過敏史，由醫院自行填寫。"