Mapping: TWPASClaim
Id: TWPASClaim
Title: "Mapping to TWPAS Claim"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-twpas"
* hosp.hospId -> "Claim.provider.reference"
* hosp.applType -> "Claim.subType.coding.code"
* hosp.funcType -> "Claim.extension.where(url = 'https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-claim-encounter').valueReference.reference"
* hosp.applPrsnId -> "Claim.enterer.reference"
* hosp.applDate -> "Claim.created"
* hosp.tmhbType -> "Claim.priority.coding.code"
* hosp.oldAcptNo -> "Claim.identifier.value"

* patient.idCard -> "Claim.patient.reference"
* patient.weight -> "Claim.supportingInfo.where(category.coding.code = 'weight').valueQuantity.value"
* patient.height -> "Claim.supportingInfo.where(category.coding.code = 'height').valueQuantity.value"
* patient.pregnant -> "Claim.supportingInfo.where(category.coding.code = 'pregnancyBreastfeedingStatus').valueBoolean"

* diagnosis.imageStudy.imgItem -> "Claim.supportingInfo.where(category.coding.code = 'imagingReport').valueReference.reference"
* diagnosis.cancerStage.assessItem -> "Claim.supportingInfo.where(category.coding.code = 'cancerStage').valueReference.reference"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "Claim.supportingInfo.where(category.coding.code = 'examinationReport').valueReference.reference"
* diagnosis.medrec -> "Claim.supportingInfo.where(category.coding.code = 'medicalRecord').valueReference.reference"
* gene.genTestCode -> "Claim.supportingInfo.where(category.coding.code = 'geneInfo').valueReference.reference"
* evaluate.tests.inspect -> "Claim.supportingInfo.where(category.coding.code = 'tests').valueReference.reference"
* evaluate.patientAssessment.patAst -> "Claim.supportingInfo.where(category.coding.code = 'patientAssessment').valueReference.reference"

* treat.medicationRequest.drugCode -> "Claim.supportingInfo.where(category.coding.code = 'medicationRequest').valueReference.reference"
* treat.radiotherapy.rt -> "Claim.supportingInfo.where(category.coding.code = 'radiotherapy').valueReference.reference"
* treat.carePlanDocument -> "Claim.supportingInfo.where(category.coding.code = 'carePlanDocument').valueReference.reference"
* result.txAst -> "Claim.supportingInfo.where(category.coding.code = 'treatmentAssessment').valueReference.reference"
* diagnosis.icd10cmCode -> "Claim.diagnosis.diagnosisCodeableConcept.coding.code"
* diagnosis.diagDate -> "Claim.diagnosis.extension.where(url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate').valueDate"
* diagnosis.diagCurrentStatus -> "Claim.diagnosis.type.text"
* treat.opCode -> "Claim.procedure.procedureCodeableConcept.coding"
* treat.opDate -> "Claim.procedure.date"
* apply.orderType -> "Claim.item.productOrService.coding.code"
* apply.continuation -> "Claim.item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status').coding.code"
* apply.lot -> "Claim.item.modifier.where(coding.system = 'https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy').coding.code"
* apply.cancerDrugType -> "Claim.item.extension.where(url = 'https://nhicore.nhi.gov.tw/pas/StructureDefinition/extension-requestedService').valueReference.reference"
* apply.applyReason -> "Claim.item.programCode"
* apply.applySide -> "Claim.item.bodySite"
* apply.applQty -> "Claim.item.quantity.value"
* apply.applQtyUnit -> "Claim.item.quantity.code"


Mapping: TWPASPatient
Id: TWPASPatient
Title: "Mapping to TWPAS Patient"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Patient-twpas"
* patient.name -> "Patient.name.text"
* patient.idCard -> "Patient.identifier.where(type.coding.code = 'NNxxx').value"
* patient.patId -> "Patient.identifier.where(type.coding.code = 'MR').value"
* patient.birthday -> "Patient.birthDate"
* patient.gender -> "Patient.gender"

Mapping: TWPASOrganization
Id: TWPASOrganization
Title: "Mapping to TWPAS Organization"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Organization-twpas"
* hosp.hospId -> "Organization.identifier.value"
* gene.genOrg -> "Organization.identifier.value"

Mapping: TWPASEncounter
Id: TWPASEncounter
Title: "Mapping to TWPAS Encounter"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-twpas"
* hosp.funcType -> "Encounter.serviceType.coding.code"

Mapping: TWPASDiagnosticReportImage
Id: TWPASDiagnosticReportImage
Title: "Mapping to TWPAS DiagnosticReportImage"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-image-twpas"
* diagnosis.imageStudy.imgInterpreter -> "DiagnosticReport.performer.reference"
* diagnosis.imageStudy.imgItem -> "DiagnosticReport.code.coding.code"
* diagnosis.imageStudy.imgResult -> "DiagnosticReport.conclusion"
* diagnosis.imageStudy.imgBodySite -> "DiagnosticReport.code.text"
* diagnosis.imageStudy.imgDicom -> "DiagnosticReport.imagingStudy.reference"
* diagnosis.imageStudy.imgDate -> "DiagnosticReport.effectiveDateTime"
* diagnosis.imageStudy.imgNonDicom -> "DiagnosticReport.media.link.reference"

