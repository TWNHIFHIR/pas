Profile:        ClaimTWPAS
Parent:         Claim
Id:             Claim-twpas
Title:          "癌藥事前審查-Claim TWPAS"
Description:    "此癌藥事前審查-Claim TWPAS Profile說明本IG如何進一步定義FHIR的Claim Resource以呈現癌藥事前審查之內容"
* ^version = "1.1.1"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-twpas"
* identifier and provider and subType and enterer and created and priority and patient MS
* extension contains
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-claim-encounter named encounter 1..1 MS

* identifier 0..1
* provider 1..1
* provider only Reference(OrganizationTWPAS)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType 1..1
* subType from NHIApplyType
* subType.coding 1..1
* subType.coding.system 1..1
* subType.coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-apply-type"
* subType.coding.code 1..1
* subType.coding.code ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。當申報類別為2(送核補件)、3(申復)、4(爭議審議)、5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* enterer 1..1
* enterer only Reference(PractitionerTWPAS)
* priority from NHITMHBType
* status = http://hl7.org/fhir/fm-status#active
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient only Reference(PatientTWPAS)
* diagnosis 1.. MS
* diagnosis.diagnosis[x] MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosisCodeableConcept from TW2023ICD10CM (preferred)
* diagnosis.diagnosisCodeableConcept.coding ^slicing.discriminator[0].type = #value
* diagnosis.diagnosisCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* diagnosis.diagnosisCodeableConcept.coding ^slicing.rules = #closed
* diagnosis.diagnosisCodeableConcept.coding contains
    icd10-cm-2023 0..1 MS and
    icd10-cm-2014 0..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023] from TW2023ICD10CM (extensible)
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw"
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].system 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].code 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014] from TW2014ICD10CM (extensible)
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2014-tw"
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].system 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].code 1..1 MS
* diagnosis.extension contains 
    http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate named recordedDate 0..* MS
* diagnosis.type 0..1
* diagnosis.type.text 0..1 MS
* diagnosis.type.text obeys pas-2
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #closed
* supportingInfo.category from NHIPASSupportingInfoType
* supportingInfo contains
    weight 1..1 and
    height 1..1 and
    pregnancy 0..1 and
    imagingReport 0..* and
    cancerStage 0..* and
    examinationReport 0..* and
    geneInfo 0..* and
    tests 0..* and
    patientAssessment 0..* and
    medicationRequest 0..* and
    radiotherapy 0..* and
    carePlanDocument 0..* and
    medicalRecord 0..* and
    treatmentAssessment 0..* and
    bloodgroup 0..1 and
    opd 0..* and
    allergy 0..* /*and
    diagnosis 0..* and
    subjective 0..* and
    objective 0..* and
    assessment 0..* and
    plan 0..**/

* supportingInfo[weight] ^short = "病人體重"
* supportingInfo[weight].category = NHIPASSupportingInfoType#weight
* supportingInfo[weight].timing[x] ..0
* supportingInfo[weight].value[x] 1.. MS
* supportingInfo[weight].value[x] only Quantity
* supportingInfo[weight].valueQuantity.code = #kg
* supportingInfo[weight].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[weight].valueQuantity.value 1.. MS
* supportingInfo[weight].valueQuantity.system 1..
* supportingInfo[weight].valueQuantity.code 1..

* supportingInfo[height] ^short = "病人身高"
* supportingInfo[height].category = NHIPASSupportingInfoType#height
* supportingInfo[height].timing[x] ..0
* supportingInfo[height].value[x] 1.. MS
* supportingInfo[height].value[x] only Quantity
* supportingInfo[height].valueQuantity.code = #cm
* supportingInfo[height].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[height].valueQuantity.value 1.. MS
* supportingInfo[height].valueQuantity.system 1..
* supportingInfo[height].valueQuantity.code 1..

* supportingInfo[pregnancy] ^short = "是否懷孕或哺乳"
* supportingInfo[pregnancy].category = NHIPASSupportingInfoType#pregnancyBreastfeedingStatus
* supportingInfo[pregnancy].timing[x] ..0
* supportingInfo[pregnancy].value[x] 1.. MS
* supportingInfo[pregnancy].value[x] only boolean

