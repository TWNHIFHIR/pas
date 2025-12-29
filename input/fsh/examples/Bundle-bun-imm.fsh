Instance: bun-imm
InstanceOf: BundleImmTWPAS
Title: "免疫製劑事前審查"
Description: "依據免疫製劑事前審查-Bundle Immunologic Aagent TWPAS Profile呈現免疫製劑事前審查之範例"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#collection

* entry[claim].fullUrl = "https://nhicore.nhi.gov.tw/pas/Claim/cla-imm"
* entry[claim].resource = cla-imm

* entry[compositionOpd].fullUrl = "https://nhicore.nhi.gov.tw/pas/Composition/opd"
* entry[compositionOpd].resource = opd

* entry[encounterOpd].fullUrl = "https://nhicore.nhi.gov.tw/pas/Encounter/enc-opd"
* entry[encounterOpd].resource = enc-opd

* entry[encounter].fullUrl = "https://nhicore.nhi.gov.tw/pas/Encounter/enc-min"
* entry[encounter].resource = enc-min

* entry[patient].fullUrl = "https://nhicore.nhi.gov.tw/pas/Patient/pat-min"
* entry[patient].resource = pat-min

* entry[practitioner].fullUrl = "https://nhicore.nhi.gov.tw/pas/Practitioner/pra-min"
* entry[practitioner].resource = pra-min

* entry[organization].fullUrl = "https://nhicore.nhi.gov.tw/pas/Organization/org-hosp-example"
* entry[organization].resource = org-hosp-example

* entry[condition].fullUrl = "https://nhicore.nhi.gov.tw/pas/Condition/con-diagnosis"
* entry[condition].resource = con-diagnosis

* entry[observationBloodgroup].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-blood-group"
* entry[observationBloodgroup].resource = obs-blood-group

* entry[allergyIntolerance].fullUrl = "https://nhicore.nhi.gov.tw/pas/AllergyIntolerance/all-min"
* entry[allergyIntolerance].resource = all-min

* entry[observationSubjective].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-subjective"
* entry[observationSubjective].resource = obs-subjective

* entry[observationObjective].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-objective"
* entry[observationObjective].resource = obs-objective

* entry[clinicalImpression].fullUrl = "https://nhicore.nhi.gov.tw/pas/ClinicalImpression/cliImp-min"
* entry[clinicalImpression].resource = cliImp-min

* entry[carePlan].fullUrl = "https://nhicore.nhi.gov.tw/pas/CarePlan/careplan-min"
* entry[carePlan].resource = careplan-min



* entry[diagnosticReportImage].fullUrl = "https://nhicore.nhi.gov.tw/pas/DiagnosticReport/diaRep-ima-min"
* entry[diagnosticReportImage].resource = diaRep-ima-min

* entry[imageStudy].fullUrl = "https://nhicore.nhi.gov.tw/pas/ImagingStudy/imaStu-min"
* entry[imageStudy].resource = imaStu-min

* entry[media].fullUrl = "https://nhicore.nhi.gov.tw/pas/Media/med-min"
* entry[media].resource = med-min

* entry[diagnosticReport].fullUrl = "https://nhicore.nhi.gov.tw/pas/DiagnosticReport/diaRep-min"
* entry[diagnosticReport].resource = diaRep-min

* entry[observationLaboratoryResult][0].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-lab-min"
* entry[observationLaboratoryResult][0].resource = obs-lab-min

* entry[observationLaboratoryResult][1].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-lab-cbc"
* entry[observationLaboratoryResult][1].resource = obs-lab-cbc

* entry[documentReference][0].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-test-min"
* entry[documentReference][0].resource = doc-test-min

* entry[observationPatientAssessment].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-pat-nyha"
* entry[observationPatientAssessment].resource = obs-pat-nyha

* entry[medicationRequestTreat].fullUrl = "https://nhicore.nhi.gov.tw/pas/MedicationRequest/medReq-treat"
* entry[medicationRequestTreat].resource = medReq-treat

* entry[procedure].fullUrl = "https://nhicore.nhi.gov.tw/pas/Procedure/pro-min"
* entry[procedure].resource = pro-min

* entry[substance].fullUrl = "https://nhicore.nhi.gov.tw/pas/Substance/sub-min"
* entry[substance].resource = sub-min

* entry[documentReference][1].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-careplan-min"
* entry[documentReference][1].resource = doc-careplan-min

* entry[observationTreatmentAssessment].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-tx-min"
* entry[observationTreatmentAssessment].resource = obs-tx-min

* entry[medicationRequestApply][0].fullUrl = "https://nhicore.nhi.gov.tw/pas/MedicationRequest/medReq-apply"
* entry[medicationRequestApply][0].resource = medReq-apply

* entry[medicationRequestApply][1].fullUrl = "https://nhicore.nhi.gov.tw/pas/MedicationRequest/medReq-apply-2"
* entry[medicationRequestApply][1].resource = medReq-apply-2

* entry[coverage].fullUrl = "https://nhicore.nhi.gov.tw/pas/Coverage/cov-min"
* entry[coverage].resource = cov-min

* entry[organizationOrg].fullUrl = "https://nhicore.nhi.gov.tw/pas/Organization/org-nhi"
* entry[organizationOrg].resource = org-nhi

* entry[documentReference][2].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-medicalRecord-min"
* entry[documentReference][2].resource = doc-medicalRecord-min

* entry[documentReference][3].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-patientAssessment-min"
* entry[documentReference][3].resource = doc-patientAssessment-min