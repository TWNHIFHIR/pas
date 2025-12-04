Profile:        MedicationRequestApplyTWPAS
Parent:         TWCoreMedicationRequest
Id:             MedicationRequest-apply-twpas
Title:          "事前審查品項-MedicationRequest Apply TWPAS"
Description:    "此事前審查品項-MedicationRequest Apply TWPAS Profile說明本IG如何進一步定義臺灣核心-藥品請求(TW Core MedicationRequest) Profile以呈現事前審查中申請項目之事前審查品項"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-apply-twpas"
* status =  http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold
* intent =  http://hl7.org/fhir/CodeSystem/medicationrequest-intent#plan
* medication[x] only CodeableConceptTW
* medication[x] from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication (example)
* medication[x] ^condition[0] = "applyReason-1"
* medication[x] ^condition[1] = "applyReason-2"
* medication[x] ^condition[2] = "applyReason-3"
* medication[x] ^condition[3] = "applyReason-4"
* medication[x] ^condition[4] = "applyReason-5"
* medication[x] ^condition[5] = "applyReason-6"
* medication[x] ^condition[6] = "applyReason-7"
* medication[x] ^condition[7] = "applyReason-8"
* medication[x] ^condition[8] = "applyReason-9"
* medication[x] ^condition[9] = "applyReason-10"
* medication[x] ^condition[10] = "applyReason-11"
* medication[x] ^condition[11] = "applyReason-12"
* medication[x] ^condition[12] = "applyReason-13"
* medicationReference 0..0
* medicationCodeableConcept 1.. MS
* medicationCodeableConcept from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication (example)
* medicationCodeableConcept.coding contains nhi-medication 1..1 MS
* medicationCodeableConcept.coding[fda-medication-tw] 0..0
* medicationCodeableConcept.coding[rxnorm-medication-us-core] 0..0
* medicationCodeableConcept.coding[nhi-medication-tw] 0..0
* medicationCodeableConcept.coding[nhi-medication-ch-herb-tw] 0..0
* medicationCodeableConcept.coding[atc-medication-code] 0..0
* medicationCodeableConcept.coding[snomedct-medication-codes] 0..0
* medicationCodeableConcept.coding[nhi-medication] from https://nhicore.nhi.gov.tw/pas/ValueSet/nhi-medication

* subject only Reference(PatientTWPAS)

* dosageInstruction 1..*
* dosageInstruction.timing 1..
* dosageInstruction.timing.code 1..
* dosageInstruction.timing.code from https://nhicore.nhi.gov.tw/pas/ValueSet/medication-frequency-hl7-nhi
* dosageInstruction.timing.code.coding 1..* MS
* dosageInstruction.timing.code.coding from https://nhicore.nhi.gov.tw/pas/ValueSet/medication-frequency-hl7-nhi
* dosageInstruction.timing.repeat 1..
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
* dosageInstruction.timing.repeat.count 0..1 MS
* dosageInstruction.route 1..1 MS
* dosageInstruction.route.coding 1..1 MS
* dosageInstruction.route from TWPCSMedicationPathSCT
* dosageInstruction.route.coding from TWPCSMedicationPathSCT

* medication[x] ^short = "事前審查品項代碼，事前審查醫令代碼。"
* medicationCodeableConcept.coding[nhi-medication] ^short = "事前審查品項代碼。"
* dosageInstruction.timing.code ^short = "事前審查藥品使用頻率及服用時間。"
* dosageInstruction.timing.code.coding ^short = "事前審查藥品使用頻率及服用時間。"

* dosageInstruction.doseAndRate.doseQuantity.value ^short = "事前審查藥品每次處方劑量，數字。"
* dosageInstruction.doseAndRate.doseQuantity.code ^short = "事前審查藥品每次處方劑量單位，每次使用之顆數、mL數、支數等。"
* dosageInstruction.doseAndRate.doseQuantity.system ^short = "事前審查藥品每次處方劑量單位之代碼系統，固定為「http://unitsofmeasure.org」。"
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "事前審查藥物預定處方起始日期，YYYY-MM-DD，西元年月日。"
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "事前審查藥物預定處方終止日期，YYYY-MM-DD，西元年月日。"
* dosageInstruction.route  ^short = "給藥途徑／作用部位。"
* dosageInstruction.route.coding  ^short = "給藥途徑／作用部位。"
* dosageInstruction.timing.repeat.count  ^short = "事前審查藥品療程／週期數。"