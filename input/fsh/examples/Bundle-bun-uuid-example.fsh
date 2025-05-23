Instance: bun-uuid-example
InstanceOf: BundleTWPAS
Title: "事前審查-自主審查報備、多份影像報告（UUID）"
Description: "依據事前審查-Bundle TWPAS Profile呈現癌藥事前審查之自主審查報備範例"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#collection
//* timestamp = "2024-05-30T13:50:58.000+08:00"

* entry[0].fullUrl = "urn:uuid:ee37d6e5-26c4-43b3-a036-6675c739a340"
* entry[=].resource = inline-claim

* entry[+].fullUrl = "urn:uuid:9726648a-dd47-431b-a677-3d5e9250d84c"
* entry[=].resource = inline-encounter

* entry[+].fullUrl = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* entry[=].resource = inline-patient

* entry[+].fullUrl = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* entry[3].resource = inline-practitioner

* entry[+].fullUrl = "urn:uuid:fd1af332-b353-46e6-9a5f-3eec6ac9d9ff"
* entry[=].resource = inline-org-hosp

* entry[+].fullUrl = "urn:uuid:75f8540e-ace9-47d4-afd8-0a3ec81ad656"
* entry[=].resource = inline-diaRep-ima

* entry[+].fullUrl = "urn:uuid:e13ae26f-836f-402b-a40f-b2c19dd1dc06"
* entry[=].resource = inline-diaRep-ima-2

* entry[+].fullUrl = "urn:uuid:4213460c-db7c-4a32-8129-157c9f3a4cc3"
* entry[=].resource = inline-imaStu

* entry[+].fullUrl = "urn:uuid:2b42533e-3004-4f1d-abd1-c3e55fa9981f"
* entry[=].resource = inline-obs-cancer-figo

* entry[+].fullUrl = "urn:uuid:96dd114f-c596-4dab-9483-a94300e37e20"
* entry[=].resource = inline-diaRep

* entry[+].fullUrl = "urn:uuid:a7f410d8-a646-4ec5-b32a-e4c50dd9db4c"
* entry[=].resource = inline-obs-diagnostic

* entry[+].fullUrl = "urn:uuid:60d143e9-1637-4668-abdb-34fbdfee5d00"
* entry[=].resource = inline-specimen

* entry[+].fullUrl = "urn:uuid:408f3e21-47c9-4f1f-9eea-1cd2a7841c97"
* entry[=].resource = inline-doc-gene

* entry[+].fullUrl = "urn:uuid:e731f6b1-aac7-4b3f-9a72-1d71f25e664c"
* entry[=].resource = inline-obs-lab

* entry[+].fullUrl = "urn:uuid:e9dfe919-52dd-4691-96bf-1a3d244a30a3"
* entry[=].resource = inline-obs-lab-cbc

* entry[+].fullUrl = "urn:uuid:a1aa65c7-c464-41a5-aa1a-fe5cddf487cf"
* entry[=].resource = inline-doc-test

* entry[+].fullUrl = "urn:uuid:f08b0bfb-d26b-4118-aa30-5abbd391f762"
* entry[=].resource = inline-obs-pat

* entry[+].fullUrl = "urn:uuid:da01d9f1-5945-46d8-b493-18a72a7976a0"
* entry[=].resource = inline-medReq-treat

* entry[+].fullUrl = "urn:uuid:0a37e990-e3ad-4b35-88c7-13b4283bdf10"
* entry[=].resource = inline-procedure

* entry[+].fullUrl = "urn:uuid:b3c91f1b-14e3-4f44-8fa2-72f27b1d28c8"
* entry[=].resource = inline-substance

* entry[+].fullUrl = "urn:uuid:3a625041-5d1f-4e98-81c1-dff54adcc110"
* entry[=].resource = inline-doc-careplan

* entry[+].fullUrl = "urn:uuid:63cabc24-a403-4522-9226-1c96968590bd"
* entry[=].resource = inline-obs-tx

* entry[+].fullUrl = "urn:uuid:46b3230a-d641-4e45-be42-2c84a5c04d67"
* entry[=].resource = inline-medReq-apply

* entry[+].fullUrl = "urn:uuid:de63572a-412b-4004-8fd6-93612a22e673"
* entry[=].resource = inline-medReq-apply-2

* entry[+].fullUrl = "urn:uuid:79ee2767-54d9-4682-bbd4-d0add0576388"
* entry[=].resource = inline-coverage

* entry[+].fullUrl = "urn:uuid:70e7e8b6-4605-487e-9626-be645114140f"
* entry[=].resource = inline-org-nhi

* entry[+].fullUrl = "urn:uuid:41d0fbf1-850a-4c96-be9e-54ca2053c6b8"
* entry[=].resource = inline-org-gene

* entry[+].fullUrl = "urn:uuid:aba0bd9e-3004-4c30-a839-5f7dd94e1a56"
* entry[=].resource = inline-claRes-self-assessment

* entry[+].fullUrl = "urn:uuid:931cd8ec-705b-4ac7-ad72-43728045f278"
* entry[=].resource = inline-doc-medicalRecord

Instance: inline-claim
InstanceOf: ClaimTWPAS
Usage: #inline
* identifier.value = "20240831010109051701"
* extension[encounter].valueReference.reference = "urn:uuid:9726648a-dd47-431b-a677-3d5e9250d84c"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-apply-type#1 "送核"
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* created = "2024-05-30"
* enterer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* provider.reference = "urn:uuid:fd1af332-b353-46e6-9a5f-3eec6ac9d9ff"
* priority = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tmhb-type#3 "自主審查報備"
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

