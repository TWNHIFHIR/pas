Profile:        PractitionerTWPAS
Parent:         TWCorePractitioner
Id:             Practitioner-twpas
Title:          "醫事人員-Practitioner TWPAS"
Description:    "此醫事人員-Practitioner TWPAS Profile說明本IG如何進一步定義臺灣核心-健康照護服務提供者(TW Core Practitioner) Profile以呈現癌藥事前審查之申請醫師、簽發影像報告醫師、簽發癌症分期報告醫師、檢查報告醫師、簽發檢驗(查)報告醫事人員及評估項目醫事人員基本資料"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Practitioner-twpas"
* identifier 1..2
* identifier ^slicing.rules = #closed
* identifier[idCardNumber] ^short  = "醫師身分證號"
* identifier[medicalLicenseNumber] ^short  = "醫師證號"
* identifier[residentNumber] ^short  = "醫師居留證號碼"
* identifier[passportNumber] 0..0
* identifier[idCardNumber] 0..1
//* identifier[idCardNumber] obeys id-card-number

* identifier[medicalLicenseNumber].system = "https://dep.mohw.gov.tw/DOMA"
* identifier[idCardNumber].system ^short  = "身分證號的命名空間（namespace），請固定填「http://www.moi.gov.tw」。"
* identifier[medicalLicenseNumber].system ^short  = "醫師證號的命名空間（namespace），請固定填「https://dep.mohw.gov.tw/DOMA」。"
* identifier[residentNumber].system = "http://www.immigration.gov.tw"
* identifier[residentNumber].system ^short  = "居留證號碼的命名空間（namespace），請固定填「http://www.immigration.gov.tw」。"