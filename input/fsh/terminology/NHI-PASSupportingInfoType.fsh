CodeSystem: NHIPASSupportingInfoType
Id: nhi-supporting-info-type
Title: "NHI-健保事前審查-補充資訊類別"
Description: "臺灣衛生福利部中央健康保險署「補充資訊類別」代碼，代碼出版日期：2025-07-01；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-07-01"
* ^version = "1.0.7"
* ^experimental = false
* #weight "病人體重"
* #height "病人身高"
* #pregnancyBreastfeedingStatus "是否懷孕或哺乳"
* #imagingReport "影像報告"
* #cancerStage "癌症分期量表"
* #examinationReport "檢查報告"
* #geneInfo "基因資訊"
* #tests "檢驗(查)"
* #patientAssessment "病人狀態評估"
* #medicationRequest "用藥品項"
* #radiotherapy "放射治療"
* #carePlanDocument "治療計畫文件"
* #medicalRecord "病歷資料"
* #treatmentAssessment "結果資訊"

ValueSet: NHIPASSupportingInfoType
Id: nhi-supporting-info-type
Title: "NHI-健保事前審查-補充資訊類別值集"
Description: "NHI-健保事前審查-補充資訊類別值集"
* ^date = "2025-07-01"
* ^version = "1.0.7"
* ^experimental = false
* include codes from system NHIPASSupportingInfoType