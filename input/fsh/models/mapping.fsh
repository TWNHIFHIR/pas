/*Mapping: TWPASClaim
Id: TWPASClaim
Title: "Mapping to TWPAS Claim"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-twpas"
* hosp -> "(院所資訊)"
* hosp.hospId -> "provider.reference(OrganizationTWPAS) (醫事機構代碼)"
* hosp.applType -> "subType.coding.code (申報類別)"
* hosp.funcType -> "extension.where(url = 'https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-claim-encounter').valueReference.reference(EncounterTWPAS) (就醫科別)"
* hosp.applPrsnId -> "enterer.reference(PractitionerTWPAS) (申請醫師身分證號)"
* hosp.applDate -> "created (申請日期)"
* hosp.tmhbType -> "priority.coding.code (申請案件類別)"
* hosp.oldAcptNo -> "identifier.value (原受理編號)"

* patient -> "(病人資訊)"
* patient.idCard -> "patient.reference(PatientTWPAS) (身分證字號)"
* patient.weight -> "supportingInfo.where(category.coding.code = 'weight').valueQuantity.value (病人體重)"
* patient.height -> "supportingInfo.where(category.coding.code = 'height').valueQuantity.value (病人身高)"
* patient.pregnant -> "supportingInfo.where(category.coding.code = 'pregnancyBreastfeedingStatus').valueBoolean (是否懷孕或哺乳)"

* diagnosis -> "(疾病資訊)"
* diagnosis.imageStudy -> "(影像報告)"
* diagnosis.imageStudy.imgItem -> "supportingInfo.where(category.coding.code = 'imagingReport').valueReference.reference(DiagnosticReportImageTWPAS) (影像報告)"
* diagnosis.cancerStage -> "(癌症分期量表)"
* diagnosis.cancerStage.assessItem -> "supportingInfo.where(category.coding.code = 'cancerStage').valueReference.reference(ObservationCancerStageTWPAS) (癌症分期量表項目)"
* diagnosis.examinationReport -> "(檢查報告)"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "supportingInfo.where(category.coding.code = 'examinationReport').valueReference.reference(DiagnosticReportTWPAS) (檢查報告結果)"
* diagnosis.medrec -> "supportingInfo.where(category.coding.code = 'medicalRecord').valueReference.reference(DocumentReferenceTWPAS) (病歷資料)"
* gene -> "(基因資訊)"
* gene.genTestCode -> "supportingInfo.where(category.coding.code = 'geneInfo').valueReference.reference(ObservationDiagnosticTWPAS) (基因檢測代碼)"
* evaluate -> "(評估資訊)"
* evaluate.tests -> "(檢驗(查))"
* evaluate.tests.inspect -> "supportingInfo.where(category.coding.code = 'tests').valueReference.reference(ObservationLaboratoryResultTWPAS) (檢驗(查)名稱或套組代碼)"
* evaluate.patientAssessment -> "(病人狀態評估)"
* evaluate.patientAssessment.patAst -> "supportingInfo.where(category.coding.code = 'patientAssessment').valueReference.reference(ObservationPatientAssessmentTWPAS) (病人狀態評估項目代碼)"
* treat -> "(治療資訊)"
* treat.medicationRequest -> "(用藥品項)"
* treat.medicationRequest.drugCode -> "supportingInfo.where(category.coding.code = 'medicationRequest').valueReference.reference(MedicationRequestTreatTWPAS) (藥品代碼)"
//* treat.medicationRequest.lot -> "supportingInfo.where(category.coding.code = 'medicationRequest').code.coding.code (用藥線別)"
* treat.radiotherapy -> "(放射治療)"
* treat.radiotherapy.rt -> "supportingInfo.where(category.coding.code = 'radiotherapy').valueReference.reference(ProcedureTWPAS) (放射治療項目)"
* treat.carePlanDocument -> "supportingInfo.where(category.coding.code = 'carePlanDocument').valueReference.reference(DocumentReferenceTWPAS) (治療計畫文件)"
* result -> "(結果資訊)"
* result.txAst -> "supportingInfo.where(category.coding.code = 'treatmentAssessment').valueReference.reference(ObservationTreatmentAssessmentTWPAS) (治療後疾病狀態評估項目)"
* diagnosis.icd10cmCode -> "diagnosis.diagnosisCodeableConcept.coding.code (國際疾病分類代碼)"
* diagnosis.diagDate -> "diagnosis.extension.where(url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate').valueDate (診斷日期)"
* diagnosis.diagCurrentStatus -> "diagnosis.type.text (簡要病摘)"
* treat.opCode -> "procedure.procedureCodeableConcept.coding (手術(或其他處置)項目)"
* treat.opDate -> "procedure.date (手術(或其他處置)日期)"
* apply -> "(申請項目)"
* apply.orderType -> "item.productOrService.coding.code (醫令類別)"
* apply.continuation -> "item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status').coding.code (續用註記)"
* apply.lot -> "item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy').coding.code (用藥線別)"
* apply.cancerDrugType -> "item.extension.where(url = 'https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-requestedService').valueReference.reference (事前審查品項代碼)"
* apply.applyReason -> "item.programCode (給付適應症條件)"
* apply.applySide -> "item.bodySite (申請部位)"
* apply.applQty -> "item.quantity.value (事前審查申請數量)"
* apply.applQtyUnit -> "item.quantity.unit (事前審查申請數量單位)"

Mapping: TWPASOrganization
Id: TWPASOrganization
Title: "Mapping to TWPAS Organization"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Organization-twpas"
* hosp -> "(院所資訊)"
* hosp.hospId -> "identifier.value (醫事機構代碼)"
* gene -> "(基因資訊)"
* gene.genOrg -> "identifier.value (基因檢測機構)"

Mapping: TWPASEncounter
Id: TWPASEncounter
Title: "Mapping to TWPAS Encounter"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-twpas"
* hosp -> "(院所資訊)"
* hosp.funcType -> "serviceType.coding.code (就醫科別)"

Mapping: TWPASPatient
Id: TWPASPatient
Title: "Mapping to TWPAS Patient"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Patient-twpas"
* patient -> "(病人資訊)"
* patient.name -> "name.text (姓名)"
* patient.idCard -> "identifier.where(type.coding.code = 'NNxxx').value (身分證字號)"
* patient.patId -> "identifier.where(type.coding.code = 'MR').value (病歷號)"
* patient.birthday -> "birthDate (出生日期)"
* patient.gender -> "gender (病人性別)"

Mapping: TWPASDiagnosticReportImage
Id: TWPASDiagnosticReportImage
Title: "Mapping to TWPAS DiagnosticReportImage"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-image-twpas"
* diagnosis -> "(疾病資訊)"
* diagnosis.imageStudy -> "(影像報告)"
* diagnosis.imageStudy.imgInterpreter -> "performer.reference(PractitionerTWPAS) (簽發影像報告醫師身分證號)"
* diagnosis.imageStudy.imgItem -> "code.coding.code (影像報告)"
* diagnosis.imageStudy.imgResult -> "conclusion (影像報告結果)"
* diagnosis.imageStudy.imgBodySite -> "code.text (影像檢查的身體部位)"
* diagnosis.imageStudy.imgDicom -> "imagingStudy.reference(ImagingStudyTWPAS) (DICOM影像)"
* diagnosis.imageStudy.imgDate -> "effectiveDateTime (影像報告日期)"
* diagnosis.imageStudy.imgNonDicom -> "media.link.reference(MediaTWPAS) (非DICOM影像)"

Mapping: TWPASImagingStudy
Id: TWPASImagingStudy
Title: "Mapping to TWPAS ImagingStudy"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ImagingStudy-twpas"
* diagnosis -> "(疾病資訊)"
* diagnosis.imageStudy -> "(影像報告)"
* diagnosis.imageStudy.imgBodySite -> "series.bodySite.code (影像檢查的身體部位)"
* diagnosis.imageStudy.imgDicom -> "series.instance.uid (DICOM影像)"

Mapping: TWPASMedia
Id: TWPASMedia
Title: "Mapping to TWPAS Media"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Media-twpas"
* diagnosis -> "(疾病資訊)"
* diagnosis.imageStudy -> "(影像報告)"
* diagnosis.imageStudy.imgBodySite -> "bodySite.coding.code (影像檢查的身體部位)"
* diagnosis.imageStudy.imgNonDicom -> "contnet.url (非DICOM影像)"

Mapping: TWPASObservationCancerStage
Id: TWPASObservationCancerStage
Title: "Mapping to TWPAS ObservationCancerStage"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-cancer-stage-twpas"
* diagnosis -> "(疾病資訊)"
* diagnosis.cancerStage -> "(癌症分期量表)"
* diagnosis.cancerStage.assessItem  -> "code.coding.code (癌症分期量表項目)"
* diagnosis.cancerStage.assessDate -> "effectiveDateTime (癌症分期量表評估日期)"
* diagnosis.cancerStage.assessPerformer -> "performer.reference(PractitionerTWPAS) (簽發癌症分期報告醫師身分證號)"
* diagnosis.cancerStage.assessScore -> "valueCodeableConcept.coding.code (癌症分期分數或結果)"

Mapping: TWPASDiagnosticReport
Id: TWPASDiagnosticReport
Title: "Mapping to TWPAS DiagnosticReport"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-twpas"
* diagnosis -> "(疾病資訊)"
* diagnosis.examinationReport -> "(檢查報告)"
* diagnosis.examinationReport.reportType -> "code.coding.code (報告類型)"
* diagnosis.examinationReport.speType -> "code.text (檢體種類)"
* diagnosis.examinationReport.reportDate -> "effectiveDateTime (報告日期)"
* diagnosis.examinationReport.reportPerformer -> "performer.reference(PractitionerTWPAS) (檢查報告醫師身分證號)"
* diagnosis.examinationReport.reportResult -> "(檢查報告結果)"
* diagnosis.examinationReport.reportResult.reportResultString -> "conclusion (檢查報告結果（文數字）)"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "presentedForm.url (檢查報告結果（檔案路徑）)"
* diagnosis.examinationReport.reportResult.reportResultPdfTitle -> "presentedForm.title (檢查報告名稱)"

Mapping: TWPASObservationDiagnostic
Id: TWPASObservationDiagnostic
Title: "Mapping to TWPAS ObservationDiagnostic"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-diagnostic-twpas"
* gene -> "(基因資訊)"
* gene.genTestCode -> "component.code.coding.code (基因檢測代碼)"
* gene.genTestValue -> "component.value[x] (基因檢測實際結果)"
* gene.mutationType -> "component.where(code.coding.code = '48019-4').valueCodeableConcept.coding.code (基因突變類型)"
* gene.specimenType -> "specimen.reference(SpecimenTWPAS) (基因檢測檢體類型)"
* gene.genMethod -> "method.coding.code (基因檢測方法)"
* gene.genDate -> "effectiveDateTime (基因檢測日期)"
* gene.genOrg -> "performer.reference(OrganizationTWPAS) (基因檢測機構)"
* gene.genResult -> "valueCodeableConcept.coding.code (基因檢測分析結果)"
* gene.genInterpretation  -> "interpretation.coding.code (基因臨床判讀結果)"
* gene.genPdf -> "derivedFrom.reference(DocumentReferenceTWPAS) (基因報告（檔案路徑）)"

Mapping: TWPASObservationLaboratoryResult
Id: TWPASObservationLaboratoryResult
Title: "Mapping to TWPAS ObservationLaboratoryResult"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-laboratory-result-twpas"
* evaluate -> "(評估資訊)"
* evaluate.tests -> "(檢驗(查))"
* evaluate.tests.inspect -> "code.coding.code (檢驗(查)名稱或套組代碼)"
* evaluate.tests.inspectResultTxt -> "interpretation.coding.code (檢驗(查)結果判讀)"
* evaluate.tests.inspectResult[x] -> "value (檢驗(查)結果)"
* evaluate.tests.consultValueLower -> "referenceRange.low.value (檢驗(查)結果之參考範圍下限)"
* evaluate.tests.consultValueMax -> "referenceRange.high.value (檢驗(查)結果之參考範圍上限)"
* evaluate.tests.consultValueCat -> "referenceRange.type.coding.code (檢驗(查)結果之參考範圍類型)"
* evaluate.tests.consultValueDesc -> "referenceRange.text (檢驗(查)結果之參考範圍說明)"
* evaluate.tests.inspectSet -> "component (套組中的的檢驗)"
* evaluate.tests.caseTime -> "effectiveDateTime (檢驗(查)報告日期)"
* evaluate.tests.inspectPerformer -> "performer.reference(PractitionerTWPAS) (簽發檢驗(查)報告醫事人員身分證號)"
* evaluate.tests.inspectPdf -> "derivedFrom.reference(DocumentReferenceTWPAS) (檢驗(查)附件（檔案路徑）)"

Mapping: TWPASObservationPatientAssessment
Id: TWPASObservationPatientAssessment
Title: "Mapping to TWPAS ObservationPatientAssessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-pat-assessment-twpas"
* evaluate -> "(評估資訊)"
* evaluate.patientAssessment -> "(病人狀態評估)"
* evaluate.patientAssessment.patAst -> "code.coding.code (病人狀態評估項目代碼)"
* evaluate.patientAssessment.patAstResult -> "value (病人狀態評估結果)"
* evaluate.patientAssessment.patAstDate -> "effectiveDateTime (病人狀態評估日期)"
* evaluate.patientAssessment.patAstPerformer -> "performer.reference(PractitionerTWPAS) (評估項目醫事人員身分證號)"

Mapping: TWPASMedicationRequestTreat
Id: TWPASMedicationRequestTreat
Title: "Mapping to TWPAS MedicationRequestTreatTWPAS"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-treat-twpas"
* treat -> "(治療資訊)"
* treat.medicationRequest -> "(用藥品項)"
* treat.medicationRequest.drugStatus -> "status (藥物使用狀態)"
* treat.medicationRequest.drugCode -> "medicationCodeableConcept.coding.code (藥品代碼)"
* treat.medicationRequest.drugFre -> "dosageInstruction.timing.code.text (藥品使用頻率及服用時間)"
* treat.medicationRequest.dose -> "dosageInstruction.doseAndRate.doseQuantity.value (藥物每次處方劑量)"
* treat.medicationRequest.doseUnit -> "dosageInstruction.doseAndRate.doseQuantity.code (藥物每次處方劑量單位)"
* treat.medicationRequest.sDate -> "dosageInstruction.timing.repeat.boundsPeriod.start (藥物處方起始日期)"
* treat.medicationRequest.eDate -> "dosageInstruction.timing.repeat.boundsPeriod.end (藥物處方終止日期)"
* treat.medicationRequest.drugType -> "category.coding.code (自費註記)"
* treat.medicationRequest.eReason -> "statusReason (藥物處方終止原因)"
* treat.medicationRequest.drugRoute -> "dosageInstruction.route (給藥途徑／作用部位)"

Mapping: TWPASProcedure
Id: TWPASProcedure
Title: "Mapping to TWPAS Procedure"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Procedure-twpas"
* treat -> "(治療資訊)"
* treat.radiotherapy -> "(放射治療)"
* treat.radiotherapy.rtStatus -> "status (放射治療狀態)"
* treat.radiotherapy.rt -> "code.coding.code (放射治療項目)"
* treat.radiotherapy.realInspectTime -> "performedDateTime (放射治療日期)"
* treat.radiotherapy.rtDose -> "usedReference.reference(SubstanceTWPAS) (放射治療總劑量)"

Mapping: TWPASSubstance
Id: TWPASSubstance
Title: "Mapping to TWPAS Substance"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Substance-twpas"
* treat -> "(治療資訊)"
* treat.radiotherapy -> "(放射治療)"
* treat.radiotherapy.rtDose -> "ingredient.quantity.numerator.value (放射治療總劑量)"
* treat.radiotherapy.rtUnit -> "ingredient.quantity.numerator.unit (放射治療總劑量單位)"

Mapping: TWPASDocumentReference
Id: TWPASDocumentReference
Title: "Mapping to TWPAS DocumentReference"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DocumentReference-twpas"
* gene -> "(基因資訊)"
* gene.genPdf -> "content.attachment.url (基因報告（檔案路徑）)"
* treat -> "(治療資訊)"
* treat.carePlanDocument -> "content.attachment.url (治療計畫文件（檔案路徑）)"
* diagnosis -> "(治療資訊)"
* diagnosis.medrec -> "content.attachment.url (病歷資料（非屬影像報告檢查驗報告部分）)"
* evaluate -> "(評估資訊)"
* evaluate.tests -> "(檢驗(查))"
* evaluate.tests.inspectPdf -> "content.attachment.url (檢驗(查)附件（檔案路徑）)"
* gene.genPdfTitle -> "content.attachment.title (基因報告名稱)"
* treat.carePlanDocumentTitle -> "content.attachment.title (治療計畫文件名稱)"
* diagnosis.medrecTitle -> "content.attachment.title (病歷資料名稱)"
* evaluate.tests.inspectPdfTitle -> "content.attachment.title (檢驗(查)附件名稱)"

Mapping: TWPASObservationTreatmentAssessment
Id: TWPASObservationTreatmentAssessment
Title: "Mapping to TWPAS ObservationTreatmentAssessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-tx-assessment-twpas"
* result -> "(結果資訊)"
* result.txAst -> "code.coding.code (治療後疾病狀態評估項目)"
* result.txAstResult -> "valueString (治療後疾病狀態評估結果)"
* result.txAstDate -> "effectiveDateTime (治療後疾病狀態評估日期)"

Mapping: TWPASMedicationRequestApply
Id: TWPASMedicationRequestApply
Title: "Mapping to TWPAS MedicationRequestApply"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-apply-twpas"
* apply -> "(申請項目)"
* apply.cancerDrugType -> "medicationCodeableConcept.coding.code (事前審查品項代碼)"
* apply.applDrugFre -> "dosageInstruction.timing.code.coding.code (事前審查藥品使用頻率及服用時間)"
* apply.applDosage -> "dosageInstruction.doseAndRate.doseQuantity.value (事前審查藥品每次處方劑量)"
* apply.applDosageUnit -> "dosageInstruction.doseAndRate.doseQuantity.unit (事前審查藥品每次處方劑量單位)"
* apply.useSdate -> "dosageInstruction.timing.repeat.boundsPeriod.start (事前審查藥物預定處方起始日期)"
* apply.useEdate -> "dosageInstruction.timing.repeat.boundsPeriod.end (事前審查藥物預定處方終止日期)"
* apply.applDrugCycle -> "dosageInstruction.timing.repeat.count (事前審查藥品療程／週期數)"
* apply.applDrugRoute -> "dosageInstruction.route (給藥途徑／作用部位)"

Mapping: TWPASClaimResponseSelfAssessment
Id: TWPASClaimResponseSelfAssessment
Title: "Mapping to TWPAS ClaimResponse Self Assessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-self-assessment-twpas"
* apply -> "(申請項目)"
* apply.approveDate -> "created (核定日期)"
* apply.approveNum -> "item.adjudication.value (核定數量)"
* apply.approveComment -> "item.adjudication.reason.coding.code (核定註記)"
* apply.acceptanceStatus -> "disposition (案件受理狀態)"

Mapping: TWPASPractitioner
Id: TWPASPractitioner
Title: "Mapping to TWPAS Practitioner"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Practitioner-twpas"
* hosp -> "(院所資訊)"
* hosp.applPrsnId -> "identifier.value (申請醫師身分證號)"
* diagnosis -> "(疾病資訊)"
* diagnosis.imageStudy -> "(影像報告)"
* diagnosis.imageStudy.imgInterpreter -> "identifier.value (簽發影像報告醫師身分證號)"
* diagnosis.cancerStage -> "(癌症分期量表)"
* diagnosis.cancerStage.assessPerformer -> "identifier.value (簽發癌症分期報告醫師身分證號)"
* diagnosis.examinationReport -> "(檢查報告)"
* diagnosis.examinationReport.reportPerformer -> "identifier.value (檢查報告醫師身分證號)"
* evaluate -> "(評估資訊)"
* evaluate.tests -> "(檢驗(查))"
* evaluate.tests.inspectPerformer -> "identifier.value (簽發檢驗(查)報告醫事人員身分證號)"
* evaluate.patientAssessment -> "(病人狀態評估)"
* evaluate.patientAssessment.patAstPerformer -> "identifier.value (評估項目醫事人員身分證號)"*/