* supportingInfo[imagingReport] ^short = "影像報告"
* supportingInfo[imagingReport].category = NHIPASSupportingInfoType#imagingReport
* supportingInfo[imagingReport].timing[x] ..0
* supportingInfo[imagingReport].value[x] 1.. MS
* supportingInfo[imagingReport].value[x] only Reference(DiagnosticReportImageTWPAS)

* supportingInfo[cancerStage] ^short = "癌症分期量表"
* supportingInfo[cancerStage].category = NHIPASSupportingInfoType#cancerStage
* supportingInfo[cancerStage].timing[x] ..0
* supportingInfo[cancerStage].value[x] 1.. MS
* supportingInfo[cancerStage].value[x] only Reference(ObservationCancerStageTWPAS)

* supportingInfo[examinationReport] ^short = "檢查報告"
* supportingInfo[examinationReport].category = NHIPASSupportingInfoType#examinationReport
* supportingInfo[examinationReport].timing[x] ..0
* supportingInfo[examinationReport].value[x] 1.. MS
* supportingInfo[examinationReport].value[x] only Reference(DiagnosticReportTWPAS)

* supportingInfo[geneInfo] ^short = "基因資訊"
* supportingInfo[geneInfo].category = NHIPASSupportingInfoType#geneInfo
* supportingInfo[geneInfo].timing[x] ..0
* supportingInfo[geneInfo].value[x] 1.. MS
* supportingInfo[geneInfo].value[x] only Reference(ObservationDiagnosticTWPAS)

* supportingInfo[tests] ^short = "檢驗(查)"
* supportingInfo[tests].category = NHIPASSupportingInfoType#tests
* supportingInfo[tests].timing[x] ..0
* supportingInfo[tests].value[x] 1.. MS
* supportingInfo[tests].value[x] only Reference(ObservationLaboratoryResultTWPAS)

* supportingInfo[patientAssessment] ^short = "病人狀態評估"
* supportingInfo[patientAssessment].category = NHIPASSupportingInfoType#patientAssessment
* supportingInfo[patientAssessment].timing[x] ..0
* supportingInfo[patientAssessment].value[x] 1.. MS
* supportingInfo[patientAssessment].value[x] only Reference(ObservationPatientAssessmentTWPAS)

* supportingInfo[medicationRequest] ^short = "用藥品項"
* supportingInfo[medicationRequest].category = NHIPASSupportingInfoType#medicationRequest
* supportingInfo[medicationRequest].timing[x] ..0
* supportingInfo[medicationRequest].value[x] 1.. MS
* supportingInfo[medicationRequest].value[x] only Reference(MedicationRequestTreatTWPAS)
/* supportingInfo[medicationRequest].code MS
* supportingInfo[medicationRequest].code from NHILOT
* supportingInfo[medicationRequest].code ^short = "用藥線別，0:不適用 | 1:第一線治療 | 2:第二線治療 | 3:第三線治療 | 4:第四線治療 | 5:第五線治療"*/

* supportingInfo[radiotherapy] ^short = "放射/照光治療"
* supportingInfo[radiotherapy].category = NHIPASSupportingInfoType#radiotherapy
* supportingInfo[radiotherapy].timing[x] ..0
* supportingInfo[radiotherapy].value[x] 1.. MS
* supportingInfo[radiotherapy].value[x] only Reference(ProcedureTWPAS)

* supportingInfo[carePlanDocument] ^short = "治療計畫文件，P-IO(免疫檢查點抑制劑治療計畫)、P-CART(CAR-T多團隊會議紀錄)、P-STEMCELL(造血幹細胞移植計畫書)，附件形式PDF"
* supportingInfo[carePlanDocument].category = NHIPASSupportingInfoType#carePlanDocument
* supportingInfo[carePlanDocument].timing[x] ..0
* supportingInfo[carePlanDocument].value[x] 1.. MS
* supportingInfo[carePlanDocument].value[x] only Reference(DocumentReferenceTWPAS)

