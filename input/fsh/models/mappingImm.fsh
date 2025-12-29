Mapping: TWPASImmClaim
Id: TWPASImmClaim
Title: "Mapping to TWPAS Claim Immunologic Aagent"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Claim-immunologic-agent-twpas"
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
* patient.blood -> "Claim.supportingInfo.where(category.coding.code = 'bloodgroup').valueReference"
* patient.allergy -> "Claim.supportingInfo.where(category.coding.code = 'allergy').valueReference"

* opd -> "Claim.supportingInfo.where(category.coding.code = 'opd').valueReference"

* diagnosis.imageStudy.imgItem -> "Claim.supportingInfo.where(category.coding.code = 'imagingReport').valueReference.reference"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "Claim.supportingInfo.where(category.coding.code = 'examinationReport').valueReference.reference"
* diagnosis.medrec -> "Claim.supportingInfo.where(category.coding.code = 'medicalRecord').valueReference.reference"
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


Mapping: TWPASImmPatient
Id: TWPASImmPatient
Title: "Mapping to TWPAS Patient"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Patient-twpas"
* patient.name -> "Patient.name.text"
* patient.idCard -> "Patient.identifier.where(type.coding.code = 'NNxxx').value"
* patient.patId -> "Patient.identifier.where(type.coding.code = 'MR').value"
* patient.birthday -> "Patient.birthDate"
* patient.gender -> "Patient.gender"


Mapping: TWPASObservationBloodGroup
Id: TWPASObservationBloodGroup
Title: "Mapping to TWPAS ObservationBloodGroupTWPAS"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-blood-group-twpas"
* patient.blood -> "Observation.value[x]"


Mapping: TWPASAllergyIntolerance
Id: TWPASAllergyIntolerance
Title: "Mapping to TWPAS AllergyIntolerance"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/AllergyIntolerance-twpas"
* patient.allergy -> "AllergyIntolerance.code"


Mapping: TWPASCompositionOpd
Id: TWPASCompositionOpd
Title: "Mapping to TWPAS Composition OPD"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Composition-opd-twpas"
* opd.subjective -> "Composition.section[subjective].entry"
* opd.objective -> "Composition.section[subjective].entry"
* opd.assessment -> "Composition.section[subjective].entry"
* opd.plan -> "Composition.section[subjective].entry"


Mapping: TWPASEncounterOpd
Id: TWPASEncounterOpd
Title: "Mapping to TWPAS Encounter OPD"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Encounter-opd-twpas"
* opd.hospId -> "Encounter.serviceProvider"
* opd.funcDate -> "Encounter.period.start"
* opd.funcType -> "Encounter.serviceType"
* opd.prsnId -> "Encounter.participant.individual"
* opd.icd10cmCode -> "Encounter.diagnosis.condition"


Mapping: TWPASCondition
Id: TWPASCondition
Title: "Mapping to TWPAS Condition"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Condition-twpas"
* opd.icd10cmCode -> "Condition.code"


Mapping: TWPASObservationSubjective
Id: TWPASObservationSubjective
Title: "Mapping to TWPAS Observation Subjective"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-subjective-twpas"
* opd.subjective -> "Observation.value[x]"


Mapping: TWPASObservationObjective
Id: TWPASObservationObjective
Title: "Mapping to TWPAS Observation Objective"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-objective-twpas"
* opd.objective -> "Observation.value[x]"


Mapping: TWPASClinicalImpression
Id: TWPASClinicalImpression
Title: "Mapping to TWPAS ClinicalImpression"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClinicalImpression-twpas"
* opd.assessment -> "ClinicalImpression.summary"


Mapping: TWPASCarePlan
Id: TWPASCarePlan
Title: "Mapping to TWPAS CarePlan"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/CarePlan-twpas"
* opd.plan -> "CarePlan.description"


Mapping: TWPASImmDiagnosticReportImage
Id: TWPASImmDiagnosticReportImage
Title: "Mapping to TWPAS DiagnosticReportImage"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-image-twpas"
* diagnosis.imageStudy.imgInterpreter -> "DiagnosticReport.performer.reference"
* diagnosis.imageStudy.imgItem -> "DiagnosticReport.code.coding.code"
* diagnosis.imageStudy.imgResult -> "DiagnosticReport.conclusion"
* diagnosis.imageStudy.imgBodySite -> "DiagnosticReport.code.text"
* diagnosis.imageStudy.imgDicom -> "DiagnosticReport.imagingStudy.reference"
* diagnosis.imageStudy.imgDate -> "DiagnosticReport.effectiveDateTime"
* diagnosis.imageStudy.imgNonDicom -> "DiagnosticReport.media.link.reference"

Mapping: TWPASImmImagingStudy
Id: TWPASImmImagingStudy
Title: "Mapping to TWPAS ImagingStudy"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ImagingStudy-twpas"
* diagnosis.imageStudy.imgBodySite -> "ImagingStudy.series.bodySite.code"
* diagnosis.imageStudy.imgDicom -> "ImagingStudy.series.instance.uid"

Mapping: TWPASImmMedia
Id: TWPASImmMedia
Title: "Mapping to TWPAS Media"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Media-twpas"
* diagnosis.imageStudy.imgBodySite -> "Media.bodySite.coding.code"
* diagnosis.imageStudy.imgNonDicom -> "Media.contnet.url"

