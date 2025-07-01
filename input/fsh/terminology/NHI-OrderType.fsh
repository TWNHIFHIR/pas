CodeSystem: NHIOrderType
Id: nhi-order-type
Title: "NHI-健保事前審查-醫令類別"
Description: "臺灣衛生福利部中央健康保險署「醫令類別」代碼，代碼出版日期：2025-07-01；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-07-01"
* ^version = "1.0.5"
* ^experimental = false
* #1 "藥品"
* #2 "醫療服務"
* #3 "特材"
//* #4 "癌症用藥" 1129del

ValueSet: NHIOrderType
Id: nhi-order-type
Title: "NHI-健保事前審查-醫令類別值集"
Description: "NHI-健保事前審查-醫令類別值集"
* ^date = "2025-07-01"
* ^version = "1.0.5"
* ^experimental = false
* include codes from system NHIOrderType