* supportingInfo[imagingReport][0].sequence = 4
* supportingInfo[imagingReport][=].valueReference.reference = "urn:uuid:75f8540e-ace9-47d4-afd8-0a3ec81ad656" 
* supportingInfo[imagingReport][+].sequence = 5
* supportingInfo[imagingReport][=].valueReference.reference = "urn:uuid:e13ae26f-836f-402b-a40f-b2c19dd1dc06" 
* supportingInfo[cancerStage].sequence = 6
* supportingInfo[cancerStage].valueReference.reference = "urn:uuid:2b42533e-3004-4f1d-abd1-c3e55fa9981f" 
* supportingInfo[examinationReport].sequence = 7
* supportingInfo[examinationReport].valueReference.reference = "urn:uuid:96dd114f-c596-4dab-9483-a94300e37e20" 
* supportingInfo[geneInfo].sequence = 8
* supportingInfo[geneInfo].valueReference.reference = "urn:uuid:a7f410d8-a646-4ec5-b32a-e4c50dd9db4c" 
* supportingInfo[tests][0].sequence = 9
* supportingInfo[tests][=].valueReference.reference = "urn:uuid:e731f6b1-aac7-4b3f-9a72-1d71f25e664c" 
* supportingInfo[tests][+].sequence = 10
* supportingInfo[tests][=].valueReference.reference = "urn:uuid:e9dfe919-52dd-4691-96bf-1a3d244a30a3" 
* supportingInfo[patientAssessment].sequence = 11
* supportingInfo[patientAssessment].valueReference.reference = "urn:uuid:f08b0bfb-d26b-4118-aa30-5abbd391f762" 
* supportingInfo[medicationRequest].sequence = 12
* supportingInfo[medicationRequest].valueReference.reference = "urn:uuid:da01d9f1-5945-46d8-b493-18a72a7976a0" 
//* supportingInfo[medicationRequest].code = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* supportingInfo[radiotherapy].sequence = 13
* supportingInfo[radiotherapy].valueReference.reference = "urn:uuid:0a37e990-e3ad-4b35-88c7-13b4283bdf10" 
* supportingInfo[carePlanDocument].sequence = 14
* supportingInfo[carePlanDocument].valueReference.reference = "urn:uuid:3a625041-5d1f-4e98-81c1-dff54adcc110" 
* supportingInfo[medicalRecord].sequence = 15
* supportingInfo[medicalRecord].valueReference.reference = "urn:uuid:931cd8ec-705b-4ac7-ad72-43728045f278"
* supportingInfo[treatmentAssessment].sequence = 16
* supportingInfo[treatmentAssessment].valueReference.reference = "urn:uuid:63cabc24-a403-4522-9226-1c96968590bd"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept  = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-cm-2023-tw#I50.812
* diagnosis.extension[recordedDate].valueDate = "2024-01-01"
* diagnosis.type.text = "Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI"
* procedure.sequence = 1
* procedure.procedureCodeableConcept = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#3E0Y704
* procedure.date = "2024-01-01"
* item[0].sequence = 1
* item[=].productOrService = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-order-type#1 "藥品"
* item[=].extension[requestedService].valueReference.reference = "urn:uuid:46b3230a-d641-4e45-be42-2c84a5c04d67" 
* item[=].modifier[continuation] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-continuation-status#1 "初次使用"
* item[=].modifier[lot] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* item[=].programCode.text = "ALK陽性的晚期非小細胞肺癌第一線治療"
* item[=].quantity.value = 52
* item[=].quantity.code = #{tbl}
* item[=].quantity.system = "http://unitsofmeasure.org"
* item[1].sequence = 2
* item[=].productOrService = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-order-type#1 "藥品"
* item[=].extension[requestedService].valueReference.reference = "urn:uuid:de63572a-412b-4004-8fd6-93612a22e673" 
* item[=].modifier[continuation] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-continuation-status#1 "初次使用"
* item[=].modifier[lot] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-line-of-therapy#1 "第一線治療"
* item[=].programCode.coding = NHIApplyReason#C50P2
* item[=].quantity.value = 70
* item[=].quantity.code = #{tbl}
* item[=].quantity.system = "http://unitsofmeasure.org"
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.reference = "urn:uuid:79ee2767-54d9-4682-bbd4-d0add0576388"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Claim-twpas.html\">事前審查-Claim TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：Institutional<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/claim-type\">ClaimTypeCodes</a>#institutional)</span></p>
    <p><b>就醫科別</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-9726648a-dd47-431b-a677-3d5e9250d84c\">urn:uuid:9726648a-dd47-431b-a677-3d5e9250d84c</a> &quot;胸腔暨重症加護&quot;</p>
    <p><b>原受理編號</b>：20240831010109051701</p>
    <p><b>申報類別</b>：送核<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-type.html\">NHI-申報類別值集</a>#1)</span></p>
    <p><b>目的</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>申請日期</b>：2024-05-30</p>
    <p><b>申請醫師</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>醫事機構代碼</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-fd1af332-b353-46e6-9a5f-3eec6ac9d9ff\">urn:uuid:fd1af332-b353-46e6-9a5f-3eec6ac9d9ff</a></p>
    <p><b>申請案件類別</b>：自主審查報備<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tmhb-type.html\">NHI-申請案件類別值集</a>#3)</span></p>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：1</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type weight}\">病人體重</span></p>
        <p><b>value</b>：59.65 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codekg = 'kg')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：2</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type height}\">病人身高</span></p>
        <p><b>value</b>：170 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM codecm = 'cm')</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：3</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type pregnancyBreastfeedingStatus}\">是否懷孕或哺乳</span></p>
        <p><b>value</b>：false</p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：4</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type imagingReport}\">影像報告</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-75f8540e-ace9-47d4-afd8-0a3ec81ad656\">urn:uuid:75f8540e-ace9-47d4-afd8-0a3ec81ad656</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：5</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type imagingReport}\">影像報告</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-e13ae26f-836f-402b-a40f-b2c19dd1dc06\">urn:uuid:e13ae26f-836f-402b-a40f-b2c19dd1dc06</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：6</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type cancerStage}\">癌症分期量表</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-2b42533e-3004-4f1d-abd1-c3e55fa9981f\">urn:uuid:2b42533e-3004-4f1d-abd1-c3e55fa9981f</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：7</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type examinationReport}\">檢查報告</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-96dd114f-c596-4dab-9483-a94300e37e20\">urn:uuid:96dd114f-c596-4dab-9483-a94300e37e20</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：8</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type geneInfo}\">基因資訊</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-a7f410d8-a646-4ec5-b32a-e4c50dd9db4c\">urn:uuid:a7f410d8-a646-4ec5-b32a-e4c50dd9db4c</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：9</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type tests}\">檢驗(查)</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-e731f6b1-aac7-4b3f-9a72-1d71f25e664c\">urn:uuid:e731f6b1-aac7-4b3f-9a72-1d71f25e664c</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：10</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type tests}\">檢驗(查)</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-e9dfe919-52dd-4691-96bf-1a3d244a30a3\">urn:uuid:e9dfe919-52dd-4691-96bf-1a3d244a30a3</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：11</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type patientAssessment}\">病人狀態評估</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-f08b0bfb-d26b-4118-aa30-5abbd391f762\">urn:uuid:f08b0bfb-d26b-4118-aa30-5abbd391f762</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：12</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type medicationRequest}\">用藥品項</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-da01d9f1-5945-46d8-b493-18a72a7976a0\">urn:uuid:da01d9f1-5945-46d8-b493-18a72a7976a0</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：13</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type radiotherapy}\">放射治療</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-0a37e990-e3ad-4b35-88c7-13b4283bdf10\">urn:uuid:0a37e990-e3ad-4b35-88c7-13b4283bdf10</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：14</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type carePlanDocument}\">治療計畫文件</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-3a625041-5d1f-4e98-81c1-dff54adcc110\">urn:uuid:3a625041-5d1f-4e98-81c1-dff54adcc110</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：15</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type medicalRecord}\">病歷資料</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-931cd8ec-705b-4ac7-ad72-43728045f278\">urn:uuid:931cd8ec-705b-4ac7-ad72-43728045f278</a></p>
    </blockquote>
    <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：16</p>
        <p><b>category</b>：<span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type treatmentAssessment}\">結果資訊</span></p>
        <p><b>value</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-63cabc24-a403-4522-9226-1c96968590bd\">urn:uuid:63cabc24-a403-4522-9226-1c96968590bd</a></p>
    </blockquote>
    <h3>Diagnoses</h3>
    <p><b>診斷日期</b>：2024-01-01</p>
    <p><b>國際疾病分類代碼</b>：慢性右心臟衰竭<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-cm-2023-tw\">臺灣健保署2023年中文版ICD-10-CM值集</a>#I50.812)</span></p>
    <p><b>簡要病摘</b>：Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI</p>
    <h3>Procedures</h3>
    <p><b>手術(或其他處置)日期</b>：2024-01-01</p>
    <p><b>手術(或其他處置)項目</b>：2024-01-01<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#3E0Y704)</span></p>
    <h3>Insurances</h3>
    <p><b>sequence</b>：1</p>
    <p><b>coverage</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-79ee2767-54d9-4682-bbd4-d0add0576388\">urn:uuid:79ee2767-54d9-4682-bbd4-d0add0576388</a></p>
    <h3>申請項目</h3>
    <blockquote>
        <p><b>事前審查品項</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-46b3230a-d641-4e45-be42-2c84a5c04d67\">urn:uuid:46b3230a-d641-4e45-be42-2c84a5c04d67</a></p>
        <p><b>事前審查申請數量(單位)</b>：52 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
        <p><b>醫令類別</b>：藥品<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-order-type.html\">NHI-健保事前審查-醫令類別值集</a>#1)</span></p>
        <p><b>續用註記</b>：初次使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-continuation-status.html\">NHI-續用註記值集</a>#1)</span></p>
        <p><b>用藥線別</b>：第一線治療<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-line-of-therapy.html\">NHI-用藥線別值集</a>#1)</span></p>
        <p><b>給付適應症</b>：ALK陽性的晚期非小細胞肺癌第一線治療</p>
    </blockquote>
    <blockquote>
        <p><b>事前審查品項</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-de63572a-412b-4004-8fd6-93612a22e673\">urn:uuid:de63572a-412b-4004-8fd6-93612a22e673</a></p>
        <p><b>事前審查申請數量(單位)</b>：70 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
        <p><b>醫令類別</b>：藥品<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-order-type.html\">NHI-健保事前審查-醫令類別值集</a>#1)</span></p>
        <p><b>續用註記</b>：初次使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-continuation-status.html\">NHI-續用註記值集</a>#1)</span></p>
        <p><b>用藥線別</b>：第一線治療<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-line-of-therapy.html\">NHI-用藥線別值集</a>#1)</span></p>
        <p><b>給付適應症</b>：C50P2<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-reason.html\">NHI-給付適應症值集</a>#C50P2)</span></p>
    </blockquote>    