Mapping: TWPASImagingStudy
Id: TWPASImagingStudy
Title: "Mapping to TWPAS ImagingStudy"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ImagingStudy-twpas"
* diagnosis.imageStudy.imgBodySite -> "ImagingStudy.series.bodySite.code"
* diagnosis.imageStudy.imgDicom -> "ImagingStudy.series.instance.uid"

Mapping: TWPASMedia
Id: TWPASMedia
Title: "Mapping to TWPAS Media"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Media-twpas"
* diagnosis.imageStudy.imgBodySite -> "Media.bodySite.coding.code"
* diagnosis.imageStudy.imgNonDicom -> "Media.contnet.url"

Mapping: TWPASObservationCancerStage
Id: TWPASObservationCancerStage
Title: "Mapping to TWPAS ObservationCancerStage"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-cancer-stage-twpas"
* diagnosis.cancerStage.assessItem  -> "Observation.code.coding.code"
* diagnosis.cancerStage.assessDate -> "Observation.effectiveDateTime"
* diagnosis.cancerStage.assessPerformer -> "Observation.performer.reference"
* diagnosis.cancerStage.assessScore -> "Observation.valueCodeableConcept.coding.code"

Mapping: TWPASDiagnosticReport
Id: TWPASDiagnosticReport
Title: "Mapping to TWPAS DiagnosticReport"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-twpas"
* diagnosis.examinationReport.reportType -> "DiagnosticReport.code.coding.code"
* diagnosis.examinationReport.speType -> "DiagnosticReport.code.text"
* diagnosis.examinationReport.reportDate -> "DiagnosticReport.effectiveDateTime"
* diagnosis.examinationReport.reportPerformer -> "DiagnosticReport.performer.reference"
* diagnosis.examinationReport.reportResult.reportResultString -> "DiagnosticReport.conclusion"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "DiagnosticReport.presentedForm.url"
* diagnosis.examinationReport.reportResult.reportResultPdfTitle -> "DiagnosticReport.presentedForm.title"

Mapping: TWPASObservationDiagnostic
Id: TWPASObservationDiagnostic
Title: "Mapping to TWPAS ObservationDiagnostic"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-diagnostic-twpas"
* gene.genTestCode -> "Observation.component.code.coding.code"
* gene.genTestValue -> "Observation.component.value[x]"
* gene.mutationType -> "Observation.component.where(code.coding.code = '48019-4').valueCodeableConcept.coding.code"
* gene.specimenType -> "Observation.specimen.reference"
* gene.genMethod -> "Observation.method.coding.code"
* gene.genDate -> "Observation.effectiveDateTime"
* gene.genOrg -> "Observation.performer.reference"
* gene.genResult -> "Observation.valueCodeableConcept.coding.code"
* gene.genInterpretation  -> "Observation.interpretation.coding.code"
* gene.genPdf -> "Observation.derivedFrom.reference"

Mapping: TWPASObservationLaboratoryResult
Id: TWPASObservationLaboratoryResult
Title: "Mapping to TWPAS ObservationLaboratoryResult"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-laboratory-result-twpas"
* evaluate.tests.inspect -> "Observation.code.coding.code"
* evaluate.tests.inspectResultTxt -> "Observation.interpretation.coding.code"
* evaluate.tests.inspectResult[x] -> "Observation.value"
* evaluate.tests.consultValueLower -> "Observation.referenceRange.low.value"
* evaluate.tests.consultValueMax -> "Observation.referenceRange.high.value"
* evaluate.tests.consultValueCat -> "Observation.referenceRange.type.coding.code"
* evaluate.tests.consultValueDesc -> "Observation.referenceRange.text"
* evaluate.tests.inspectSet -> "Observation.component"
* evaluate.tests.caseTime -> "Observation.effectiveDateTime"
* evaluate.tests.inspectPerformer -> "Observation.performer.reference"
* evaluate.tests.inspectPdf -> "Observation.derivedFrom.reference"

Mapping: TWPASObservationPatientAssessment
Id: TWPASObservationPatientAssessment
Title: "Mapping to TWPAS ObservationPatientAssessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-pat-assessment-twpas"
* evaluate.patientAssessment.patAst -> "Observation.code.coding.code"
* evaluate.patientAssessment.patAstResult -> "Observation.value"
* evaluate.patientAssessment.patAstDate -> "Observation.effectiveDateTime"
* evaluate.patientAssessment.patAstPerformer -> "Observation.performer.reference"

