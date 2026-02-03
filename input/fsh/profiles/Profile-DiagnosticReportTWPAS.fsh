Profile:        DiagnosticReportTWPAS
Parent:         DiagnosticReport
//Parent:         TWCoreDiagnosticReport
Id:             DiagnosticReport-twpas
Title:          "檢查報告-DiagnosticReport TWPAS"
Description:    "此檢查報告-DiagnosticReport TWPAS Profile說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport) Profile以呈現事前審查中疾病資訊之檢查報告"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/DiagnosticReport-twpas"
* code.coding 1..1
* code.coding.code 1..1
* code.coding.system 1..1
* code.coding.system = "http://loinc.org"
* code from ReportType (extensible)
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* subject 1..1
* subject only Reference(PatientTWPAS)
* presentedForm MS
* presentedForm.contentType 1..1 MS
//* presentedForm.data 0..1
* presentedForm.url 1..1 MS
* presentedForm.url ^example.valueUrl = "file://PathologyReport01.pdf"
* presentedForm.title MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
//* presentedForm.title = "病理報告"
* category 1..1
* category.coding 1..1
* category = NHIPASSupportingInfoType#examinationReport
* conclusion 1..1 MS
//* conclusion obeys pas-2
* presentedForm obeys UploadContent
* code ^short = "報告類型，當LOINC無法具體描述檢體種類（例如：`47526-9`時），請填寫及補充說明檢體種類(code.text)。"
* code.text ^short = "檢體種類"
* conclusion ^short = "報告結果-文數字，請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* presentedForm ^short = "報告結果-MIMEType"
//* presentedForm.data ^short = "檢查報告（以base64Binary儲存）。上傳至健保署時不得填入，若醫院不小心上傳，需要先擋掉。"
* presentedForm.url ^short = "檢查報告（請填寫完整檔案路徑）"
* presentedForm.title ^short = "檢查報告名稱"
* effective[x] ^short = "報告日期，YYYY-MM-DD"
* performer ^short = "檢查報告醫師"
* code obeys speType

Invariant:   speType
Description: "當報告類型(code.coding.code)為`47526-9`時，檢體種類(code.text)必填"
Expression:  "(coding.exists(code='47526-9')) implies (text.exists())"
Severity:    #error