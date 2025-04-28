Profile:        SubstanceTWPAS
Parent:         Substance
Id:             Substance-twpas
Title:          "放射治療總劑量-Substance TWPAS"
Description:    "此放射治療總劑量-Substance TWPAS Profile說明本IG如何進一步定義FHIR的Substance Resource以呈現癌藥事前審查中治療資訊之放射治療總劑量"
* ingredient 0..1 MS
* ingredient.quantity.numerator 1..1 
* ingredient.quantity.numerator.value 1..1 MS
* ingredient.quantity.numerator.code 1..1 MS
* ingredient.quantity.numerator.code from http://hl7.org/fhir/ValueSet/ucum-common
* ingredient.quantity.numerator.code ^binding.description = "放射治療總劑量單位的代碼範圍請參考[Common UCUM units](https://hl7.org/fhir/R4/valueset-ucum-common.html)。"
* ingredient.quantity.numerator.system 1..1
* ingredient.quantity.numerator.system = "http://unitsofmeasure.org"
* code from ICD10PCS2023Radiotherapy (preferred)
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    ICD10PCS2023Radiotherapy 0..1 MS and
    ICD10PCS2014Radiotherapy 0..1 MS
* code.coding[ICD10PCS2014Radiotherapy] from ICD10PCSRadiotherapy (extensible)
* code.coding[ICD10PCS2014Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* code.coding[ICD10PCS2014Radiotherapy].system MS
* code.coding[ICD10PCS2014Radiotherapy].code 1..1 MS
* code.coding[ICD10PCS2014Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding[ICD10PCS2023Radiotherapy] from ICD10PCS2023Radiotherapy (extensible)
* code.coding[ICD10PCS2023Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* code.coding[ICD10PCS2023Radiotherapy].system MS
* code.coding[ICD10PCS2023Radiotherapy].code 1..1 MS
* code.coding[ICD10PCS2023Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"

* code ^short = "放射治療項目。ICD-10-PCS。"
* ingredient.quantity.numerator.value ^short = "放射治療總劑量"
* ingredient.quantity.numerator.code ^short = "放射治療總劑量單位"
* ingredient.quantity.numerator.system ^short = "放射治療總劑量單位之代碼系統，固定為「http://unitsofmeasure.org」。"
* ingredient.substance[x] ^short = "因FHIR設計而需必填"
* ingredient.substance[x] from ICD10PCS2023Radiotherapy (preferred)
* ingredient.substance[x] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* ingredient.substanceCodeableConcept.coding ^slicing.discriminator.type = #value
* ingredient.substanceCodeableConcept.coding ^slicing.discriminator.path = "system"
* ingredient.substanceCodeableConcept.coding ^slicing.rules = #open
* ingredient.substanceCodeableConcept.coding contains
    ICD10PCS2023Radiotherapy 0..1 MS and
    ICD10PCS2014Radiotherapy 0..1 MS
* ingredient.substanceCodeableConcept.coding[ICD10PCS2014Radiotherapy] from ICD10PCSRadiotherapy (extensible)
* ingredient.substanceCodeableConcept.coding[ICD10PCS2014Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* ingredient.substanceCodeableConcept.coding[ICD10PCS2014Radiotherapy].system MS
* ingredient.substanceCodeableConcept.coding[ICD10PCS2014Radiotherapy].code 1..1 MS
* ingredient.substanceCodeableConcept.coding[ICD10PCS2014Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* ingredient.substanceCodeableConcept.coding[ICD10PCS2023Radiotherapy] from ICD10PCS2023Radiotherapy (extensible)
* ingredient.substanceCodeableConcept.coding[ICD10PCS2023Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* ingredient.substanceCodeableConcept.coding[ICD10PCS2023Radiotherapy].system MS
* ingredient.substanceCodeableConcept.coding[ICD10PCS2023Radiotherapy].code 1..1 MS
* ingredient.substanceCodeableConcept.coding[ICD10PCS2023Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"