Mapping: TWPASMedicationRequestTreat
Id: TWPASMedicationRequestTreat
Title: "Mapping to TWPAS MedicationRequestTreatTWPAS"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-treat-twpas"
* treat.medicationRequest.drugStatus -> "MedicationRequest.status"
* treat.medicationRequest.drugCode -> "MedicationRequest.medicationCodeableConcept.coding.code"
* treat.medicationRequest.drugFre -> "MedicationRequest.dosageInstruction.timing.code.text"
* treat.medicationRequest.dose -> "MedicationRequest.dosageInstruction.doseAndRate.doseQuantity.value"
* treat.medicationRequest.doseUnit -> "MedicationRequest.dosageInstruction.doseAndRate.doseQuantity.code"
* treat.medicationRequest.sDate -> "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start"
* treat.medicationRequest.eDate -> "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end"
* treat.medicationRequest.drugType -> "MedicationRequest.category.coding.code"
* treat.medicationRequest.eReason -> "MedicationRequest.statusReason"
* treat.medicationRequest.drugRoute -> "MedicationRequest.dosageInstruction.route"

Mapping: TWPASProcedure
Id: TWPASProcedure
Title: "Mapping to TWPAS Procedure"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Procedure-twpas"
* treat.radiotherapy.rtStatus -> "Procedure.status"
* treat.radiotherapy.rt -> "Procedure.code.coding.code"
* treat.radiotherapy.realInspectTime -> "Procedure.performedDateTime"
* treat.radiotherapy.rtDose -> "Procedure.usedReference.reference"

Mapping: TWPASSubstance
Id: TWPASSubstance
Title: "Mapping to TWPAS Substance"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Substance-twpas"
* treat.radiotherapy.rtDose -> "Substance.ingredient.quantity.numerator.value"
* treat.radiotherapy.rtUnit -> "Substance.ingredient.quantity.numerator.code"

Mapping: TWPASDocumentReference
Id: TWPASDocumentReference
Title: "Mapping to TWPAS DocumentReference"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DocumentReference-twpas"
* gene.genPdf -> "DocumentReference.content.attachment.url"
* treat.carePlanDocument -> "DocumentReference.content.attachment.url"
* diagnosis.medrec -> "DocumentReference.content.attachment.url"
* evaluate.tests.inspectPdf -> "DocumentReference.content.attachment.url"
* gene.genPdfTitle -> "DocumentReference.content.attachment.title"
* treat.carePlanDocumentTitle -> "DocumentReference.content.attachment.title"
* diagnosis.medrecTitle -> "DocumentReference.content.attachment.title"
* evaluate.tests.inspectPdfTitle -> "DocumentReference.content.attachment.title"

Mapping: TWPASObservationTreatmentAssessment
Id: TWPASObservationTreatmentAssessment
Title: "Mapping to TWPAS ObservationTreatmentAssessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-tx-assessment-twpas"
* result.txAst -> "Observation.code.coding.code"
* result.txAstResult -> "Observation.valueString"
* result.txAstDate -> "Observation.effectiveDateTime"

Mapping: TWPASMedicationRequestApply
Id: TWPASMedicationRequestApply
Title: "Mapping to TWPAS MedicationRequestApply"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-apply-twpas"
* apply.cancerDrugType -> "MedicationRequest.medicationCodeableConcept.coding.code"
* apply.applDrugFre -> "MedicationRequest.dosageInstruction.timing.code.coding"
* apply.applDosage -> "MedicationRequest.dosageInstruction.doseAndRate.dose[x].value"
* apply.applDosageUnit -> "MedicationRequest.dosageInstruction.doseAndRate.dose[x].unit"
* apply.useSdate -> "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start"
* apply.useEdate -> "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end"
* apply.applDrugCycle -> "MedicationRequest.dosageInstruction.timing.repeat.count"
* apply.applDrugRoute -> "MedicationRequest.dosageInstruction.route"

Mapping: TWPASClaimResponseSelfAssessment
Id: TWPASClaimResponseSelfAssessment
Title: "Mapping to TWPAS ClaimResponse Self Assessment"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-self-assessment-twpas"
* apply.approveDate -> "ClaimResponse.created"
* apply.approver -> "ClaimResponse.extension:requestor"
* apply.approveComment -> "ClaimResponse.item.adjudication.reason"
* apply.approveNum -> "ClaimResponse.item.adjudication.value"
* apply.acceptanceStatus -> "ClaimResponse.item.detail.adjudication.reason"

Mapping: TWPASPractitioner
Id: TWPASPractitioner
Title: "Mapping to TWPAS Practitioner"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Practitioner-twpas"
* hosp.applPrsnId -> "Practitioner.identifier.value"
* diagnosis.imageStudy.imgInterpreter -> "Practitioner.identifier.value"
* diagnosis.cancerStage.assessPerformer -> "Practitioner.identifier.value"
* diagnosis.examinationReport.reportPerformer -> "Practitioner.identifier.value"
* evaluate.tests.inspectPerformer -> "Practitioner.identifier.value"
* evaluate.patientAssessment.patAstPerformer -> "Practitioner.identifier.value"