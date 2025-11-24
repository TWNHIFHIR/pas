Profile:        EncounterOpdTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Id:             Encounter-opd-twpas
Title:          "門診病歷-Encounter OPD TWPAS"
Description:    "此門診病歷-Encounter OPD TWPAS Profile說明本IG如何進一步定義臺灣核心-就醫事件(TW Core Encounter) Profile以呈現免疫製劑事前審查中門診病歷之醫事機構、門診日期、科別、門診醫師"
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
* subject only Reference(PatientTWPAS)
* participant.individual only Reference(PractitionerTWPAS)

* serviceProvider only Reference(OrganizationTWPAS)
* serviceProvider ^short = "醫事機構代碼，必須存在於醫事機構基本資料檔內。"
* period.start ^short = "門診日期，YYYY-MM-DD，西元年月日。"
* serviceType ^short = "科別，完整代碼對應表請參照就醫科別對應表。"
* participant.individual ^short = "門診醫師"

* class ^short = "就醫分類。【因FHIR設計而需必填】"
* class from ActEncounterCode
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* status ^short = "就醫現況。【因FHIR設計而需必填】"
* status = http://hl7.org/fhir/encounter-status#finished



Profile:        ConditionTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Id:             Condition-twpas
Title:          "診斷-Condition TWPAS"
Description:    "此診斷-Condition TWPAS Profile說明本IG如何進一步定義臺灣核心-病情、問題或診斷（TW Core Condition）Profile以呈現免疫製劑事前審查之診斷"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Condition-twpas"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category.coding = http://loinc.org#29548-5
* subject 1..1
* subject only Reference(PatientTWPAS)
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)