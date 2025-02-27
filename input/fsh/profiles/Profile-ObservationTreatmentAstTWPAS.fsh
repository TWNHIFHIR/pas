Profile:        ObservationTreatmentAssessmentTWPAS
Parent:         Observation
Id:             Observation-tx-assessment-twpas
Title:          "治療後疾病狀態評估-Observation Treatment Assessment TWPAS"
Description:    "此治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查中結果資訊之治療後疾病狀態評估"
* effective[x] 1..1 MS
* effective[x] only dateTime
* code MS
* code from NHITreatmentAst
* code.coding 1..1
* code.coding.code 1..1
* value[x] only string
* valueString 1..1 MS
/* valueCodeableConcept from ConditionStatusTrendVS
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.code 1..1*/
//* performer only Reference(PractitionerTWPAS)
* subject only Reference(PatientTWPAS)
* subject 1.. MS

* code ^short = "治療後疾病狀態評估項目"
* value[x] ^short = "治療後疾病狀態評估結果"
* effectiveDateTime ^short = "治療後疾病狀態評估日期，YYYY-MM-DD，西元年月日。"

* . obeys nhi-tx-ast-value //-ICLL and nhi-tx-ast-value-IREC and nhi-tx-ast-value-MREC-REC1 and nhi-tx-ast-value-IWGC

Invariant:   nhi-tx-ast-value
Description: "若治療後疾病狀態評估項目(code)為ICLL，結果值(valueString)須填寫CR/PR/PD/SD其中一項；若治療後疾病狀態評估項目(code)為IREC，結果值(valueString)須填寫iCR/iPR/iSD/iUPD/iCPD/inevaluable其中一項；若治療後疾病狀態評估項目(code)為MREC或REC1，結果值(valueString)須填寫CR/PR/SD/PD/inevaluable其中一項；若治療後疾病狀態評估項目(code)為IWGC，結果值(valueString)須填寫Complete remission (CR)/CR equivalent/mCR/Partial remission (PR)/Stable disease (SD)/CRL (CRuni and CRbi)/CRh/hematologic improvement (HI)/Disease Relapse/Progressive disease (PD)/Cytogenetic response/No response/Not evaluable其中一項。"
Expression:  "((code.coding.exists(code='ICLL')) implies (value.ofType(string) = 'CR' or value.ofType(string) = 'PR' or value.ofType(string) = 'PD' or value.ofType(string) = 'SD')) and ((code.coding.exists(code='IREC')) implies (value.ofType(string) =  'iCR' or value.ofType(string) = 'iPR' or value.ofType(string) = 'iSD' or value.ofType(string) = 'iUPD' or value.ofType(string) = 'iCPD' or value.ofType(string) = 'inevaluable')) and ((code.coding.exists(code='MREC') or code.coding.exists(code='REC1')) implies (value.ofType(string) = 'CR' or value.ofType(string) = 'PR' or value.ofType(string) = 'SD' or value.ofType(string) = 'PD' or value.ofType(string) = 'inevaluable')) and ((code.coding.exists(code='IWGC')) implies (value.ofType(string) = 'Complete remission (CR)' or value.ofType(string) = 'CR equivalent' or value.ofType(string) = 'mCR' or value.ofType(string) = 'Partial remission (PR)' or value.ofType(string) = 'Stable disease (SD)' or value.ofType(string) = 'CRL (CRuni and CRbi)' or value.ofType(string) = 'CRh' or value.ofType(string) = 'hematologic improvement (HI)' or value.ofType(string) = 'Disease Relapse' or value.ofType(string) = 'Progressive disease (PD)' or value.ofType(string) = 'Cytogenetic response' or value.ofType(string) = 'No response' or value.ofType(string) = 'Not evaluable'))"
Severity:    #error


/*Invariant:   nhi-tx-ast-value-ICLL
Description: "若治療後疾病狀態評估項目(code)為ICLL，結果值(valueString)須填寫CR/PR/PD/SD。"
Expression:  "code.coding.exists(code='ICLL') implies value.ofType(string) in ( 'CR' | 'PR' | 'PD' | 'SD')"
Severity:    #error

Invariant:   nhi-tx-ast-value-IREC
Description: "若治療後疾病狀態評估項目(code)為IREC，結果值(valueString)須填寫iCR/iPR/iSD/iUPD/iCPD/inevaluable。"
Expression:  "code.coding.exists(code='IREC') implies value.ofType(string) in ( 'iCR' | 'iPR' | 'iSD' | 'iUPD' | 'iCPD' | 'inevaluable')"
Severity:    #error

Invariant:   nhi-tx-ast-value-MREC-REC1
Description: "若治療後疾病狀態評估項目(code)為MREC或REC1，結果值(valueString)須填寫CR/PR/SD/PD/inevaluable。"
Expression:  "(code.coding.exists(code='MREC') or code.coding.exists(code='REC1')) implies (value.ofType(string) in ( 'CR' | 'PR' | 'SD' | 'PD' | 'inevaluabl'))"
Severity:    #error

Invariant:   nhi-tx-ast-value-IWGC
Description: "若治療後疾病狀態評估項目(code)為IWGC，結果值(valueString)須填寫Complete remission (CR)/CR equivalent/mCR/Partial remission (PR)/Stable disease (SD)/CRL (CRuni and CRbi)/CRh/hematologic improvement (HI)/Disease Relapse/Progressive disease (PD)/Cytogenetic response/No response/Not evaluable。"
Expression:  "(code.coding.exists(code='IWGC')) implies (value.ofType(string) in ('Complete remission (CR)' | 'CR equivalent' | 'mCR' | 'Partial remission (PR)' | 'Stable disease (SD)' | 'CRL (CRuni and CRbi)' | 'CRh' | 'hematologic improvement (HI)' | 'Disease Relapse' | 'Progressive disease (PD)' | 'Cytogenetic response' | 'No response' | 'Not evaluable'))"
Severity:    #error*/