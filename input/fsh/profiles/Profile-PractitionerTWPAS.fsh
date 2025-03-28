Profile:        PractitionerTWPAS
Parent:         TWCorePractitioner
Id:             Practitioner-twpas
Title:          "醫事人員-Practitioner TWPAS"
Description:    "此醫事人員-Practitioner TWPAS Profile說明本IG如何進一步定義臺灣核心-健康照護服務提供者(TW Core Practitioner) Profile以呈現癌藥事前審查之申請醫師、簽發影像報告醫師、簽發癌症分期報告醫師、檢查報告醫師、簽發檢驗(查)報告醫事人員及評估項目醫事人員基本資料"
* identifier 1..2

* identifier[idCardNumber] ^short  = "醫師身分證號"
* identifier[medicalLicenseNumber] ^short  = "醫師證號"
* identifier[residentNumber] 0..0
* identifier[passportNumber] 0..0
* identifier[idCardNumber] 0..1
//* identifier[idCardNumber] obeys id-card-number