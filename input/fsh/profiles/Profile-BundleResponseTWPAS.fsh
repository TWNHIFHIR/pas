Alias: $sd = https://nhicore.nhi.gov.tw/pas/StructureDefinition
Profile:        BundleResponseTWPAS
Parent:         TWCoreBundle
Id:             Bundle-response-twpas
Title:          "事前審查回覆-Bundle Response TWPAS"
Description:    "此事前審查回覆-Bundle Response TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現回覆事前審查之內容"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Bundle-response-twpas"
* type = #searchset
* total MS
* link.relation = "self"
* link.relation MS
* link.url MS
* entry 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
	claimResponse 1..1 MS

* entry[claimResponse] ^short = "事前審查回覆"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource only ClaimResponseTWPAS