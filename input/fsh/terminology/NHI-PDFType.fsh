CodeSystem: NHIPDFType
Id: nhi-pdf-type
Title: "NHI-健保事前審查-文件類型"
Description: "臺灣衛生福利部中央健康保險署「文件類型」代碼，代碼出版日期：2026-02-03；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-02-03"
* ^version = "1.1.2"
* ^experimental = false
* #gene "基因報告"
* #careplan "治療計畫文件"
* #test "檢驗(查)附件"
* #medrec "病歷資料"
* #patientAssessment "病人狀態評估報告"

ValueSet: NHIPDFType
Id: nhi-pdf-type
Title: "NHI-健保事前審查-文件類型值集"
Description: "NHI-健保事前審查-文件類型值集"
* ^date = "2026-02-03"
* ^version = "1.1.2"
* ^experimental = false
* include codes from system NHIPDFType