* supportingInfo[medicalRecord] ^short = "病歷資料（非屬影像報告檢查驗報告部分），可檢附其他佐證癌藥治療必要性之非結構化病歷。"
* supportingInfo[medicalRecord].category = NHIPASSupportingInfoType#medicalRecord
* supportingInfo[medicalRecord].timing[x] ..0
* supportingInfo[medicalRecord].value[x] 1.. MS
* supportingInfo[medicalRecord].value[x] only Reference(DocumentReferenceTWPAS)

* supportingInfo[treatmentAssessment] ^short = "結果資訊"
* supportingInfo[treatmentAssessment].category = NHIPASSupportingInfoType#treatmentAssessment
* supportingInfo[treatmentAssessment].timing[x] ..0
* supportingInfo[treatmentAssessment].value[x] 1.. MS
* supportingInfo[treatmentAssessment].value[x] only Reference(ObservationTreatmentAssessmentTWPAS)


/* * supportingInfo[subjective] ^short = "主觀描述(S)"
* supportingInfo[subjective].category = NHIPASSupportingInfoType#subjective
* supportingInfo[subjective].timing[x] ..0
* supportingInfo[subjective].value[x] 1.. MS
* supportingInfo[subjective].value[x] only Reference(ObservationSubjectiveTWPAS)
* supportingInfo[subjective].valueReference ^short = "主觀描述(S)"

* supportingInfo[objective] ^short = "客觀描述(O)"
* supportingInfo[objective].category = NHIPASSupportingInfoType#objective
* supportingInfo[objective].timing[x] ..0
* supportingInfo[objective].value[x] 1.. MS
* supportingInfo[objective].value[x] only Reference(ObservationObjectiveTWPAS)
* supportingInfo[objective].valueReference ^short = "客觀描述(O)"

* supportingInfo[assessment] ^short = "評估(A)"
* supportingInfo[assessment].category = NHIPASSupportingInfoType#assessment
* supportingInfo[assessment].timing[x] ..0
* supportingInfo[assessment].value[x] 1.. MS
* supportingInfo[assessment].value[x] only Reference(ClinicalImpressionTWPAS)
* supportingInfo[assessment].valueReference ^short = "評估(A)"

* supportingInfo[plan] ^short = "計畫(P)"
* supportingInfo[plan].category = NHIPASSupportingInfoType#plan
* supportingInfo[plan].timing[x] ..0
* supportingInfo[plan].value[x] 1.. MS
* supportingInfo[plan].value[x] only Reference(CarePlanTWPAS)
* supportingInfo[plan].valueReference ^short = "計畫(P)" */

* supportingInfo[allergy] ^short = "過敏史"
* supportingInfo[allergy].category = NHIPASSupportingInfoType#allergy
* supportingInfo[allergy].timing[x] ..0
* supportingInfo[allergy].value[x] 1.. MS
* supportingInfo[allergy].value[x] only Reference(AllergyIntoleranceTWPAS)
* supportingInfo[allergy].valueReference ^short = "過敏史"

* supportingInfo[bloodgroup] ^short = "血型"
* supportingInfo[bloodgroup].category = NHIPASSupportingInfoType#bloodgroup
* supportingInfo[bloodgroup].timing[x] ..0
* supportingInfo[bloodgroup].value[x] 1.. MS
* supportingInfo[bloodgroup].value[x] only Reference(ObservationBloodGroupTWPAS)
* supportingInfo[bloodgroup].valueReference ^short = "血型"

* supportingInfo[opd] ^short = "門診病歷"
* supportingInfo[opd].category = NHIPASSupportingInfoType#opd
* supportingInfo[opd].timing[x] ..0
* supportingInfo[opd].value[x] 1.. MS
* supportingInfo[opd].value[x] only Reference(CompositionOpdTWPAS)
* supportingInfo[opd].valueReference ^short = "門診病歷"

