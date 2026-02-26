Instance: cla-1
InstanceOf: ClaimTWPAS
Title: "事前審查-送核、套組檢驗、多事前審查癌藥品項"
Description: "依據癌藥事前審查-Claim TWPAS Profile呈現事前審查之範例，含兩筆檢驗(查)"
Usage: #example
//* identifier.value = "20240831010109051701"
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
* supportingInfo[pregnancy].sequence = 3
* supportingInfo[pregnancy].valueBoolean = false

* supportingInfo[imagingReport].sequence = 4
* supportingInfo[imagingReport].valueReference.reference = "DiagnosticReport/diaRep-ima-min" 
* supportingInfo[cancerStage].sequence = 5
* supportingInfo[cancerStage].valueReference.reference = "Observation/obs-cancer-figo" 
* supportingInfo[examinationReport].sequence = 6
* supportingInfo[examinationReport].valueReference.reference = "DiagnosticReport/diaRep-min" 
* supportingInfo[geneInfo].sequence = 7
* supportingInfo[geneInfo].valueReference.reference = "Observation/obs-diagnostic-min" 
* supportingInfo[tests][0].sequence = 8
* supportingInfo[tests][=].valueReference.reference = "Observation/obs-lab-min" 
* supportingInfo[tests][+].sequence = 9
* supportingInfo[tests][=].valueReference.reference = "Observation/obs-lab-cbc" 
* supportingInfo[patientAssessment].sequence = 10
* supportingInfo[patientAssessment].valueReference.reference = "Observation/obs-pat-nyha" 
* supportingInfo[medicationRequest].sequence = 11
* supportingInfo[medicationRequest].valueReference.reference = "MedicationRequest/medReq-treat" 
//* supportingInfo[medicationRequest].code = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* supportingInfo[radiotherapy].sequence = 12
* supportingInfo[radiotherapy].valueReference.reference = "Procedure/pro-min" 
* supportingInfo[carePlanDocument].sequence = 13
* supportingInfo[carePlanDocument].valueReference.reference = "DocumentReference/doc-careplan-min" 
* supportingInfo[medicalRecord].sequence = 14
* supportingInfo[medicalRecord].valueReference.reference = "DocumentReference/doc-medicalRecord-min"
* supportingInfo[treatmentAssessment].sequence = 15
* supportingInfo[treatmentAssessment].valueReference.reference = "Observation/obs-tx-min"
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Claim-twpas.html\">癌藥事前審查-Claim TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：Institutional<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/claim-type\">ClaimTypeCodes</a>#institutional)</span></p>
    <p><b>就醫科別</b>：<a href=\"Encounter-enc-min.html\">Encounter/enc-min</a> &quot;胸腔暨重症加護&quot;</p>
    <p><b>申報類別</b>：送核<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-type.html\">NHI-申報類別值集</a>#1)</span></p>
    <p><b>目的</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>申請日期</b>：2024-05-30</p>
    <p><b>申請醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>醫事機構代碼</b>：<a href=\"Organization-org-hosp-example.html\">Organization/org-hosp-example</a></p>
    <p><b>申請案件類別</b>：一般事前審查申請<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tmhb-type.html\">NHI-申請案件類別值集</a>#1)</span></p>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：1</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type weight}\">病人體重</span></p>
        <p><b>value</b>：59.65 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codekg = 'kg')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：2</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type height}\">病人身高</span></p>
        <p><b>value</b>：170 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codecm = 'cm')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：3</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type pregnancyBreastfeedingStatus}\">是否懷孕或哺乳</span></p>
        <p><b>value</b>：false</p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：4</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type imagingReport}\">影像報告</span></p>
        <p><b>value</b>：<a href=\"DiagnosticReport-diaRep-ima-min.html\">DiagnosticReport/diaRep-ima-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：5</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type cancerStage}\">癌症分期量表</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-cancer-figo.html\">Observation/obs-cancer-figo</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：6</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type examinationReport}\">檢查報告</span></p>
        <p><b>value</b>：<a href=\"DiagnosticReport-diaRep-min.html\">DiagnosticReport/diaRep-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：7</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type geneInfo}\">基因資訊</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-diagnostic-min.html\">Observation/obs-diagnostic-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：8</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type tests}\">檢驗檢查-單項</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-lab-min.html\">Observation/obs-lab-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：9</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type tests}\">檢驗檢查-套組(全套血液檢查)</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-lab-cbc.html\">Observation/obs-lab-cbc</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：10</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type patientAssessment}\">病人狀態評估</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-pat-nyha.html\">Observation/obs-pat-nyha</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：11</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type medicationRequest}\">用藥品項</span></p>
        <p><b>value</b>：<a href=\"MedicationRequest-medReq-treat.html\">MedicationRequest/medReq-treat</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：12</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type radiotherapy}\">放射治療</span></p>
        <p><b>value</b>：<a href=\"Procedure-pro-min.html\">Procedure/pro-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：13</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type carePlanDocument}\">治療計畫文件</span></p>
        <p><b>value</b>：<a href=\"DocumentReference-doc-careplan-min.html\">DocumentReference/doc-careplan-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：14</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type medicalRecord}\">病歷資料</span></p>
        <p><b>value</b>：<a href=\"DocumentReference-doc-medicalRecord-min.html\">DocumentReference/doc-medicalRecord-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：15</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type treatmentAssessment}\">結果資訊</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-tx-min.html\">Observation/obs-tx-min</a></p>
    </blockquote>
    <h3>Diagnoses</h3>
    <p><b>診斷日期</b>：2024-01-01</p>
    <p><b>國際疾病分類代碼</b>：慢性右心臟衰竭<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">臺灣健保署2023年中文版ICD-10-CM值集</a>#I50.812)</span></p>
    <p><b>簡要病摘</b>：Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI</p>
    <h3>Procedures</h3>
    <p><b>手術(或其他處置)日期</b>：2024-01-01</p>
    <p><b>手術(或其他處置)項目</b>：經由自體開口或人工造口心包腔近接放射性同位素抗腫瘤液態藥劑輸入<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#3E0Y704)</span></p>
    <h3>Insurances</h3>
    <p><b>sequence</b>：1</p>
    <p><b>coverage</b>：<a href=\"Coverage-cov-min.html\">Coverage/cov-min</a></p>
    <h3>申請項目</h3>
    <blockquote>
        <p><b>事前審查品項</b>：<a href=\"MedicationRequest-medReq-apply.html\">MedicationRequest/medReq-apply</a></p>
        <p><b>事前審查申請數量(單位)</b>：52 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
        <p><b>醫令類別</b>：藥品<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-order-type.html\">NHI-健保事前審查-醫令類別值集</a>#1)</span></p>
        <p><b>續用註記</b>：初次使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-continuation-status.html\">NHI-續用註記值集</a>#1)</span></p>
        <p><b>用藥線別</b>：第一線治療<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-line-of-therapy.html\">NHI-用藥線別值集</a>#1)</span></p>
        <p><b>給付適應症</b>：ALK陽性的晚期非小細胞肺癌第一線治療</p>
    </blockquote>
    <blockquote>
        <p><b>事前審查品項</b>：<a href=\"MedicationRequest-medReq-apply-2.html\">MedicationRequest/medReq-apply-2</a></p>
        <p><b>事前審查申請數量(單位)</b>：70 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
        <p><b>醫令類別</b>：藥品<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-order-type.html\">NHI-健保事前審查-醫令類別值集</a>#1)</span></p>
        <p><b>續用註記</b>：初次使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-continuation-status.html\">NHI-續用註記值集</a>#1)</span></p>
        <p><b>用藥線別</b>：第一線治療<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-line-of-therapy.html\">NHI-用藥線別值集</a>#1)</span></p>
        <p><b>給付適應症</b>：C50P1<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-reason.html\">NHI-給付適應症值集</a>#C50P1)</span></p>
    </blockquote>    
