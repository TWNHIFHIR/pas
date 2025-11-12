Profile:        ConditionTWPAS
Parent:         TWCoreCondition
Id:             Condition-twpas
Title:          "重大傷病-Condition TWPAS"
Description:    "此重大傷病-Condition TWPAS Profile說明本IG如何進一步定義電子病歷交換單張-病例門診-重大傷病(PMRConditionMajorIllness) Profile以呈現癌藥事前審查之重大傷病"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Condition-twpas"
* subject only Reference(PatientTWPAS) 
* category 1..1
* category.coding 1..1
* category.coding.code 1..1
* category.coding = http://loinc.org#11338-1