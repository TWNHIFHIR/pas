Profile:        EncounterTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Id:             Encounter-twpas
Title:          "就醫科別-Encounter TWPAS"
Description:    "此就醫科別-Encounter TWPAS Profile說明本IG如何進一步定義臺灣核心-就醫事件(TW Core Encounter) Profile以呈現事前審查中院所資訊之就醫科別"
* ^version = "1.1.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-twpas"
* serviceType 1..1
* serviceType ^short = "就醫科別，完整代碼對應表請參照就醫科別對應表。"
* serviceType from TWMedicalDepartmentSCT (preferred)
* serviceType ^binding.description = "完整代碼對應表請參照[就醫科別對應表](https://build.fhir.org/ig/MOHW-TWCoreIG/cctwFHIRterm/ValueSet-medical-department-sct-tw.html#%E5%B0%B1%E9%86%AB%E7%A7%91%E5%88%A5%E5%B0%8D%E6%87%89%E8%A1%A8)。"
* serviceType.coding 1..1
* serviceType.coding.code 1..1
* serviceType.coding ^slicing.rules = #closed
* serviceType.coding[TWMedicalConsultationDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署就醫科別"
* serviceType.coding[TWMedicalTreatmentDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署診療科別"
* serviceType.coding[TWMedicalDepartmentSCT] ^short = "對應至SNOMED CT之就醫科別"
* subject only Reference(PatientTWPAS)

* class ^short = "就醫分類。【因FHIR設計而需必填】"
* class from ActEncounterCode
//* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* status ^short = "就醫現況。【因FHIR設計而需必填】"
* status = http://hl7.org/fhir/encounter-status#planned