Mapping: TWPASImmDiagnosticReport
Id: TWPASImmDiagnosticReport
Title: "Mapping to TWPAS DiagnosticReport"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-twpas"
* diagnosis.examinationReport.reportType -> "DiagnosticReport.code.coding.code"
* diagnosis.examinationReport.speType -> "DiagnosticReport.code.text"
* diagnosis.examinationReport.reportDate -> "DiagnosticReport.effectiveDateTime"
* diagnosis.examinationReport.reportPerformer -> "DiagnosticReport.performer.reference"
* diagnosis.examinationReport.reportResult.reportResultString -> "DiagnosticReport.conclusion"
* diagnosis.examinationReport.reportResult.reportResultPdf -> "DiagnosticReport.presentedForm.url"
* diagnosis.examinationReport.reportResult.reportResultPdfTitle -> "DiagnosticReport.presentedForm.title"




Mapping: TWPASImmObservationLaboratoryResult
Id: TWPASImmObservationLaboratoryResult
Title: "Mapping to TWPAS ObservationLaboratoryResult"
Source: ApplyImmModel
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

Mapping: TWPASImmObservationPatientAssessment
Id: TWPASImmObservationPatientAssessment
Title: "Mapping to TWPAS ObservationPatientAssessment"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-pat-assessment-twpas"
* evaluate.patientAssessment.patAst -> "Observation.code.coding.code"
* evaluate.patientAssessment.patAstResult -> "Observation.value"
* evaluate.patientAssessment.patAstDate -> "Observation.effectiveDateTime"
* evaluate.patientAssessment.patAstPerformer -> "Observation.performer.reference"

Mapping: TWPASImmMedicationRequestTreat
Id: TWPASImmMedicationRequestTreat
Title: "Mapping to TWPAS MedicationRequestTreatTWPAS"
Source: ApplyImmModel
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

Mapping: TWPASImmProcedure
Id: TWPASImmProcedure
Title: "Mapping to TWPAS Procedure"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Procedure-twpas"
* treat.radiotherapy.rtStatus -> "Procedure.status"
* treat.radiotherapy.rt -> "Procedure.code.coding.code"
* treat.radiotherapy.realInspectTime -> "Procedure.performedDateTime"
* treat.radiotherapy.rtDose -> "Procedure.usedReference.reference"

Mapping: TWPASImmSubstance
Id: TWPASImmSubstance
Title: "Mapping to TWPAS Substance"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Substance-twpas"
* treat.radiotherapy.rtDose -> "Substance.ingredient.quantity.numerator.value"
* treat.radiotherapy.rtUnit -> "Substance.ingredient.quantity.numerator.code"

Mapping: TWPASImmDocumentReference
Id: TWPASImmDocumentReference
Title: "Mapping to TWPAS DocumentReference"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DocumentReference-twpas"
* treat.carePlanDocument -> "DocumentReference.content.attachment.url"
* diagnosis.medrec -> "DocumentReference.content.attachment.url"
* evaluate.tests.inspectPdf -> "DocumentReference.content.attachment.url"
* treat.carePlanDocumentTitle -> "DocumentReference.content.attachment.title"
* diagnosis.medrecTitle -> "DocumentReference.content.attachment.title"
* evaluate.tests.inspectPdfTitle -> "DocumentReference.content.attachment.title"

Mapping: TWPASImmObservationTreatmentAssessment
Id: TWPASImmObservationTreatmentAssessment
Title: "Mapping to TWPAS ObservationTreatmentAssessment"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Observation-tx-assessment-twpas"
* result.txAst -> "Observation.code.coding.code"
* result.txAstResult -> "Observation.valueString"
* result.txAstDate -> "Observation.effectiveDateTime"

Mapping: TWPASImmMedicationRequestApply
Id: TWPASImmMedicationRequestApply
Title: "Mapping to TWPAS MedicationRequestApply"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/MedicationRequest-apply-twpas"
* apply.cancerDrugType -> "MedicationRequest.medicationCodeableConcept.coding.code"
* apply.applDrugFre -> "MedicationRequest.dosageInstruction.timing.code.coding"
* apply.applDosage -> "MedicationRequest.dosageInstruction.doseAndRate.dose[x].value"
* apply.applDosageUnit -> "MedicationRequest.dosageInstruction.doseAndRate.dose[x].unit"
* apply.useSdate -> "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start"
* apply.useEdate -> "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end"
* apply.applDrugCycle -> "MedicationRequest.dosageInstruction.timing.repeat.count"
* apply.applDrugRoute -> "MedicationRequest.dosageInstruction.route"

Mapping: TWPASImmClaimResponseSelfAssessment
Id: TWPASImmClaimResponseSelfAssessment
Title: "Mapping to TWPAS ClaimResponse Self Assessment"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-self-assessment-twpas"
* apply.approveDate -> "ClaimResponse.created"
* apply.approver -> "ClaimResponse.extension:requestor"
* apply.approveComment -> "ClaimResponse.item.adjudication.reason"
* apply.approveNum -> "ClaimResponse.item.adjudication.value"
* apply.acceptanceStatus -> "ClaimResponse.item.detail.adjudication.reason"

Mapping: TWPASImmPractitioner
Id: TWPASImmPractitioner
Title: "Mapping to TWPAS Practitioner"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Practitioner-twpas"
* hosp.applPrsnId -> "Practitioner.identifier.value"
* diagnosis.imageStudy.imgInterpreter -> "Practitioner.identifier.value"
* diagnosis.examinationReport.reportPerformer -> "Practitioner.identifier.value"
* evaluate.tests.inspectPerformer -> "Practitioner.identifier.value"
* evaluate.patientAssessment.patAstPerformer -> "Practitioner.identifier.value"

Mapping: TWPASImmBundle
Id: TWPASImmBundle
Title: "Mapping to TWPAS Bundle Immunologic Aagent"
Source: ApplyImmModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-immunologic-agent-twpas"
* hosp.immediateDate -> "Bundle.timestamp"