</div>"

Instance: inline-claRes-self-assessment
InstanceOf: ClaimResponseSelfAssessmentTWPAS
Usage: #inline
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* created = "2024-07-30"
* insurer.reference = "urn:uuid:70e7e8b6-4605-487e-9626-be645114140f"
* outcome = http://hl7.org/fhir/remittance-outcome#complete
* item.itemSequence = 1
* item.adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.adjudication.reason = NHIApproveComment#1
* item.adjudication.value = 5
/** text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ClaimResponse-twpas.html\">事前審查結果-ClaimResponse TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type institutional}\">Institutional</span></p>
    <p><b>用途</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>核定日期</b>：2024-07-30</p>
    <p><b>保險商</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-70e7e8b6-4605-487e-9626-be645114140f\">Organization 衛生福利部中央健康保險署</a></p>
    <p><b>處置狀態</b>：Processing Complete</p>
    <blockquote>
        <p><b>item</b></p>
        <p><b>itemSequence</b>：1</p>
        <h3>Adjudications</h3>
        <table class=\"grid\">
            <tr>
                <td style=\"display: none\">-</td>
                <td><b>類型</b></td>
                <td><b>核定註記</b></td>
                <td><b>核定數量</b></td>
            </tr>
            <tr>
                <td style=\"display: none\">*</td>
                <td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/adjudication submitted}\">Submitted Amount</span></td>
                <td><span title=\"Codes:{https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-approve-comment 1}\">同意備查</span></td>
                <td>5</td>
            </tr>
        </table>
    </blockquote>
</div>"
*/
Instance: inline-encounter
InstanceOf: EncounterTWPAS
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* serviceType = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/medical-consultation-department-nhi-tw#AJ
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Encounter-twpas.html\">就醫科別-Encounter
                TWPAS</a></p>
    </div>
    <p><b>就醫現況</b>：Planned <span style=\"background: LightGoldenRodYellow; margin:
            4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/codesystem-encounter-status.html\">EncounterStatus</a>#planned)</span></p>
    <p><b>就醫分類</b>：ambulatory  <span style=\"background: LightGoldenRodYellow; margin:
            4px; border: 1px solid khaki\"> (<a href=\"https://terminology.hl7.org/5.5.0/CodeSystem-v3-ActCode.html\">ActEncounterCode
                CT</a>#AMB)</span></p>
    <p><b>就醫科別</b>：胸腔暨重症加護 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/medical-consultation-department-nhi-tw/\">臺灣健保署就醫科別</a>#AJ)</span></p>
</div>"

