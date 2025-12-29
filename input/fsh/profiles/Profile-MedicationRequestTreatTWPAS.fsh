Profile:        MedicationRequestTreatTWPAS
Parent:         TWCoreMedicationRequest
Id:             MedicationRequest-treat-twpas
Title:          "用藥品項-MedicationRequest Treat TWPAS"
Description:    "此用藥品項-MedicationRequest Treat TWPAS Profile說明本IG如何進一步定義臺灣核心-藥品請求(TW Core MedicationRequest) Profile以呈現事前審查中治療資訊之用藥品項"
* ^version = "1.1.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-treat-twpas"
* intent =  http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* category from NHIDrugCategory
* category 0..1
* medication[x] only CodeableConceptTW
* medication[x] from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication (example)
* medicationReference 0..0
* medicationCodeableConcept 1.. MS
* medicationCodeableConcept from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication (example)
* medicationCodeableConcept.coding 1..1
* medicationCodeableConcept.coding contains nhi-medication 0..1 MS
* medicationCodeableConcept.coding ^slicing.rules = #closed
* medicationCodeableConcept.coding[rxnorm-medication-us-core] 0..0
* medicationCodeableConcept.coding[atc-medication-code] 0..0
* medicationCodeableConcept.coding[snomedct-medication-codes] 0..0
* medicationCodeableConcept.coding[nhi-medication-tw] 0..0
* medicationCodeableConcept.coding[nhi-medication-ch-herb-tw] 0..0
* medicationCodeableConcept.coding[nhi-medication] from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication
* medicationCodeableConcept.coding[fda-medication-tw] from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication-fda
* subject only Reference(PatientTWPAS)
* dosageInstruction 1..*
* dosageInstruction.timing 1..1
* dosageInstruction.timing.code 1..
* dosageInstruction.timing.code from https://nhicore.nhi.gov.tw/pas/ValueSet/medication-frequency-hl7-nhi (extensible)
* dosageInstruction.timing.code.coding MS
* dosageInstruction.timing.code.coding from https://nhicore.nhi.gov.tw/pas/ValueSet/medication-frequency-hl7-nhi
* dosageInstruction.timing.repeat 1..1
* dosageInstruction.timing.repeat.bounds[x] only Period

* dosageInstruction.doseAndRate 1..1 MS
* dosageInstruction.doseAndRate.dose[x] 1..1
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity
* dosageInstruction.doseAndRate.doseQuantity 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.value 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.system 1..1
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseQuantity.code 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.code from http://hl7.org/fhir/ValueSet/ucum-units
* dosageInstruction.doseAndRate.doseQuantity.code ^binding.description = "用藥單位的代碼範圍請參考[Common UCUM units](https://hl7.org/fhir/R4/valueset-ucum-common.html)。"

* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat.boundsPeriod 1..1 MS
* dosageInstruction.timing.repeat.boundsPeriod.start 1..1 MS
* dosageInstruction.timing.repeat.boundsPeriod.end 1..1 MS
* dosageInstruction.route 1..1 MS
* dosageInstruction.route.coding 1..1 MS
* dosageInstruction.route from TWPCSMedicationPathSCT
* dosageInstruction.route.coding from TWPCSMedicationPathSCT

* status ^short = "藥物使用狀態"
* statusReason ^short = "藥物處方終止原因"
* category ^short = "自費註記"
* medication[x] ^short = "藥品代碼"
* dosageInstruction.timing.code ^short = "藥品使用頻率及服用時間。"
* dosageInstruction.timing.code.coding ^short = "藥品使用頻率及服用時間。"
* dosageInstruction.timing.code.text ^short = "藥品使用頻率及服用時間。"

* dosageInstruction.doseAndRate.doseQuantity.value ^short = "藥物每次處方劑量，數字，每次使用之顆數、支數等，依產品規格。"
* dosageInstruction.doseAndRate.doseQuantity.code ^short = "藥物每次處方劑量單位"
* dosageInstruction.doseAndRate.doseQuantity.system ^short = "藥物每次處方劑量單位之代碼系統，固定為「http://unitsofmeasure.org」。"
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "藥物處方起始日期，YYYY-MM-DD。"
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "藥物處方終止日期，YYYY-MM-DD。"
* dosageInstruction.route  ^short = "給藥途徑／作用部位。"
* dosageInstruction.route.coding  ^short = "給藥途徑／作用部位。"