Instance: cla-imm
InstanceOf: ClaimImmTWPAS
Title: "免疫製劑事前審查"
Description: "依據免疫製劑事前審查-Claim Immunologic Aagent TWPAS Profile呈現免疫製劑事前審查"
Usage: #example
* extension[encounter].valueReference.reference = "Encounter/enc-min"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-apply-type#1 "送核"
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "Patient/pat-min"
* created = "2024-05-30"
* enterer.reference = "Practitioner/pra-min"
* provider.reference = "Organization/org-hosp-example"
* priority = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-tmhb-type#1 "一般事前審查申請"
* supportingInfo[weight].sequence = 1
* supportingInfo[weight].valueQuantity.value = 59.65
* supportingInfo[weight].valueQuantity.code = #kg
* supportingInfo[weight].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[height].sequence = 2
* supportingInfo[height].valueQuantity.value = 170
* supportingInfo[height].valueQuantity.code = #cm
* supportingInfo[height].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[bloodgroup].sequence = 3
* supportingInfo[bloodgroup].valueReference.reference = "Observation/obs-blood-group" 

* supportingInfo[imagingReport].sequence = 4
* supportingInfo[imagingReport].valueReference.reference = "DiagnosticReport/diaRep-ima-min" 
* supportingInfo[examinationReport].sequence = 6
* supportingInfo[examinationReport].valueReference.reference = "DiagnosticReport/diaRep-min" 
* supportingInfo[tests][0].sequence = 8
* supportingInfo[tests][=].valueReference.reference = "Observation/obs-lab-min" 
* supportingInfo[tests][+].sequence = 9
* supportingInfo[tests][=].valueReference.reference = "Observation/obs-lab-cbc" 
* supportingInfo[patientAssessment].sequence = 10
* supportingInfo[patientAssessment].valueReference.reference = "Observation/obs-pat-nyha" 
* supportingInfo[medicationRequest].sequence = 11
* supportingInfo[medicationRequest].valueReference.reference = "MedicationRequest/medReq-treat" 
* supportingInfo[radiotherapy].sequence = 12
* supportingInfo[radiotherapy].valueReference.reference = "Procedure/pro-min" 
* supportingInfo[carePlanDocument].sequence = 13
* supportingInfo[carePlanDocument].valueReference.reference = "DocumentReference/doc-careplan-min" 
* supportingInfo[medicalRecord].sequence = 14
* supportingInfo[medicalRecord].valueReference.reference = "DocumentReference/doc-medicalRecord-min"
* supportingInfo[treatmentAssessment].sequence = 15
* supportingInfo[treatmentAssessment].valueReference.reference = "Observation/obs-tx-min"
* supportingInfo[opd].sequence = 16
* supportingInfo[opd].valueReference.reference = "Composition/opd"
* supportingInfo[allergy].sequence = 17
* supportingInfo[allergy].valueReference.reference = "AllergyIntolerance/all-min"

* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept  = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#I50.812
* diagnosis.extension[recordedDate].valueDate = "2024-01-01"
* diagnosis.type.text = "Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI"
* procedure.sequence = 1
* procedure.procedureCodeableConcept = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#3E0Y704
* procedure.date = "2024-01-01"
* item[0].sequence = 1
* item[=].productOrService = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-order-type#1 "藥品"
* item[=].extension[requestedService].valueReference.reference = "MedicationRequest/medReq-apply" 
* item[=].modifier[continuation] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status#1 "初次使用"
* item[=].modifier[lot] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* item[=].programCode.text = "ALK陽性的晚期非小細胞肺癌第一線治療"
* item[=].quantity.value = 52
* item[=].quantity.code = #{tbl}
* item[=].quantity.system = "http://unitsofmeasure.org"
* item[1].sequence = 2
* item[=].productOrService = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-order-type#1 "藥品"
* item[=].extension[requestedService].valueReference.reference = "MedicationRequest/medReq-apply-2" 
* item[=].modifier[continuation] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status#1 "初次使用"
* item[=].modifier[lot] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* item[=].programCode.coding = NHIApplyReason#C50P1
* item[=].quantity.value = 70
* item[=].quantity.code = #{tbl}
* item[=].quantity.system = "http://unitsofmeasure.org"
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.reference = "Coverage/cov-min"