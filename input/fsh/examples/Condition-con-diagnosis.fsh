Instance: con-diagnosis
InstanceOf: ConditionTWPAS
Title: "診斷-主要疾病"
Description: "依據診斷-Condition TWPAS Profile呈現診斷(主要疾病)之範例"
Usage: #example
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category.coding = http://loinc.org#29548-5
* code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#M17.11
* subject.reference = "Patient/pat-min"
* encounter.reference = "Encounter/enc-opd"

Instance: con-comorbidity
InstanceOf: ConditionTWPAS
Title: "診斷-共病"
Description: "依據診斷-Condition TWPAS Profile呈現診斷(共病)之範例"
Usage: #example
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category.coding = http://loinc.org#29548-5
* code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#I10
* subject.reference = "Patient/pat-min"
* encounter.reference = "Encounter/enc-opd"