</div>"

Instance: cla-3
InstanceOf: ClaimTWPAS
Title: "事前審查-申復、有共病"
Description: "依據癌藥事前審查-Claim TWPAS Profile呈現事前審查之範例"
Usage: #example
* extension[encounter].valueReference.reference = "Encounter/enc-min"
* identifier.value = "202405301000002"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-apply-type#3 "申復"
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
* supportingInfo[pregnancy].sequence = 3
* supportingInfo[pregnancy].valueBoolean = false

* supportingInfo[imagingReport].sequence = 4
* supportingInfo[imagingReport].valueReference.reference = "DiagnosticReport/diaRep-ima-min" 
* supportingInfo[cancerStage].sequence = 5
* supportingInfo[cancerStage].valueReference.reference = "Observation/obs-cancer-figo" 
* supportingInfo[examinationReport].sequence = 6
* supportingInfo[examinationReport].valueReference.reference = "DiagnosticReport/diaRep-min" 
* supportingInfo[geneInfo].sequence = 7
* supportingInfo[geneInfo].valueReference.reference = "Observation/obs-diagnostic-min" 
* supportingInfo[tests].sequence = 8
* supportingInfo[tests].valueReference.reference = "Observation/obs-lab-min" 
* supportingInfo[patientAssessment].sequence = 9
* supportingInfo[patientAssessment].valueReference.reference = "Observation/obs-pat-nyha" 
* supportingInfo[medicationRequest].sequence = 10
* supportingInfo[medicationRequest].valueReference.reference = "MedicationRequest/medReq-treat" 
//* supportingInfo[medicationRequest].code = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* supportingInfo[radiotherapy].sequence = 11
* supportingInfo[radiotherapy].valueReference.reference = "Procedure/pro-min" 
* supportingInfo[carePlanDocument].sequence = 12
* supportingInfo[carePlanDocument].valueReference.reference = "DocumentReference/doc-careplan-min" 
* supportingInfo[medicalRecord].sequence = 13
* supportingInfo[medicalRecord].valueReference.reference = "DocumentReference/doc-medicalRecord-min"
* supportingInfo[treatmentAssessment].sequence = 14
* supportingInfo[treatmentAssessment].valueReference.reference = "Observation/obs-tx-min"
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept  = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#I50.812
* diagnosis[=].extension[recordedDate].valueDate = "2024-01-01"
* diagnosis[=].type.text = "Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI"
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept  = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#E10.40
* procedure.sequence = 1
* procedure.procedureCodeableConcept = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#3E0Y704
* procedure.date = "2024-01-01"
* item.sequence = 1
* item.productOrService = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-order-type#1 "藥品"
* item.extension[requestedService].valueReference.reference = "MedicationRequest/medReq-apply-2" 
* item.programCode.coding = NHIApplyReason#C50P1
* item.modifier[continuation] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-continuation-status#1 "初次使用"
* item.modifier[lot] = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* item.quantity.value = 70
* item.quantity.code = #{tbl}
* item.quantity.system = "http://unitsofmeasure.org"
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.reference = "Coverage/cov-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Claim-twpas.html\">癌藥事前審查-Claim TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：Institutional<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/claim-type\">ClaimTypeCodes</a>#institutional)</span></p>
    <p><b>就醫科別</b>：<a href=\"Encounter-enc-min.html\">Encounter/enc-min</a> &quot;胸腔暨重症加護&quot;</p>
    <p><b>原受理編號</b>：202405301000002</p>
    <p><b>申報類別</b>：申復<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-type.html\">NHI-申報類別值集</a>#3)</span></p>
    <p><b>目的</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>申請日期</b>：2024-05-30</p>
    <p><b>申請醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>醫事機構代碼</b>：<a href=\"Organization-org-hosp-example.html\">Organization/org-hosp-example</a></p>
    <p><b>申請案件類別</b>：一般事前審查申請<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tmhb-type.html\">NHI-申請案件類別值集</a>#1)</span></p>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：1</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type weight}\">病人體重</span></p>
        <p><b>value</b>：59.65 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codekg = 'kg')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：2</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type height}\">病人身高</span></p>
        <p><b>value</b>：170 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codecm = 'cm')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：3</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type pregnancyBreastfeedingStatus}\">是否懷孕或哺乳</span></p>
        <p><b>value</b>：false</p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：4</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type imagingReport}\">影像報告</span></p>
        <p><b>value</b>：<a href=\"DiagnosticReport-diaRep-ima-min.html\">DiagnosticReport/diaRep-ima-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：5</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type cancerStage}\">癌症分期量表</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-cancer-figo.html\">Observation/obs-cancer-figo</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：6</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type examinationReport}\">檢查報告</span></p>
        <p><b>value</b>：<a href=\"DiagnosticReport-diaRep-min.html\">DiagnosticReport/diaRep-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：7</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type geneInfo}\">基因資訊</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-diagnostic-min.html\">Observation/obs-diagnostic-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：8</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type tests}\">檢驗(查)</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-lab-min.html\">Observation/obs-lab-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：9</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type patientAssessment}\">病人狀態評估</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-pat-nyha.html\">Observation/obs-pat-nyha</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：10</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type medicationRequest}\">用藥品項</span></p>
        <p><b>value</b>：<a href=\"MedicationRequest-medReq-treat.html\">MedicationRequest/medReq-treat</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：11</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type radiotherapy}\">放射治療</span></p>
        <p><b>value</b>：<a href=\"Procedure-pro-min.html\">Procedure/pro-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：12</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type carePlanDocument}\">治療計畫文件</span></p>
        <p><b>value</b>：<a href=\"DocumentReference-doc-careplan-min.html\">DocumentReference/doc-careplan-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：13</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type medicalRecord}\">病歷資料</span></p>
        <p><b>value</b>：<a href=\"DocumentReference-doc-medicalRecord-min.html\">DocumentReference/doc-medicalRecord-min</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：14</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type treatmentAssessment}\">結果資訊</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-tx-min.html\">Observation/obs-tx-min</a></p>
    </blockquote>
    <h3>Diagnoses</h3>
    <p><b>診斷日期</b>：2024-01-01</p>
    <p><b>國際疾病分類代碼</b>：慢性右心臟衰竭<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">臺灣健保署2023年中文版ICD-10-CM值集</a>#I50.812)</span></p>
    <p><b>共病</b>：第一型糖尿病，伴有糖尿病的神經病變<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">臺灣健保署2023年中文版ICD-10-CM值集</a>#E10.40)</span></p>
    <p><b>簡要病摘</b>：Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI</p>
    <h3>Procedures</h3>
    <p><b>手術(或其他處置)日期</b>：2024-01-01</p>
    <p><b>手術(或其他處置)項目</b>：經由自體開口或人工造口心包腔近接放射性同位素抗腫瘤液態藥劑輸入<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#3E0Y704)</span></p>
    <h3>Insurances</h3>
    <p><b>sequence</b>：1</p>
    <p><b>coverage</b>：<a href=\"Coverage-cov-min.html\">Coverage/cov-min</a></p>
    <h3>Items</h3>
    <p><b>事前審查品項</b>：<a href=\"MedicationRequest-medReq-apply-2.html\">MedicationRequest/medReq-apply-2</a></p>
    <p><b>事前審查申請數量(單位)</b>：70 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
    <p><b>醫令類別</b>：藥品<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-order-type.html\">NHI-健保事前審查-醫令類別值集</a>#1)</span></p>
    <p><b>續用註記</b>：初次使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-continuation-status.html\">NHI-續用註記值集</a>#1)</span></p>
    <p><b>用藥線別</b>：第一線治療<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-line-of-therapy.html\">NHI-用藥線別值集</a>#1)</span></p>
    <p><b>給付適應症</b>：C50P1<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-reason.html\">NHI-給付適應症值集</a>#C50P1)</span></p>
</div>"