/* * supportingInfo[diagnosis] ^short = "診斷"
* supportingInfo[diagnosis].category = NHIPASSupportingInfoType#diagnosis
* supportingInfo[diagnosis].timing[x] ..0
* supportingInfo[diagnosis].value[x] 1.. MS
* supportingInfo[diagnosis].value[x] only Reference(ConditionTWPAS)
* supportingInfo[diagnosis].valueReference ^short = "診斷" */

* procedure.procedure[x] only CodeableConcept
* procedure.procedureCodeableConcept MS
* procedure.procedureCodeableConcept.coding 1..1
* procedure.procedureCodeableConcept from TW2023ICD10PCS (preferred)
* procedure.date 1..1 MS

* procedure.procedureCodeableConcept
* procedure.procedureCodeableConcept.coding ^slicing.discriminator.type = #value
* procedure.procedureCodeableConcept.coding ^slicing.discriminator.path = "system"
* procedure.procedureCodeableConcept.coding ^slicing.rules = #closed
* procedure.procedureCodeableConcept.coding contains
    icd10-pcs-2023 0..1 MS and
    icd10-pcs-2014 0..1 MS and
    medical-service-payment 0..1 MS
* procedure.procedureCodeableConcept.coding[icd10-pcs-2023] from TW2023ICD10PCS
* procedure.procedureCodeableConcept.coding[icd10-pcs-2023].code 1..1 MS
* procedure.procedureCodeableConcept.coding[icd10-pcs-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* procedure.procedureCodeableConcept.coding[icd10-pcs-2014] from TW2014ICD10PCS
* procedure.procedureCodeableConcept.coding[icd10-pcs-2014].code 1..1 MS
* procedure.procedureCodeableConcept.coding[icd10-pcs-2014].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* procedure.procedureCodeableConcept.coding[medical-service-payment] from NHIMedicalServicePayment
* procedure.procedureCodeableConcept.coding[medical-service-payment].code 1..1 MS
* procedure.procedureCodeableConcept.coding[medical-service-payment].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw"

* item 1..*
* item.productOrService MS
* item.productOrService from NHIOrderType
//* item.productOrService = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-order-type#4
* item.bodySite from NHIApplySide
* item.extension contains
    https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-requestedService named requestedService 1..1 MS
* item.programCode 1..1 MS
* item.programCode.coding 0..1
* item.programCode.coding from NHIApplyReason
* item.programCode ^condition[0] = "applyReason-1"
* item.programCode ^condition[1] = "applyReason-2"
* item.programCode ^condition[2] = "applyReason-3"
* item.modifier 1..2
* item.modifier ^slicing.discriminator.type = #value
* item.modifier ^slicing.discriminator.path = "coding.system"
* item.modifier ^slicing.ordered = false
* item.modifier ^slicing.rules = #closed
* item.modifier contains
    continuation 1..1 MS and
    lot 0..1 MS

* item.modifier[continuation] from NHIContinuationStatus
* item.modifier[continuation].coding 1..1
* item.modifier[continuation].coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status"
* item.modifier[continuation].coding.code 1..
* item.modifier[continuation] ^short = "續用註記，1:初次使用 | 2:申請再次使用"
* item.modifier[continuation].coding.code ^short = "1:初次使用 | 2:申請再次使用"
* item.modifier[lot] from NHILOT
* item.modifier[lot].coding 1..1
* item.modifier[lot].coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy"
* item.modifier[lot].coding.code 1.. MS
* item.modifier[lot] ^short = "用藥線別，0:不適用 | 1:第一線治療 | 2:第二線治療 | 3:第三線治療 | 4:第四線治療 | 5:第五線治療"
* item.modifier[lot].coding.code ^short = "0:不適用 | 1:第一線治療 | 2:第二線治療 | 3:第三線治療 | 4:第四線治療 | 5:第五線治療"

* item.quantity 1..1 MS
* item.quantity.value 1..1 MS
* item.quantity.system 1..1
* item.quantity.system = "http://unitsofmeasure.org"
* item.quantity.code 1..1 MS
* item.quantity.code from http://hl7.org/fhir/ValueSet/ucum-units
* item.quantity.code ^binding.description = "事前審查申請數量單位的代碼範圍請參考[Common UCUM units](https://hl7.org/fhir/R4/valueset-ucum-common.html)。"
* insurance.sequence = 1
* insurance.coverage only Reference(CoverageTWPAS) 

* identifier ^short = "原受理編號。院所上傳送核(subType = #1)案件時，不需填寫「原受理編號」資訊，受理成功後會由系統自動產生受理編號。當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* provider ^short = "醫事機構代碼，必須存在於醫事機構基本資料檔內。"
* subType ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。院所上傳送核(subType = #1)案件時，不需填寫「原受理編號」資訊，受理成功後會由系統自動產生受理編號。當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* extension[encounter] ^short = "就醫科別，為細分科之就醫科別，作為審查分科用。【此為參考Da Vinci PAS IG的extension設計】"
* enterer ^short = "申請醫師，必須存在於醫事人員基本資料檔內，並於合約生效起迄日內。"
* created ^short = "申請日期，YYYY-MM-DD，機構自填。健保署收案後另建受理日期，將呈現在ClaimResponse的disposition和created欄位。"
* priority ^short = "申請案件類別，1:一般事前審查申請 | 3:自主審查 | 4:緊急報備；專審系統識別用，對應PXXT_CODE(TMHB,001)。"
* patient ^short = "病人資訊"
* supportingInfo.sequence ^short = "因FHIR設計而必填、自動流水號（建議每次加1）、不得重複，作為每筆supportingInfo的唯一識別碼。最後一筆sequence號碼即表示總筆數。"
* supportingInfo[weight].valueQuantity.value ^short = "體重，整數至多3位數及小數至多2位數。"
* supportingInfo[height].valueQuantity.value ^short = "身高(cm)，整數至多3位數及小數至多2位數。"
* supportingInfo[pregnancy].valueBoolean ^short = "是否懷孕或哺乳，false:未懷孕或哺乳 | true:有懷孕或哺乳"
* supportingInfo[imagingReport].valueReference ^short = "影像報告"
* supportingInfo[cancerStage].valueReference ^short = "癌症分期量表"
* supportingInfo[examinationReport].valueReference ^short = "檢查報告"
* supportingInfo[geneInfo].valueReference ^short = "基因資訊"
* supportingInfo[tests].valueReference ^short = "檢驗(查)"
* supportingInfo[patientAssessment].valueReference ^short = "病人狀態評估"
* supportingInfo[medicationRequest].valueReference ^short = "用藥品項"
* supportingInfo[radiotherapy].valueReference ^short = "放射/照光治療"
* supportingInfo[carePlanDocument].valueReference ^short = "治療計畫文件"
* supportingInfo[treatmentAssessment].valueReference ^short = "結果資訊"
* diagnosis.diagnosisCodeableConcept ^short = "國際疾病分類代碼(含共病)，當前疾病狀態。ICD-10-CM。"
* diagnosis.extension[recordedDate] ^short = "診斷日期，sequence=1時為必填，表示為用藥事前審查之主要疾病；其他共病不須填寫診斷日期。YYYY-MM-DD，西元年月日。【此為參考Da Vinci PAS IG的extension設計】"
* diagnosis.type.text ^short = "簡要病摘(申請理由)。連結院內HIS系統之簡要病摘，或填寫原事前審查之申請理由。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* diagnosis ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
* diagnosis.sequence ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
* procedure.procedureCodeableConcept ^short = "手術(或其他處置)項目，經動脈導管肝臟腫瘤化學栓塞術(TACE)及冷凍療法等非屬手術。ICD-10-PCS 或 健保代碼 或 其他。"
* procedure.date ^short = "手術(或其他處置)日期"
* item.productOrService ^short = "醫令類別"
* item.extension[requestedService] ^short = "事前審查品項【此為參考Da Vinci PAS IG的extension設計】"
* item.programCode ^short = "給付適應症條件，藥品給付規定內所規範之適應症或條件，若有特定事前審查品項代碼應以代碼填報。"
* item.programCode.coding ^short = "給付適應症條件，當事前審查品項代碼為KC009612B5、KC010892B5、KC011112DE、KC011162B5、KC011362B5、KC01013229、KC01013230、KC01025219、KC01050238、KC01085229、KC00958229、JC00154261、KC01088229時，才可填寫。"
* item.programCode.text ^short = "給付適應症條件，事前審查品項代碼不為KC009612B5、KC010892B5、KC011112DE、KC011162B5、KC011362B5、KC01013229、KC01013230、KC01025219、KC01050238、KC01085229、KC00958229、JC00154261、KC01088229時，請自行輸入文字。"
* item.bodySite ^short = "申請部位，R:右側 | L:左側 | B:兩側。(此專案暫不檢核，未來待確認)"

* item.quantity.value ^short = "事前審查申請數量"
* item.quantity.code ^short = "事前審查申請數量單位"
* item.quantity.system ^short = "事前審查申請數量單位之代碼系統，固定為「http://unitsofmeasure.org」。"

* supportingInfo[weight].valueQuantity.value obeys HTWT
* supportingInfo[height].valueQuantity.value obeys HTWT
* diagnosis obeys diagnosis
* . obeys sequence-1 and supportingInfo and supportingInfo-tests and applType
* item.programCode obeys pas-1

/* Extension*/
Extension: RequestedService
Id: extension-requestedService
Description: "事前審查品項"
Context: Claim.item
* ^version = "1.1.1"
* . ^definition = "事前審查品項"
* value[x] only Reference(MedicationRequestApplyTWPAS)

Invariant:   HTWT
Description: "整數至多3位數及小數至多2位數"
Expression:  "value.toString().matches('^[0-9]{1,3}(.[0-9]{1,2})?$')"
Severity:    #error

Invariant:   diagnosis
Description: "diagnosis.sequence=1時才需填寫診斷日期、簡要病摘(申請原因)"
Expression:  "sequence=1 implies (extension.where(url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate').value.ofType(date).exists() and type.text.exists() )"
Severity:    #error

Invariant:   sequence-1
Description: "diagnosis.sequence一定會有一個「1」，且只能出現一次。"
Expression:  "diagnosis.where(sequence = 1).count() = 1"
Severity:    #error

Invariant:   supportingInfo
Description: "當Claim.priority(案件類別)為1(一般事前審查申請)、3(自主審查)時，至少還需提供檢查報告、影像報告、基因資訊中任一樣資訊。如果Claim.diagnosis.diagnosisCodeableConcept(國際疾病分類代碼)為C61，且Claim.item.modifier:continuation(續用註記)為2，則可排除此條件。"
Expression:  "(priority.coding.code.matches('1|3')) implies (supportingInfo.category.exists(coding.code = 'examinationReport') or supportingInfo.category.exists(coding.code = 'imagingReport') or supportingInfo.category.exists(coding.code = 'geneInfo') or (diagnosis.diagnosis.ofType(CodeableConcept).coding.where(code.matches('^(C61)')).exists() and item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status').coding.code = '2'))"
Severity:    #error

Invariant:   supportingInfo-tests
Description: "當Claim.diagnosis.diagnosisCodeableConcept(國際疾病分類代碼)為C61，且Claim.item.modifier:continuation(續用註記)為2，需提供檢驗(查)。"
Expression:  "(diagnosis.diagnosis.ofType(CodeableConcept).coding.where(code.matches('^(C61)')).exists() and item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status').coding.code = '2') implies (supportingInfo.category.exists(coding.code = 'tests'))"
Severity:    #error

Invariant:   applType
Description: "當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。目前IG僅針對申報類別為3(申復)進行檢核。"
Expression:  "(subType.coding.exists(code='3')) implies (identifier.exists())"
Severity:    #error

Invariant:   pas-1
Description: "text、coding至少需存在一個。"
Expression:  "text.exists() or coding.exists()"
Severity:    #error

Invariant:   pas-2
Description: "長度不得超過4000 bytes。"
Expression:  "toString().length() <= 4000"
Severity:    #error