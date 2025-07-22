Profile:        ProcedureTWPAS
Parent:         Procedure
//Parent:         TWCoreProcedure
Id:             Procedure-twpas
Title:          "放射治療-Procedure TWPAS"
Description:    "此放射治療-Procedure TWPAS Profile說明本IG如何進一步定義FHIR的Procedure Resource以呈現癌藥事前審查中治療資訊之放射治療"
* subject only Reference(PatientTWPAS)
* performed[x] only dateTime
* performed[x] 1..1 MS
* usedReference only Reference(SubstanceTWPAS)
* usedReference 1..1 MS
* code from ICD10PCS2023Radiotherapy (preferred)
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    ICD10PCS2023Radiotherapy 0..1 MS and
    ICD10PCS2014Radiotherapy 0..1 MS
* code.coding[ICD10PCS2014Radiotherapy] from ICD10PCSRadiotherapy (extensible)
* code.coding[ICD10PCS2014Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* code.coding[ICD10PCS2014Radiotherapy].system 1..1 MS
* code.coding[ICD10PCS2014Radiotherapy].code 1..1 MS
* code.coding[ICD10PCS2014Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding[ICD10PCS2023Radiotherapy] from ICD10PCS2023Radiotherapy (extensible)
* code.coding[ICD10PCS2023Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* code.coding[ICD10PCS2023Radiotherapy].system 1..1 MS
* code.coding[ICD10PCS2023Radiotherapy].code 1..1 MS
* code.coding[ICD10PCS2023Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"

/** code.coding 1..1
* code.coding[icd10-pcs-2021] 0..0
* code.coding[medical-service-payment] 0..0
* code.coding[sct-procedures] 0..0
* code.coding[loinc-procedures] 0..0
* code.coding[icd10-pcs-2014] 0..1 MS
* code.coding[icd10-pcs-2023] 0..1 MS
* code.coding[icd10-pcs-2014].code 1..1
* code.coding[icd10-pcs-2014].system 1..1
* code.coding[icd10-pcs-2023].code 1..1
* code.coding[icd10-pcs-2023].system 1..1
//* code.coding[icd10-pcs-2014] from ICD10PCSRadiotherapy
* code.coding[icd10-pcs-2023] from ICD10PCS2023Radiotherapy
* code from ICD10PCS2023Radiotherapy (preferred)*/


* status ^short = "放射治療狀態"
* code ^short = "放射治療項目。ICD-10-PCS。"
* usedReference ^short = "放射治療總劑量，整個放射治療療程之劑量。"
* performedDateTime ^short = "放射治療日期，YYYY-MM-DD。"