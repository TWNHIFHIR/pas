CodeSystem: NHIApproveComment
Id: nhi-approve-comment
Title: "NHI-健保事前審查-核定註記"
Description: "臺灣衛生福利部中央健康保險署「核定註記」代碼，代碼出版日期：2024-12-06；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2024-12-06"
* ^version = "1.0.3"
* ^experimental = false
* #0 "審核中"
* #1 "同意"
* #2 "不予同意"
* #3 "部份同意"
* #4 "補件"
* #5 "退件"
* #6 "不予同意:對應手術亦不支付"
* #7 "改核:如審查核定意見"

ValueSet: NHIApproveItemComment
Id: nhi-approve-item-comment
Title: "NHI-健保事前審查-個別醫令核定註記值集"
Description: "NHI-健保事前審查-個別醫令核定註記值集"
* ^date = "2024-12-06"
* ^version = "1.0.3"
* ^experimental = false
* include codes from system NHIApproveComment

ValueSet: NHIApproveClaimComment
Id: nhi-approve-claim-comment
Title: "NHI-健保事前審查-受理審查案件核定註記值集"
Description: "NHI-健保事前審查-受理審查案件核定註記值集"
* ^date = "2024-12-06"
* ^version = "1.0.3"
* ^experimental = false
* https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment#1 "同意"
* https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment#2 "不予同意"
* https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment#3 "部份同意"
* https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment#4 "補件"
* https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment#5 "退件"