Instance: inline-patient
InstanceOf: PatientTWPAS
Usage: #inline
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].type.coding.code = #MR
* identifier[medicalRecord].system = "https://tpech.gov.taipei"
* identifier[medicalRecord].value = "123456"
* name[usual].use = #usual
* name[usual].text = "王大明"
* gender = #male
* birthDate = "2001-01-01"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Patient-twpas.html\">病人資訊-Patient TWPAS</a></p>
    </div>
	<blockquote>
		<p>
			<b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#NNxxx） </span>
			<br />
			<b>身分證字號（official）</b>：A123456789 （http://www.moi.gov.tw）
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>識別碼型別</b>：Medical record number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#MR） </span>
			<br />
			<b>病歷號（official）</b>：123456 （https://tpech.gov.taipei）
		</p>
	</blockquote>
	<p>
		<b>姓名（usual）</b>：王大明
	</p>
	<p>
		<b>性別</b>：男
	</p>
	<p>
		<b>出生日期</b>：2001-01-01
	</p>
</div>"

Instance: inline-practitioner
InstanceOf: PractitionerTWPAS
Usage: #inline
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "F123456789"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Practitioner-twpas.html\">醫事人員-Practitioner TWPAS</a></p>
    </div>
	<p><b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#NNxxx） </span></p>
	<p><b>身分證字號（official）</b>：F123456789 （http://www.moi.gov.tw）</p>
</div>"

