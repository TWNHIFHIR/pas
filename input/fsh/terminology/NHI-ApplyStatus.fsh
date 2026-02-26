CodeSystem: NHIAcceptanceStatus
Id: nhi-acceptance-status
Title: "NHI-健保事前審查-案件受理狀態"
Description: "臺灣衛生福利部中央健康保險署「案件受理狀態」代碼，代碼出版日期：2026-02-03；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-02-03"
* ^version = "1.2.0"
* ^experimental = false
* #待處理
* #處理中
* #處理中(等待附件檔)
* #處理中(檔案檢核中)
* #處理中(等待檢查申報資料)
* #資料檢核失敗
* #檔案傳送失敗
* #附件檔轉檔失敗
* #影像檔轉檔失敗
* #電子病歷檔轉檔失敗
* #申請檔案檢核失敗
* #申請檔案未備齊
* #已受理
* #審查中
* #審畢結果

ValueSet: NHIAcceptanceStatus
Id: nhi-acceptance-status
Title: "NHI-健保事前審查-案件受理狀態值集"
Description: "NHI-健保事前審查-案件受理狀態值集"
* ^date = "2026-02-03"
* ^version = "1.2.0"
* ^experimental = false
* include codes from system NHIAcceptanceStatus