Profile:        OrganizationTWPAS
Parent:         TWCoreOrganization
Id:             Organization-twpas
Title:          "醫事機構-Organization TWPAS"
Description:    "此醫事機構-Organization TWPAS Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現癌藥事前審查之醫事機構基本資料"
* identifier 1..1
* identifier.value 1..1
* identifier.system 1..1
* identifier ^short = "醫事機構代碼"
* identifier.value from NHIOrganization
* identifier.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/organization-identifier-tw"

* identifier.system ^example[0].valueUri = "https://nhicore.nhi.gov.tw/pas/CodeSystem/organization-identifier-tw"
* identifier.value ^example[0].valueString = "0101090517"

Profile:        OrganizationGeneticTestingTWPAS
Parent:         TWCoreOrganization
Id:             Organization-genetic-testing-twpas
Title:          "基因檢測機構-Organization Genetic Testing TWPAS"
Description:    "此基因檢測機構-Organization Genetic Testing TWPAS Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現癌藥事前審查之基因檢測機構基本資料"
* identifier 1..1
* identifier.value 1..1
//* identifier.system 1..1
* identifier ^short = "基因檢測機構，衛福部公告名冊或LDTs核定函上之「案件編號」。"
* identifier.system = "https://dep.mohw.gov.tw"

* identifier.system ^example[0].valueUri = "https://dep.mohw.gov.tw/DOMA/ngs-org"
* identifier.value ^example[0].valueString = "2023LDTB0002"
* identifier.value ^example[=].label = "12碼"
* identifier.value ^example[+].valueString = "2024LDT2717"
* identifier.value ^example[=].label = "11碼"
* identifier.value ^example[+].valueString = "CAP"
* identifier.value ^example[=].label = "1"
* identifier.value ^example[+].valueString = "TAF"
* identifier.value ^example[=].label = "2"
* identifier.value ^example[+].valueString = "TFDA"
* identifier.value ^example[=].label = "3"
* identifier.value ^example[+].valueString = "TSP"
* identifier.value ^example[=].label = "4"
* identifier obeys ngs-org

Invariant:   ngs-org
Description: "可填11碼或12碼，或4個文字擇一(CAP、TAF、TFDA、TSP)"
Expression:  "value.toString().matches('^(?!CAP$|TAF$|TFDA$|TSP$)[A-Za-z0-9]{11,12}$|^(CAP|TAF|TFDA|TSP)$')"
Severity:    #error