Instance: inline-org-hosp
InstanceOf: OrganizationTWPAS
Usage: #inline
* identifier.use = #official
* identifier.system = "https://fhir-ig.nhi.org.tw/pas/CodeSystem/organization-identifier-tw"
* identifier.value = "0101090517"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "臺北市立聯合醫院"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <h3>
    <b>醫事機構</b>
  </h3>
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-twpas.html\">機構-Organization TWPAS</a></p>
  </div>
  <p>
    <b>機構名稱</b>：臺北市立聯合醫院
  </p>
  <p>
    <b>識別碼型別</b>：Provider number<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN） </span>   <br/>
    <b>機構代碼（official）</b>：0101090517 (https://fhir-ig.nhi.org.tw/pas/CodeSystem/organization-identifier-tw)
  </p>
  <p>
    <b>機構種類</b>：Healthcare Provider <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/R4/codesystem-organization-type.html\">OrganizationType</a>#prov) </span>
  </p>
</div>"

Instance: inline-org-gene
InstanceOf: OrganizationGeneticTestingTWPAS
Usage: #inline
* identifier.system = "https://dep.mohw.gov.tw"
* identifier.value = "2023LDTB0002"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <h3>
    <b>基因檢測機構</b>
  </h3>
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-genetic-testing-twpas.html\">基因檢測機構-Organization Genetic Testing TWPAS</a></p>
  </div>
  <p>
    <b>機構代碼</b>：2023LDTB0002 (https://dep.mohw.gov.tw)
  </p>
</div>"

Instance: inline-diaRep-ima
InstanceOf: DiagnosticReportImageTWPAS
Usage: #inline
* status = http://hl7.org/fhir/diagnostic-report-status#final
* code.coding[TW2023ICD10PCS] = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#B34JZZ3
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* imagingStudy.reference = "urn:uuid:4213460c-db7c-4a32-8129-157c9f3a4cc3"
* conclusion = "影像報告結果"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DiagnosticReport-image-twpas.html\">影像報告-DiagnosticReport Image TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>影像報告</b>：左上肢動脈血管內超音波 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#B34JZZ3)</span></p>
    <p><b>影像報告日期</b>：2024-05-07</p>
    <p><b>簽發影像報告醫師</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>影像檢查的身體部位／DICOM影像</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-4213460c-db7c-4a32-8129-157c9f3a4cc3\">urn:uuid:4213460c-db7c-4a32-8129-157c9f3a4cc3</a></p>
    <p><b>影像報告結果</b>：影像報告結果</p>
</div>"

Instance: inline-diaRep-ima-2
InstanceOf: DiagnosticReportImageTWPAS
Usage: #inline
* status = http://hl7.org/fhir/diagnostic-report-status#final
* code.coding[TW2023ICD10PCS] = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#B34JZZZ
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* imagingStudy.reference = "urn:uuid:4213460c-db7c-4a32-8129-157c9f3a4cc3"
* conclusion = "影像報告結果"
* presentedForm[0].contentType = #application/pdf
* presentedForm[=].title = "影像報告"
* presentedForm[=].url =  "file://ImagingDiagnosticReport01.pdf"
* presentedForm[+].contentType = #application/pdf
* presentedForm[=].title = "影像報告"
* presentedForm[=].url =  "file://ImagingDiagnosticReport02.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DiagnosticReport-image-twpas.html\">影像報告-DiagnosticReport Image TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>影像報告</b>：左上肢動脈超音波 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#B34JZZZ)</span></p>
    <p><b>影像報告日期</b>：2024-05-07</p>
    <p><b>簽發影像報告醫師</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>影像檢查的身體部位／DICOM影像</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-4213460c-db7c-4a32-8129-157c9f3a4cc3\">urn:uuid:4213460c-db7c-4a32-8129-157c9f3a4cc3</a></p>
    <p><b>影像報告結果</b>：影像報告結果</p>
    <blockquote>
        <p><b>影像報告名稱</b>：影像報告03</p>
        <p><b>影像報告</b>：file://ImagingDiagnosticReport01.pdf</p>
    </blockquote>
    <blockquote>
        <p><b>影像報告名稱</b>：影像報告04</p>
        <p><b>影像報告</b>：file://ImagingDiagnosticReport02.pdf</p>
    </blockquote>
</div>"

Instance: inline-diaRep
InstanceOf: DiagnosticReportTWPAS
Usage: #inline
* status = http://hl7.org/fhir/diagnostic-report-status#final
* code.coding = http://loinc.org#66117-3
* code.text = "Prostate"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* conclusion = "細胞檢查報告結果"
* presentedForm[0].contentType = #application/pdf
* presentedForm[=].title = "病理報告"
* presentedForm[=].url =  "file://PathologyReport01.pdf"
* presentedForm[+].contentType = #application/pdf
* presentedForm[=].title = "病理報告"
* presentedForm[=].url =  "file://PathologyReport02.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DiagnosticReport-twpas.html\">檢查報告-DiagnosticReport TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>報告類型</b>：Prostate Pathology biopsy report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org\">EncounterStatus</a>#66117-3)</span></p>
    <p><b>檢體種類</b>：Prostate</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>報告日期</b>：2024-05-07</p>
    <p><b>檢查報告醫師</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>報告結果-文數字</b>：細胞檢查報告結果</p>
    <blockquote>
        <p><b>檢查報告名稱</b>：病理報告</p>
        <p><b>檢查報告</b>：file://PathologyReport01.pdf</p>
    </blockquote>
    <blockquote>
        <p><b>檢查報告名稱</b>：病理報告</p>
        <p><b>檢查報告</b>：file://PathologyReport02.pdf</p>
    </blockquote>
    <p><b>非DICOM影像</b>：<a href=\"http://example.nondicom.url\">http://example.nondicom.url</a></p>
</div>"

Instance: inline-imaStu
InstanceOf: ImagingStudyTWPAS
Usage: #inline
* identifier[study-uid].value = "urn:oid:2.16.886.2102.54.4546465747.465465465"
* identifier[study-uid].system = "urn:dicom:uid"
* status = http://hl7.org/fhir/imagingstudy-status#registered
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* series.uid = "2.16.886.2102.54.4546465747.465465466"
* series.modality = http://dicom.nema.org/resources/ontology/DCM#CT
* series.bodySite = http://snomed.info/sct#774007 "Head and neck structure"
* series.instance[0].uid = "2.25.88017001449189502323411118737039844241"
* series.instance[=].sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance[+].uid = "2.25.88017001449189502323411118737039844242"
* series.instance[=].sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-ImagingStudy-twpas.html\">DICOM影像-ImagingStudy TWPAS</a></p>
    </div>
    <p><b>狀態</b>：registered</p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>Study UID</b>：urn:oid:2.16.886.2102.54.4546465747.465465465</p>
    <p><b>Series Instance UID</b>：2.16.886.2102.54.4546465747.465465466</p>
    <p><b>SOP Instance UIDs</b>：2.25.88017001449189502323411118737039844241, 2.25.88017001449189502323411118737039844242</p>
    <p><b>影像檢查的身體部位</b>：Head and neck structure<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct\">SNOMED CT</a>#774007)</span></p>
    <p><b>儀器</b>：CT Image Storage<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_D.html\">DICOM</a>#CT)</span></p>
</div>"

Instance: inline-coverage
InstanceOf: CoverageTWPAS
Usage: #inline
* status = http://hl7.org/fhir/fm-status#active
* beneficiary.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* payor.reference = "urn:uuid:70e7e8b6-4605-487e-9626-be645114140f"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Coverage-twpas.html\">健保事前審查計畫-Coverage
                TWPAS</a></p>
    </div>
    <p><b>狀態</b>：active</p>
    <p><b>受益人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>保險人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-70e7e8b6-4605-487e-9626-be645114140f\">urn:uuid:70e7e8b6-4605-487e-9626-be645114140f</a> &quot;衛生福利部中央健康保險署&quot;</p>
</div>"

Instance: inline-org-nhi
InstanceOf: TWCoreOrganizationGovt
Usage: #inline
* identifier.use = #official
* identifier.system = "https://oid.nat.gov.tw/"
* identifier.value = "A21030000I"
* identifier.type = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/v2-0203#GOI
* type =  http://terminology.hl7.org/CodeSystem/organization-type#govt
* name = "衛生福利部中央健康保險署"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"https://fhir-ig.nhi.org.tw/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">臺灣核心-政府機構（TW Core Organization Government）</a></p>
  </div>
  <p>
    <b>機構名稱</b>：衛生福利部中央健康保險署
  </p>
  <p>
    <b>識別碼型別</b>：Government Organization Identifier<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"https://fhir-ig.nhi.org.tw/twcore/CodeSystem/v2-0203\">臺灣識別碼類型值集</a>#GOI） </span>  <br/>
    <b>機關代號（official）</b>：A21030000I (https://oid.nat.gov.tw/)
  </p>
  <p>
    <b>機構種類</b>：Government <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/R4/codesystem-organization-type.html\">OrganizationType</a>#govt) </span>
  </p>
</div>"

Instance: inline-doc-gene
InstanceOf: DocumentReferenceTWPAS
Usage: #inline
* category = NHIPDFType#gene
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* content.attachment.contentType = #application/pdf
* content.attachment.url =  "file://GenReport01.pdf"
* content.attachment.title = "GenReport01"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：基因報告 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#gene)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>基因報告(application/pdf)</b>：file://GenReport01.pdf</p>
    <p><b>基因報告名稱</b>：GenReport01</p>
</div>"

Instance: inline-doc-careplan
InstanceOf: DocumentReferenceTWPAS
Usage: #inline
* category = NHIPDFType#careplan
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* content.attachment.contentType = #application/pdf
* content.attachment.title = "免疫檢查點抑制劑治療計畫"
* content.attachment.url =  "file://CarePlanReport01.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：治療計畫文件 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#careplan)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>治療計畫文件名稱</b>：免疫檢查點抑制劑治療計畫</p>
    <p><b>治療計畫文件 (application/pdf)</b>：file://CarePlanReport01.pdf</p>
</div>"

Instance: inline-doc-test
InstanceOf: DocumentReferenceTWPAS
Usage: #inline
* category = NHIPDFType#test
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* content[0].attachment.contentType = #application/pdf
* content[=].attachment.url =  "file://TestReport01.pdf"
* content[=].attachment.title = "TestReport01"
* content[+].attachment.contentType = #application/pdf
* content[=].attachment.url =  "file://TestReport02.pdf"
* content[=].attachment.title = "TestReport02"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：檢驗(查)附件 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#test)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <blockquote>
        <p><b>檢驗(查)附件 (application/pdf)</b>：file://TestReport01.pdf</p>
        <p><b>檢驗(查)附件名稱</b>：TestReport01</p>
    </blockquote>
    <blockquote>
        <p><b>檢驗(查)附件 (application/pdf)</b>：file://TestReport02.pdf</p>
        <p><b>檢驗(查)附件名稱</b>：TestReport02</p>
    </blockquote>
</div>"

Instance: inline-medReq-apply
InstanceOf: MedicationRequestApplyTWPAS
Usage: #inline
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold
* intent = #plan
* medicationCodeableConcept = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-medication#BC27730100
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2024-01-01"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2024-02-11"
* dosageInstruction[=].timing.repeat.count = 42
* dosageInstruction[=].timing.code[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation#QD
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction[=].doseAndRate.doseQuantity.value = 75
* dosageInstruction[=].doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction[=].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].route = http://snomed.info/sct#26643006

* dosageInstruction[1].timing.repeat.boundsPeriod.start = "2024-02-12"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2024-03-10"
* dosageInstruction[=].timing.repeat.count = 1
* dosageInstruction[=].timing.code[0].coding[0] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD1
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD2
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD3
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD4
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD5
* dosageInstruction[=].timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction[=].doseAndRate.doseQuantity.value = 150
* dosageInstruction[=].doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction[=].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].route = http://snomed.info/sct#26643006

//* category[orderType] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-order-type#4 "癌症用藥"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a></p>
    </div>
    <p><b>狀態</b>：On Hold</p>
    <p><b>目的</b>：Plan</p>
    <p><b>事前審查品項代碼</b>：Alunbrig film-coated tablets 30mg<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-medication.html\">NHI-健保事前審查-用藥品項值集</a>#BC27730100)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <blockquote>
        <p><b>事前審查藥物預定處方起始日期</b>：2024-01-01</p>
        <p><b>事前審查藥物預定處方終止日期</b>：2024-02-11</p>
        <p><b>事前審查藥品使用頻率及服用時間</b>：Every day at institution specified times.、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#BIW、#AC1H)</span></p>
        <p><b>事前審查藥品每次處方劑量</b>：75 mg/m2</p>
        <p><b>事前審查藥品處方頻次(cycles)</b>：42</p>
        <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
    </blockquote>
    <blockquote>
        <p><b>事前審查藥物預定處方起始日期</b>：2024-02-12</p>
        <p><b>事前審查藥物預定處方終止日期</b>：2024-03-10</p>
        <p><b>事前審查藥品使用頻率及服用時間</b>：每4週的第1天、每4週的第2天、每4週的第3天、每4週的第4天、每4週的第5天、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#Q4WD1、#Q4WD2、#Q4WD3、#Q4WD4、#Q4WD5、#AC1H)</span></p>
        <p><b>事前審查藥品每次處方劑量</b>：150 mg/m2</p>
        <p><b>事前審查藥品處方頻次(cycles)</b>：1</p>
        <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
    </blockquote>
</div>"

Instance: inline-medReq-apply-2
InstanceOf: MedicationRequestApplyTWPAS
Usage: #inline
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold
* intent = #plan
* medicationCodeableConcept = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-medication#KC009612B5
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-03-11"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-07-28"
* dosageInstruction.timing.repeat.count = 1
* dosageInstruction.timing.code[0].coding[0] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD1
* dosageInstruction.timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD2
* dosageInstruction.timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD3
* dosageInstruction.timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD4
* dosageInstruction.timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD5
* dosageInstruction.timing.code[=].coding[+] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction.route = http://snomed.info/sct#26643006
* dosageInstruction.doseAndRate.doseQuantity.value = 200
* dosageInstruction.doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"

* dispenseRequest.quantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
//* category[orderType] = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-order-type#4 "癌症用藥"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a></p>
    </div>
    <p><b>狀態</b>：On Hold</p>
    <p><b>目的</b>：Plan</p>
    <p><b>事前審查品項代碼</b>：TEMODAL CAPSULES 20MG <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-medication.html\">NHI-健保事前審查-用藥品項值集</a>#KC009612B5)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>事前審查藥物預定處方起始日期</b>：2024-03-11</p>
    <p><b>事前審查藥物預定處方終止日期</b>：2024-07-28</p>
    <p><b>事前審查藥品使用頻率及服用時間</b>：每4週的第1天、每4週的第2天、每4週的第3天、每4週的第4天、每4週的第5天、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#Q4WD1、#Q4WD2、#Q4WD3、#Q4WD4、#Q4WD5、#AC1H)</span></p>
    <p><b>事前審查藥品每次處方劑量</b>：200 mg/m2</p>
    <p><b>事前審查藥品處方頻次(cycles)</b>：1</p>
    <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
</div>"


Instance: inline-medReq-treat
InstanceOf: MedicationRequestTreatTWPAS
Usage: #inline
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#completed
* statusReason = http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#altchoice
* intent = #order
* category = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-drug-category#nhi
* medicationCodeableConcept = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-medication#A000755151
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* dosageInstruction.timing.code.text = "1W3D"
* dosageInstruction.doseAndRate.doseQuantity.value = 4
* dosageInstruction.doseAndRate.doseQuantity.code = #{tbl}
//* dosageInstruction.doseAndRate.doseQuantity.unit = "tablets"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-05-01"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-05-07"
* dosageInstruction.route = http://snomed.info/sct#26643006
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-MedicationRequest-treat-twpas.html\">用藥品項-MedicationRequest Treat TWPAS</a>
        </p>
    </div>
    <p><b>藥物使用狀態</b>：completed</p>
    <p><b>藥物處方終止原因</b>：Try another treatment first <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/codesystem-medicationrequest-status-reason.html\">MedicationRequest Status Reason Codes</a>#altchoice)</span></p>
    <p><b>意圖</b>：Order <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/CodeSystem/medicationrequest-intent\">medicationRequest Intent</a>#order)</span></p>
    <p><b>自費註記</b>：健保 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-drug-category.html\">NHI-藥物類型</a>#nhi)</span></p>
    <p><b>藥品代碼</b>：ANTI-CUGH SYRUP 60ML <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-medication.html\">NHI-健保事前審查-用藥品項值集</a>#A000755151)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;&quot;</p>
    <p><b>藥品使用頻率及服用時間</b>：1W3D</p>
    <p><b>藥物每次處方劑量(單位)</b>：4 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
    <p><b>藥物處方起始日期</b>：2024-05-01</p>
    <p><b>藥物處方終止日期</b>：2024-05-07</p>
    <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
</div>"

Instance: inline-obs-cancer-figo
InstanceOf: ObservationCancerStageTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://snomed.info/sct#385361009
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* valueCodeableConcept.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nci-thesaurus#C96244
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>癌症分期量表項目</b>：FIGO stage for gynaecological malignancy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SCT + NHI-癌症分期量表項目值集</a>#385361009)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>癌症分期量表評估日期</b>：2024-05-07</p>
    <p><b>簽發癌症分期報告醫師</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>癌症分期分數或結果</b>：FIGO Stage I <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nci-thesaurus.html\">NCI Thesaurus</a>#C96244)</span></p>
</div>"

Instance: inline-obs-diagnostic
InstanceOf: ObservationDiagnosticTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#69548-6
* category = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type#geneInfo
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:41d0fbf1-850a-4c96-be9e-54ca2053c6b8"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* valueCodeableConcept.coding = http://loinc.org#LA9634-2 "Absent"
* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS
* method = http://loinc.org#LA26418-6
* specimen.reference = "urn:uuid:60d143e9-1637-4668-abdb-34fbdfee5d00"
* component[gene-test-code].code = http://loinc.org#21636-6
* component[gene-test-code].valueCodeableConcept = http://loinc.org#LA6692-3
* component[gene-test-code].interpretation = http://loinc.org#LA6692-3 //"Deletion"
* derivedFrom.reference = "urn:uuid:408f3e21-47c9-4f1f-9eea-1cd2a7841c97"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-diagnostic-twpas.html\">基因資訊-Observation Diagnostic TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：基因資訊<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#geneInfo)</span></p>
    <p><b>code</b>：Genetic variant assessment<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC</a>#69548-6)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>基因檢測日期</b>：2024-05-07</p>
	<blockquote>
		<p>
			<b>基因檢測代碼</b>：BRCA1 gene mutations found [Identifier] in Blood or Tissue by Molecular genetics method Nominal <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://loinc.org/\">LOINC-基因檢測代碼值集</a>#21636-6） </span>
			<br />
			<b>基因突變類型</b>：Deletion <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://loinc.org/\">LOINC-基因突變類型值集</a>#LA6692-3） </span>
		</p>
	</blockquote>
    <p><b>基因檢測機構</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-41d0fbf1-850a-4c96-be9e-54ca2053c6b8\">Organization 2023LDTB0002</a></p>
    <p><b>基因檢測分析結果</b>：Absent <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC Answer List LL1971-2 </a>#LA9634-2)</span></p>
    <p><b>基因臨床判讀結果</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation/\">ObservationInterpretationCodes  </a>#POS)</span></p>
    <p><b>基因檢測方法</b>：PCR <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC Answer List LL4048-6  </a>#LA26418-6)</span></p>
    <p><b>基因檢測檢體類型</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-60d143e9-1637-4668-abdb-34fbdfee5d00\">urn:uuid:60d143e9-1637-4668-abdb-34fbdfee5d00</a></p>
    <p><b>基因報告</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-408f3e21-47c9-4f1f-9eea-1cd2a7841c97\">urn:uuid:408f3e21-47c9-4f1f-9eea-1cd2a7841c97</a></p>
</div>"

Instance: inline-obs-lab
InstanceOf: ObservationLaboratoryResultTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#777-3
* effectiveDateTime = "2024-01-01"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* valueQuantity.value = 5.1
* valueQuantity.unit = "mmol/l"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H
* interpretation.text = "高"
* referenceRange.low = 2.9 'mmol/L' "mmol/l"
* referenceRange.high = 4.9 'mmol/L' "mmol/l"
* category = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type#tests
* derivedFrom.reference = "urn:uuid:a1aa65c7-c464-41a5-aa1a-fe5cddf487cf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：檢驗(查)<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#tests)</span></p>
    <p><b>檢驗(查)名稱</b>：Platelets [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#777-3)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>檢驗(查)報告日期</b>：2024-01-01</p>
    <p><b>簽發檢驗(查)報告醫事人員身分證號</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>檢驗(查)結果</b>：5.1 mmol/l</p>
    <p><b>檢驗(查)結果判讀</b>：高，High <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation/\">ObservationInterpretationCodes  </a>#H)</span></p>
    <p><b>檢驗(查)結果之參考範圍下限</b>：2.9 mmol/L</p>
    <p><b>檢驗(查)結果之參考範圍上限</b>：4.9 mmol/L</p>
    <p><b>檢驗(查)附件</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-a1aa65c7-c464-41a5-aa1a-fe5cddf487cf\">urn:uuid:a1aa65c7-c464-41a5-aa1a-fe5cddf487cf</a></p>
</div>"

Instance: inline-obs-lab-cbc
InstanceOf: ObservationLaboratoryResultTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* category = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-supporting-info-type#tests
* code.coding = http://loinc.org#58410-2
* component[0].code.coding = http://loinc.org#6690-2
* component[=].valueQuantity.value = 3.6
* component[=].valueQuantity.unit = "10*3/uL"
* component[=].referenceRange.low.value = 3.9
* component[=].referenceRange.low.unit = "10*3/uL"
* component[=].referenceRange.high.value = 10.6
* component[=].referenceRange.high.unit = "10*3/uL"
* component[+].code.coding = http://loinc.org#789-8
* component[=].valueQuantity.value = 4.7
* component[=].valueQuantity.unit = "10*6/uL"
* component[=].referenceRange.low.value = 4.5
* component[=].referenceRange.low.unit = "10*6/uL"
* component[=].referenceRange.high.value = 5.9
* component[=].referenceRange.high.unit = "10*6/uL"
* component[+].code.coding = http://loinc.org#718-7
* component[=].valueQuantity.value = 14
* component[=].valueQuantity.unit = "g/dL"
* component[=].referenceRange.low.value = 13.5
* component[=].referenceRange.low.unit = "g/dL"
* component[=].referenceRange.high.value = 17.5
* component[=].referenceRange.high.unit = "g/dL"
* component[+].code.coding = http://loinc.org#4544-3
* component[=].valueQuantity.value = 45
* component[=].valueQuantity.unit = "%"
* component[=].referenceRange.low.value = 41
* component[=].referenceRange.low.unit = "%"
* component[=].referenceRange.high.value = 53
* component[=].referenceRange.high.unit = "%"
* component[+].code.coding = http://loinc.org#777-3
* component[=].valueQuantity.value = 101
* component[=].valueQuantity.unit = "10*3/uL"
* component[=].referenceRange.low.value = 150
* component[=].referenceRange.low.unit = "10*3/uL"
* component[=].referenceRange.high.value = 400
* component[=].referenceRange.high.unit = "10*3/uL"
* effectiveDateTime = "2024-01-01"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* derivedFrom.reference = "urn:uuid:a1aa65c7-c464-41a5-aa1a-fe5cddf487cf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：檢驗(查)<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#tests)</span></p>
    <p><b>套組代碼</b>：CBC panel - Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#58410-2)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>檢驗(查)報告日期</b>：2024-01-01</p>
    <p><b>簽發檢驗(查)報告醫事人員身分證號</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>檢驗(查)附件</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-a1aa65c7-c464-41a5-aa1a-fe5cddf487cf\">urn:uuid:a1aa65c7-c464-41a5-aa1a-fe5cddf487cf</a></p>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Leukocytes [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#6690-2)</span>
			<br />
			<b>檢驗(查)結果</b>：3.6 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：3.9 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：10.6 × 10^3/μL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Erythrocytes [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#789-8)</span>
			<br />
			<b>檢驗(查)結果</b>：4.7 × 10^6/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：4.5 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：5.9 × 10^3/μL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Hemoglobin [Mass/volume] in Blood <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#718-7)</span>
			<br />
			<b>檢驗(查)結果</b>：14 g/dL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：13.5 g/dL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：17.5 g/dL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Hematocrit [Volume Fraction] of Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#4544-3)</span>
			<br />
			<b>檢驗(查)結果</b>：45 %
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：41 %
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：53 %
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Platelets [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#777-3)</span>
			<br />
			<b>檢驗(查)結果</b>：101 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：150 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：400 × 10^3/μL
		</p>
	</blockquote>
</div>"

Instance: inline-obs-pat
InstanceOf: ObservationPatientAssessmentTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#88020-3
* effectiveDateTime = "2024-01-01"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
//* valueCodeableConcept.coding[ECOG] = http://loinc.org#LA9622-7
* valueString = "class1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人狀態評估項目代碼</b>：Functional capacity NYHA <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org\">LOINC + NHI-病人狀態評估項目值集 </a>#88020-3)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>病人狀態評估日期</b>：2024-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-1cf37d4c-1fd2-43c5-8b4e-277c0fef5020\">urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020</a></p>
    <p><b>病人狀態評估結果</b>：class1</p>
</div>"

Instance: inline-obs-tx
InstanceOf: ObservationTreatmentAssessmentTWPAS
Usage: #inline
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#IWGC "International Working Group(IWG) Consensus Criteria"
* effectiveDateTime = "2024-05-07"
* performer.reference = "urn:uuid:1cf37d4c-1fd2-43c5-8b4e-277c0fef5020"
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* valueString = "Partial remission (PR)"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-tx-assessment-twpas.html\">治療後疾病狀態評估-Observation Treatment Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>治療後疾病狀態評估項目</b>：International Working Group(IWG) Consensus Criteria<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tx-ast.html\">NHI-治療後疾病狀態評估項目值集</a>#IWGC)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>治療後疾病狀態評估日期</b>：2024-01-01</p>
    <p><b>治療後疾病狀態評估結果</b>：Partial remission (PR)</p>
</div>"

Instance: inline-procedure
InstanceOf: ProcedureTWPAS
Usage: #inline
* status = http://hl7.org/fhir/event-status#completed
* code.coding = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* performedDateTime = "2024-05-06T09:00:00.000Z"
* usedReference.reference = "urn:uuid:b3c91f1b-14e3-4f44-8fa2-72f27b1d28c8"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Procedure-twpas.html\">放射治療-Procedure TWPAS</a></p>
    </div>
    <p><b>放射治療狀態</b>：completed</p>
    <p><b>放射治療項目</b>：骨髓高溫療法 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"https://fhir-ig.nhi.org.tw/twcore/0.3.2/CodeSystem-icd-10-pcs-2023-tw.html\">臺灣2023年中文版ICD-10-PCS</a>#D7Y08ZZ)</span>
    </p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>放射治療日期</b>：2024-05-06 09:00:00+0000</p>
    <p><b>放射治療總劑量</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-b3c91f1b-14e3-4f44-8fa2-72f27b1d28c8\">urn:uuid:b3c91f1b-14e3-4f44-8fa2-72f27b1d28c8</a> 5000 mg</p>
</div>"

Instance: inline-substance
InstanceOf: SubstanceTWPAS
Usage: #inline
* code.coding = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* ingredient.quantity.numerator.value = 5000
* ingredient.quantity.numerator.code = #mg
* ingredient.quantity.numerator.system = "http://unitsofmeasure.org"
* ingredient.quantity.denominator.value = 0
* ingredient.substanceCodeableConcept = https://fhir-ig.nhi.org.tw/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Substance-twpas.html\">放射治療總劑量-Substance TWPAS</a></p>
    </div>
    <p><b>放射治療項目</b>：骨髓高溫療法 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"https://fhir-ig.nhi.org.tw/twcore/0.3.2/CodeSystem-icd-10-pcs-2023-tw.html\">臺灣2023年中文版ICD-10-PCS</a>#D7Y08ZZ)</span></p>
    <p><b>放射治療總劑量(單位)</b>：5000 (mg)</p>
</div>"

Instance: inline-specimen
InstanceOf: SpecimenTWPAS
Usage: #inline
* type = http://loinc.org#LP7057-5
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* receivedTime = "2024-05-06T09:00:00.000Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Specimen-twpas.html\">基因檢測檢體-Specimen TWPAS</a></p>
    </div>
    <p><b>類型</b>：基因資訊<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC-基因檢測檢體類型值集</a>#LP7057-5)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a></p>
    <p><b>基因檢測日期</b>：2024-05-06T09:00:00.000Z</p>
</div>"

Instance: inline-doc-medicalRecord
InstanceOf: DocumentReferenceTWPAS
Title: "病歷資料"
Description: "依據文件參照-DocumentReference TWPAS Profile呈現病歷資料之範例"
Usage: #inline
* category = NHIPDFType#medrec
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "urn:uuid:047422b2-0c18-4707-801d-465833e6d65d"
* content.attachment.contentType = #application/pdf
* content.attachment.url =  "file://王大明病歷.pdf"
* content.attachment.title = "王大明病歷"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：病歷資料 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#medrec)</span></p>
    <p><b>病人</b>：<a href=\"Bundle-bun-uuid-example.html#urn-uuid-047422b2-0c18-4707-801d-465833e6d65d\">urn:uuid:047422b2-0c18-4707-801d-465833e6d65d</a> &quot;王大明&quot;</p>
    <p><b>病歷資料 (application/pdf)</b>：file://王大明病歷.pdf</p>
    <p><b>病歷資料名稱</b>：王大明病歷</p>
</div>"