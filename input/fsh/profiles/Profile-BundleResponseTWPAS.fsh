Profile:        BundleResponseTWPAS
Parent:         TWCoreBundle
Id:             Bundle-response-twpas
Title:          "事前審查回覆-Bundle Response TWPAS"
Description:    "此事前審查回覆-Bundle Response TWPAS Profile說明本IG如何進一步定義資料交換基本單位(TW Core Bundle) Profile以呈現回覆癌藥事前審查之內容"
* type = #searchset
* total MS
* link.relation = "self"
* link.relation MS
* link.url MS
* entry 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
	claimResponse 1..1 MS

* entry[claimResponse] ^short = "事前審查回覆"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource only ClaimResponseTWPAS